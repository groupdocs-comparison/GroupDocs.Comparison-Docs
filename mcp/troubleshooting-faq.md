---
id: mcp-troubleshooting-faq
url: comparison/mcp/troubleshooting-faq
title: Troubleshooting & FAQ
weight: 5
description: "Solutions to the most common GroupDocs.Comparison MCP server issues — server not appearing in the client, startup failures, missing native dependencies, and first-launch timeouts."
keywords: MCP server not showing up in Claude Desktop, Claude can't see MCP tools, MCP server failed to start, dnx command not found, libgdiplus not found error, compare documents AI agent, document diff MCP, redline documents Claude
productName: GroupDocs.Comparison MCP Server
toc: True
---

Solutions to the most common GroupDocs.Comparison MCP server issues — server not appearing in the client, startup failures, missing native dependencies, and first-launch timeouts.

{{< alert style="info" >}}
**Platform-specific troubleshooting:** runtime problems depend on which build you run. For the `dnx` runner, native graphics libraries, and the Docker channel, see [Troubleshooting (.NET)]({{< ref "comparison/net/mcp/troubleshooting.md" >}}). The issues on this page apply to every platform.
{{< /alert >}}

## Why is my MCP server not showing up in Claude Desktop?

1. **Restart the client** — every client reads its MCP config only at startup.
2. Check the config file location for your OS ([per-client reference]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}})) and that the entry sits under the right root key (`mcpServers` for Claude Desktop/Cursor/Windsurf, `servers` for VS Code/VS 2022).
3. Validate the JSON — a trailing comma silently breaks the whole file. If you used the [installer](https://github.com/groupdocs/GroupDocs.Mcp.Installer), a timestamped `.bak` of your previous config sits next to the file for comparison.

## The first tool call is slow or fails once, then works

A **cold cache**: on the very first use the server's package or image is still downloading while the client is already waiting on the connection. Warming it once fixes it for good — the exact command depends on your build: [.NET]({{< ref "comparison/net/mcp/troubleshooting.md" >}}#the-first-tool-call-is-slow-or-fails-once-and-then-works).

## The server fails to start, or a runtime dependency is missing

These are properties of the build you run rather than of MCP, so the fixes live with the platform:

| Symptom | Where the fix is |
|---|---|
| `dnx: command not found` | [.NET troubleshooting]({{< ref "comparison/net/mcp/troubleshooting.md" >}}#dnx-command-not-found) — `dnx` ships inside the .NET 10 SDK |
| `DllNotFoundException: libgdiplus` on Linux/macOS | [.NET troubleshooting]({{< ref "comparison/net/mcp/troubleshooting.md" >}}#dllnotfoundexception-libgdiplus) — install the native graphics libraries, or use the Docker image |
| "docker daemon not reachable" | [.NET troubleshooting]({{< ref "comparison/net/mcp/troubleshooting.md" >}}#docker-daemon-not-reachable) — start Docker Desktop or `dockerd` |

## The agent says a file does not exist

Pass the **file name**, not a full path from your machine: the server resolves names inside its configured storage folder. When a name is not found the tool responds with the list of files it can see, so the agent can correct itself — check that list against [`GROUPDOCS_MCP_STORAGE_PATH`]({{< ref "comparison/net/mcp/configuration.md" >}}).

## Why did the comparison only find changes on the first two pages?

That is **evaluation mode**: without a license only the first two pages of each document are compared. A long contract will report far fewer changes than it really has — and the result carries a watermark. Apply a license and the cap disappears: [Licensing]({{< ref "comparison/mcp/getting-started/licensing.md" >}}).

## `compare` or `analyze_changes` — which one does the agent use?

Both read the same two documents and detect the same changes. `analyze_changes` returns the change list as data and skips rendering, so it is faster and cheaper; `compare` also renders and saves the marked-up document. Ask *"what changed"* and a well-behaved agent picks `analyze_changes`; ask for *"a marked-up copy I can send"* and it picks `compare`.

## Can it compare more than two documents?

The MCP tools compare **two** documents — a source and a target. The underlying library also supports multi-document comparison; if you need that through MCP, say so in the [forum](https://forum.groupdocs.com/c/comparison/12) — it shapes the roadmap.

## Does it compare images or scanned pages?

Text-layer documents are compared by content. Image formats and scanned pages are compared as images, so the result highlights visual differences rather than edited words. There is no OCR step.

## Verifying an installation end-to-end

Ask your agent *"list your GroupDocs comparison tools and the license status"* — it should name `compare`, `analyze_changes`, `get_document_info`, `get_license_status`. For a scripted check that performs the real MCP handshake and a live call through the engine, see [verifying a .NET installation]({{< ref "comparison/net/mcp/troubleshooting.md" >}}#verifying-an-installation-end-to-end).

## Still stuck?

Post your config (redact license paths) and the client name in the [Comparison forum](https://forum.groupdocs.com/c/comparison/12) — we answer MCP questions daily. Bugs: [GitHub issues](https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp/issues).
