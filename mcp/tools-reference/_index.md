---
id: mcp-tools-reference
url: comparison/mcp/tools-reference
title: Tools reference
weight: 2
description: "Complete reference of every tool the GroupDocs.Comparison MCP server exposes to AI agents, with parameters, example prompts, and results."
keywords: MCP tools list document comparison, compare MCP tool parameters, analyze_changes MCP tool, MCP tools reference
productName: GroupDocs.Comparison MCP Server
generated: true
serverVersion: 26.9.1
toc: True
---

Complete reference of every tool the GroupDocs.Comparison MCP server exposes to AI agents, with parameters, example prompts, and results. Captured from a live `tools/list` call against server version **26.9.1** (raw capture: `tools-list.generated.json` in this section's source).

| Tool | What it does |
|---|---|
| [`compare`]({{< ref "comparison/mcp/tools-reference/compare.md" >}}) | Compares two documents and saves a marked-up result file |
| [`analyze_changes`]({{< ref "comparison/mcp/tools-reference/analyze-changes.md" >}}) | Returns the differences as structured data, without rendering a result file |
| [`get_document_info`]({{< ref "comparison/mcp/tools-reference/get-document-info.md" >}}) | Returns file type, page count, size, and per-page dimensions |
| [`get_license_status`]({{< ref "comparison/mcp/tools-reference/get-license-status.md" >}}) | Reports the active licensing mode and, under metered licensing, consumption |

## The FileInput shape

Every tool takes its document through the same `file` object — pass **either** a name from your storage folder **or** inline content:

```json
{ "sourceFile": { "filePath": "contract-v1.docx" } }
```

| Field | Type | Description |
|---|---|---|
| `filePath` | string | File path or name in the configured storage folder |
| `fileContent` | string | Base64-encoded file content (alternative to `filePath`) |
| `fileName` | string | Original filename with extension — required with `fileContent`. Since **26.9.0** it also works on its own, resolved from the storage folder exactly like `filePath` |

You rarely write this JSON yourself: the AI agent does, from your plain-language prompt. Missing files are not an error to fear — the tool responds with the list of available files so the agent can correct itself.
