---
id: mcp
url: comparison/mcp
title: GroupDocs.Comparison MCP Server
weight: 6
description: "GroupDocs.Comparison MCP server lets AI agents like Claude, Cursor, and Copilot compare documents — Word, PDF, Excel, PowerPoint — locally on your machine, and explain what changed."
keywords: document comparison MCP server, compare documents MCP, document diff MCP server, redline documents with AI agent, Claude compare files locally
productName: GroupDocs.Comparison MCP Server
hideChildren: True
toc: True
---

**GroupDocs.Comparison MCP server** lets AI agents like Claude, Cursor, and Copilot compare two versions of a document — Word, PDF, Excel, PowerPoint, OpenDocument, text, HTML — **locally on your machine**, and either explain what changed or hand you a marked-up file. Nothing is uploaded to any cloud service. 

Run it with one command. The Docker image is self-contained — the runtime and every native dependency the engine needs are inside it:

```bash
docker run --rm -i -v $(pwd)/documents:/data \
  ghcr.io/groupdocs-comparison/comparison-net-mcp:latest
```

With the .NET 10 SDK installed, the same server also runs without Docker:

```bash
dnx GroupDocs.Comparison.Mcp --yes
```

Both are the **.NET** build of the server and run on Windows, Linux, and macOS. Other platforms will each get their own launcher — see [Install for your platform](#install-for-your-platform).

Or use the [guided installer]({{< ref "comparison/mcp/getting-started/_index.md" >}}) to register the server in your AI client, verify the setup, and configure shared folders in one pass.

## What you can do

The server exposes four tools to any MCP-compatible agent (full details in the [tools reference]({{< ref "comparison/mcp/tools-reference/_index.md" >}})):

* **`compare`** — compare two documents and save a **marked-up result file** with every difference highlighted.
* **`analyze_changes`** — get the differences as **structured data** without rendering a file: faster, cheaper, and what the agent needs to answer *"what changed?"*.
* **`get_document_info`** — file type, page count, size, and per-page dimensions, without comparing.
* **`get_license_status`** — which licensing mode is active (evaluation, license file, or metered) and, under metered, how much has been consumed.

Ask your agent in plain language — *"What changed in the new contract?"*, *"Give me a redline of these two decks"* — and it picks the right tool.

## Install for your platform

Installation, prerequisites, and client configuration are platform-specific; the tools and licensing model below are the same everywhere.

| Platform | Status | Install and setup |
|---|---|---|
| .NET | **Available** | [MCP server for .NET]({{< ref "comparison/net/mcp/_index.md" >}}) |
| Java | Planned | [Tell us you need it](https://forum.groupdocs.com/c/comparison/12) |
| Python | Planned | [Tell us you need it](https://forum.groupdocs.com/c/comparison/12) |
| Node.js | Planned | [Tell us you need it](https://forum.groupdocs.com/c/comparison/12) |

## Two tools, one question: file or answer?

The distinction that shapes every prompt: **`compare` produces a document, `analyze_changes` produces an answer.**

| You want | The agent calls | You get |
|---|---|---|
| "Tell me what changed" | `analyze_changes` | A change list as JSON, summarized in chat — no file written |
| "Give me a marked-up copy" | `compare` | The rendered result document, saved to your output folder, plus the same change list |

`analyze_changes` skips rendering entirely, so it is the cheaper call and the right one inside loops. Both detect exactly the same changes.

## Supported AI clients

| Client | How it connects |
|---|---|
| Claude Desktop | `claude_desktop_config.json` |
| Claude Code | `claude mcp add` CLI |
| VS Code / GitHub Copilot | user-level or workspace `mcp.json` |
| Visual Studio 2022 (17.14+) | `.mcp.json` in the solution root |
| Cursor | `~/.cursor/mcp.json` |
| Windsurf | `~/.codeium/windsurf/mcp_config.json` |
| Cline | Cline MCP settings |
| Codex CLI | `codex mcp add` CLI |
| JetBrains Rider | manual registration (Settings → AI Assistant → MCP) |

Exact config blocks for every client: [Register in AI clients]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}}).

## Delivery channels

| | Docker (recommended) | NuGet (`dnx`) |
|---|---|---|
| Prerequisites | Docker only | .NET 10 SDK (+ `libgdiplus` on Linux/macOS) |
| Native dependencies | bundled in the image | installed by you (or the setup script) |
| Package | `ghcr.io/groupdocs-comparison/comparison-net-mcp` | `GroupDocs.Comparison.Mcp` on NuGet |
| Architectures | linux/amd64 + linux/arm64 (Apple Silicon native) | any OS with .NET 10 |

## How it works

The server uses MCP's **local stdio transport**: your AI client starts the server as a child process and talks to it over standard input/output. There are no inbound ports, no external endpoints, and no telemetry — the data path is *agent → local server → local filesystem*. That matters more here than in most integrations: the documents people compare are contracts, filings, and drafts under negotiation. Details: [On-premise architecture]({{< ref "comparison/mcp/use-cases/on-premise-document-comparison.md" >}}).

## When you need more than a text diff

`diff` and track-changes cover plain text and same-application edits. Choose this server when you need: **format-aware** comparison across PDF, Word, Excel, PowerPoint and OpenDocument; changes attributed to the right page, paragraph, and **table cell**; style changes (bold, font, colour) detected as changes rather than ignored; a marked-up document your reviewers can open in their own tools; password-protected files; and the fidelity of the commercial GroupDocs engine trusted by enterprise teams for over a decade.

## Resources

* [Quick start]({{< ref "comparison/mcp/getting-started/_index.md" >}}) · [Use cases]({{< ref "comparison/mcp/use-cases/_index.md" >}}) · [Troubleshooting & FAQ]({{< ref "comparison/mcp/troubleshooting-faq.md" >}})
* GitHub: [server source](https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp) · [installer](https://github.com/groupdocs/GroupDocs.Mcp.Installer) · [integration tests](https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp.Tests)
* [NuGet package](https://www.nuget.org/packages/GroupDocs.Comparison.Mcp) · [Docker image](https://github.com/orgs/groupdocs-comparison/packages/container/package/comparison-net-mcp) · [MCP Registry](https://registry.modelcontextprotocol.io/v0/servers?search=io.github.groupdocs-comparison/groupdocs-comparison-mcp)
* Questions: [Comparison forum](https://forum.groupdocs.com/c/comparison/12)
