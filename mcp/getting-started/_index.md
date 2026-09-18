---
id: mcp-getting-started
url: comparison/mcp/getting-started
title: Quick start
weight: 1
description: "Install and register the GroupDocs.Comparison MCP server in Claude Desktop, VS Code, Cursor, or any MCP client in three commands using the guided installer — then verify the setup automatically."
keywords: how to install MCP server, set up document MCP server, add MCP server to Claude Desktop, MCP server quick start
productName: GroupDocs.Comparison MCP Server
hideChildren: True
toc: True
---

{{< alert style="info" >}}
These steps install the **.NET** build of the server — the only platform available today. Java, Python, and Node.js builds are planned; each will get its own install section under its platform. Platform-independent material (tools, use cases, licensing) lives here and applies to all of them.
{{< /alert >}}

Install and register the GroupDocs.Comparison MCP server in Claude Desktop, VS Code, Cursor, or any MCP client in three commands with the guided [installer](https://github.com/groupdocs/GroupDocs.Mcp.Installer) — then verify the setup automatically:

```powershell
git clone https://github.com/groupdocs/GroupDocs.Mcp.Installer.git
cd GroupDocs.Mcp.Installer

# wizard: products, channel, clients, folders, license
./install-groupdocs-mcp.ps1 -Interactive
# preview - prints everything, changes nothing
./install-groupdocs-mcp.ps1 -DryRun
# apply + warm caches + verify the setup in one go
./install-groupdocs-mcp.ps1 -Verify
```

Then **restart your AI client** (Claude Desktop, VS Code, Cursor, …) so it picks up the new server.

## Your first prompt

Put two versions of the same document (say `contract-v1.docx` and `contract-v2.docx`) into the storage folder you chose, then ask your agent:

> Compare contract-v1.docx with contract-v2.docx and tell me what changed

The agent calls `analyze_changes` to read the differences and summarizes them in chat; ask for the marked-up file and it calls `compare` instead, saving `contract-v1_compared.docx` to your output folder. Both run locally — the documents never leave your machine.

## Where to go next

* **Fresh machine?** Follow your OS page — it includes the prerequisite bootstrap:
  [Windows]({{< ref "comparison/net/mcp/windows-installation.md" >}}) · [Linux]({{< ref "comparison/net/mcp/linux-installation.md" >}}) · [macOS]({{< ref "comparison/net/mcp/macos-installation.md" >}})
* **Manual or single-client install** (exact JSON per client): [Register in AI clients]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}})
* **Docker-only shop:** run `./install-groupdocs-mcp.ps1 -EmitCompose -Clients @()` to generate a `docker-compose.yml` instead of client registration — see [Configuration]({{< ref "comparison/net/mcp/configuration.md" >}}).
* **Licensing:** the server works in evaluation mode out of the box; your existing GroupDocs.Comparison license applies — [Licensing]({{< ref "comparison/mcp/getting-started/licensing.md" >}}).
