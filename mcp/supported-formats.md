---
id: mcp-supported-formats
url: comparison/mcp/supported-formats
title: Supported formats
weight: 4
description: "The MCP server exposes the full GroupDocs.Comparison engine: every format the .NET library can compare — Word, PDF, Excel, PowerPoint, OpenDocument, text, HTML and more — is available to your AI agent."
keywords: MCP server supported formats, compare pdf MCP, compare docx MCP, compare xlsx MCP, compare presentations MCP
productName: GroupDocs.Comparison MCP Server
toc: True
---

The MCP server exposes the **full GroupDocs.Comparison engine**: every format the .NET library can compare — 30+ word-processing, spreadsheet, presentation, PDF, text, HTML, and image formats — is available to your AI agent through the [`compare`]({{< ref "comparison/mcp/tools-reference/compare.md" >}}) and [`analyze_changes`]({{< ref "comparison/mcp/tools-reference/analyze-changes.md" >}}) tools. The canonical matrix lives in the library documentation: [supported file formats]({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}).

The pairs agents are asked for most:

* **DOCX ↔ DOCX** — contract and proposal revisions, down to the table cell: [Review contract revisions]({{< ref "comparison/mcp/use-cases/review-contract-revisions.md" >}}).
* **PDF ↔ PDF** — compare what was actually sent, when the source files are gone.
* **XLSX ↔ XLSX** — figures that moved between two versions of a model or a price list.
* **PPTX ↔ PPTX** — what changed between two revisions of a deck.
* **ODT / RTF / TXT / HTML** — OpenDocument and plain formats, same tools.

**Both documents should be the same format.** Comparison runs between like and like: a DOCX against a DOCX, a PDF against a PDF. If you have a DOCX and the PDF that was produced from it, convert one of them first — that is what the [GroupDocs.Conversion MCP server](/conversion/mcp/) is for — and then compare the matching pair.

Not sure what you are holding? Ask — *"what format and how many pages is this file?"* — and the agent answers via [`get_document_info`]({{< ref "comparison/mcp/tools-reference/get-document-info.md" >}}).
