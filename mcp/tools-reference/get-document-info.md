---
id: mcp-tool-get-document-info
url: comparison/mcp/tools-reference/get-document-info
title: get_document_info
weight: 3
description: "The get_document_info MCP tool returns file type, page count, file size, and per-page dimensions for a document — without running a comparison."
keywords: get_document_info MCP, MCP document info tool, check page count before comparing, ai agent inspect document
productName: GroupDocs.Comparison MCP Server
generated: true
serverVersion: 26.9.1
toc: True
---

`get_document_info` returns the file type, page count, size, and per-page dimensions of a document — without comparing anything. Agents use it to sanity-check a pair before a comparison (*"are these even the same format?"*). Example prompt: *"How many pages does contract-v2.docx have?"*

**Tool description (as the AI agent sees it):**

> Returns file type, page count, file size, and per-page dimensions for a source document — without performing a comparison. Supports PDF, DOCX, XLSX, PPTX, ODT, RTF, TXT, HTML, and 30+ more document formats. Call this tool whenever the user asks to inspect a document, get document info, check file type, page count, or properties before deciding whether to compare. Do NOT pre-check whether files exist — just pass the filename the user provided. The tool resolves files from storage and returns an error with available files if a name is not found. Returns a JSON object with `fileName`, `fileType` (`fileFormat` + dot-prefixed `extension`, e.g. `.pdf`), `pageCount`, `sizeBytes`, and `pages` (per-page width/height). On failure, the response text starts with 'Document-info lookup failed for' followed by the underlying exception type, message, and inner-exception chain.

## Parameters

| Name | Type | Required | Description |
|---|---|---|---|
| `file` | object | yes |  — [FileInput shape]({{< ref "comparison/mcp/tools-reference/_index.md#the-fileinput-shape" >}}) |
| `password` | string | no | Password for protected documents |

## Example call

```json
{
  "name": "get_document_info",
  "arguments": {
    "file": {
      "filePath": "contract-v2.docx"
    }
  }
}
```

## Result

A JSON object with `fileName`, `fileType` (`fileFormat` plus a dot-prefixed `extension`, e.g. `.docx`), `pageCount`, `sizeBytes`, and `pages` — width and height per page.

On failure the text starts with `Document-info lookup failed for`, followed by the exception type and message.

## Example prompts

* *"How many pages does contract-v2.docx have?"*
* *"What format is this file, and how big is it?"*
* *"Check both versions are the same format before comparing them."*
