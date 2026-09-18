---
id: mcp-net
url: comparison/net/mcp
title: MCP server for .NET
linkTitle: MCP Server
weight: 7
description: "Install and configure the GroupDocs.Comparison MCP server for .NET — one-click install links for VS Code and Cursor, per-OS setup for Windows, Linux, and macOS, and the full environment-variable reference."
keywords: GroupDocs.Comparison MCP .NET, install MCP server dnx, MCP server Docker image, MCP server configuration, Model Context Protocol .NET
productName: GroupDocs.Comparison MCP Server for .NET
hideChildren: True
toc: True
---

Everything needed to **install and run** the GroupDocs.Comparison MCP server on the .NET platform. What the server *does* — its tools, use cases, and licensing model — is platform-independent and lives in the [MCP server section]({{< ref "comparison/mcp/_index.md" >}}).

| The .NET build at a glance | |
|---|---|
| Package | [`GroupDocs.Comparison.Mcp`](https://www.nuget.org/packages/GroupDocs.Comparison.Mcp) (current **26.9.1**) |
| One-command run | `dnx GroupDocs.Comparison.Mcp --yes` |
| Container images | `ghcr.io/groupdocs-comparison/comparison-net-mcp` · `groupdocs/comparison-net-mcp` |
| Prerequisites | [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0) for the NuGet channel, or Docker |
| Source | [GroupDocs.Comparison.Mcp on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp) |
| Release notes | [changelog](https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp/tree/master/changelog) · [GitHub releases](https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp/releases) |

## Start here

1. **Install** for your operating system — [Windows]({{< ref "comparison/net/mcp/windows-installation.md" >}}) · [Linux]({{< ref "comparison/net/mcp/linux-installation.md" >}}) · [macOS]({{< ref "comparison/net/mcp/macos-installation.md" >}})
2. **Register it in your AI client** — [one-click links and per-client configs]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}})
3. **Point it at your documents** — [configuration]({{< ref "comparison/net/mcp/configuration.md" >}})
4. **License it** — evaluation, a license file, or metered keys: [Licensing]({{< ref "comparison/mcp/getting-started/licensing.md" >}})

## In this section

* [Install on Windows]({{< ref "comparison/net/mcp/windows-installation.md" >}})
* [Install on Linux]({{< ref "comparison/net/mcp/linux-installation.md" >}})
* [Install on macOS]({{< ref "comparison/net/mcp/macos-installation.md" >}})
* [Register in AI clients]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}}) — VS Code, Cursor, Claude, Visual Studio, Windsurf, Cline, Codex, Rider
* [Configuration]({{< ref "comparison/net/mcp/configuration.md" >}}) — storage, output, license, metered keys
* [System requirements]({{< ref "comparison/net/mcp/system-requirements.md" >}})
* [Troubleshooting (.NET)]({{< ref "comparison/net/mcp/troubleshooting.md" >}}) — `dnx`, native libraries, Docker daemon

## Platform-independent reference

* [Tools reference]({{< ref "comparison/mcp/tools-reference/_index.md" >}}) — `compare`, `analyze_changes`, `get_document_info`, `get_license_status`
* [Use cases]({{< ref "comparison/mcp/use-cases/_index.md" >}}) · [Supported formats]({{< ref "comparison/mcp/supported-formats.md" >}}) · [Troubleshooting & FAQ]({{< ref "comparison/mcp/troubleshooting-faq.md" >}})
