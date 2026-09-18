---
id: mcp-uc-on-premise-document-comparison
url: comparison/mcp/use-cases/on-premise-document-comparison
title: "Running GroupDocs MCP servers on-premise: architecture and security model"
linkTitle: On-premise deployment
weight: 5
description: "Run document comparison for AI agents fully on-premise: local stdio transport, no external endpoints, no inbound ports, no telemetry — the architecture and security model in one page."
keywords: on-premise MCP server, air-gapped document comparison, MCP security model, local document processing AI, no cloud document diff
productName: GroupDocs.Comparison MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "Running GroupDocs MCP servers on-premise: architecture and security model"
        description: "Run document comparison for AI agents fully on-premise: local stdio transport, no external endpoints, no inbound ports, no telemetry — the architecture and security model in one page."
        steps:
        - name: "Run the pinned image inside the perimeter"
          text: "Start the GroupDocs.Comparison MCP server from its versioned Docker image as a child process of the AI client."
        - name: "Mount only the folders the agent may reach"
          text: "Map the document folder read-write and the license folder read-only."
        - name: "Choose the license mode"
          text: "Use a license file for fully offline operation; metered licensing needs outbound egress for usage reports."
---

Run document comparison for AI agents **fully on-premise**: the GroupDocs.Comparison MCP server uses local stdio transport with **no external endpoints, no inbound ports, and no telemetry** — suitable for regulated environments where documents cannot leave the network. This page is the one to send your security reviewer.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "comparison/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The architecture in one picture

```text
+--------------+          +--------------------+         +------------------+
|  AI client   |  stdio   | MCP server process | reads / | local filesystem |
| (Claude, VS  | <----->  | (GroupDocs engine) | <-----> | storage / output |
| Code, agent) | JSON-RPC |   child process    |  writes |     folders      |
+--------------+          +--------------------+         +------------------+
```

* **Transport:** the AI client *starts the server as a child process* and communicates over standard input/output. The server never listens on a network socket — there is nothing to firewall, nothing to expose.
* **Data path:** agent → local server → local filesystem. Documents are read from and written to the folders you configure; no document content is transmitted anywhere.
* **Network use:** only at install time (pulling the package from nuget.org or the image from ghcr.io/docker.io). At runtime the server makes no outbound calls. In an air-gapped segment, pre-pull the image or pre-cache the package and pin the version.
* **Telemetry:** none. The server does not phone home, and the engine processes documents in-process.

Note the distinction that matters for review: the **documents** stay local unconditionally. The **prompts** go wherever your AI client's model runs — with a cloud-hosted assistant, your instruction text ("compare contract-v1 with contract-v2") reaches the model, as does any fragment the agent quotes back to you. Pair the server with a locally-hosted model and the entire loop stays inside the perimeter.

That last point deserves care in this product specifically: a comparison summary *is* document content. When an agent reports *"the payment term changed from 30 to 45 days"*, that sentence travels to the model provider like any other part of the conversation. If the changed text itself is sensitive, run a local model.

## Docker deployment inside the perimeter

The Docker channel is usually the easier sell to a platform team: one image, pinned by digest, no SDK on the host.

```bash
docker run --rm -i \
  -v /srv/contracts:/data \
  -v /srv/licenses:/license:ro \
  -e GROUPDOCS_MCP_STORAGE_PATH=/data \
  -e GROUPDOCS_LICENSE_PATH=/license/GroupDocs.Comparison.lic \
  ghcr.io/groupdocs-comparison/comparison-net-mcp:26.9.1
```

* Pin the tag (`:26.9.1`, not `:latest`) so a rebuild cannot change behaviour underneath you.
* Mount the licence read-only; mount only the folders the agent should be able to reach.
* Images are multi-arch (linux/amd64 + linux/arm64) and carry every native dependency, which also removes the `libgdiplus` class of problem.

## License management

Two options, and the choice has a network consequence:

* **License file** — read from local disk by the local process. Works fully offline; the right answer for air-gapped deployments.
* **Metered (pay-per-use)** — reports *usage* to GroupDocs servers, so it needs outbound egress. Document content is never part of that report, but the connection itself must be allowed.

Both are covered in [Licensing]({{< ref "comparison/mcp/getting-started/licensing.md" >}}), including how to keep the metered private key out of committed config files.

## What this fits — honestly

**A good fit:** internal contract and proposal review, regulated industries (legal, financial, healthcare, public sector), air-gapped networks, and any team whose policy forbids uploading documents to third-party processors.

**Not what this is:** a multi-user service. One stdio server serves one client process on one machine. For a shared service you would put your own service in front of the GroupDocs library rather than running many MCP servers.

## FAQ

**Does any document content leave the machine?** No. Comparison happens in-process against local files.

**Does it need internet at runtime?** No — only to fetch the package or image at install time, and only when metered licensing is enabled.

**Can I run it air-gapped?** Yes. Pre-pull the image (or pre-cache the NuGet package), use a license file rather than metered keys, and pin the version.

**What ports does it open?** None. stdio only.

**How do I prove that?** Run it and watch: no listening sockets, no outbound connections during a comparison. The [verification script]({{< ref "comparison/net/mcp/troubleshooting.md" >}}#verifying-an-installation-end-to-end) performs a real handshake and a real engine call so you can observe exactly what happens.
