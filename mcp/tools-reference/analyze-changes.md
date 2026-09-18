---
id: mcp-tool-analyze-changes
url: comparison/mcp/tools-reference/analyze-changes
title: analyze_changes
weight: 2
description: "The analyze_changes MCP tool returns the differences between two documents as structured JSON without rendering a result file — cheaper than compare when you only need to know what changed."
keywords: analyze_changes MCP tool, summarize document differences AI, structured document diff JSON, MCP compare without rendering
productName: GroupDocs.Comparison MCP Server
generated: true
serverVersion: 26.9.1
toc: True
---

`analyze_changes` returns the differences between two documents as **structured data**, without producing a marked-up file. It is the cheaper half of the pair: no rendering, no saved output. Example prompt: *"What changed between these two versions?"*

**Tool description (as the AI agent sees it):**

> Analyzes the differences between two documents and returns them as structured data, WITHOUT producing a marked-up result file. Supports PDF, DOCX, XLSX, PPTX, ODT, RTF, TXT, HTML, and 30+ more document formats. Call this tool whenever the user wants to know WHAT changed between two files — to summarize, explain, list, or reason about the differences — rather than to obtain the rendered comparison document. This is cheaper than `compare` because it skips rendering and saving the result file; use `compare` instead when the user needs that file to view, download, or share. Do NOT pre-check whether files exist — just pass the filenames the user provided. The tool resolves files from storage and returns an error with available files if a name is not found. The returned text starts with either `<N> change(s) detected` or `No changes detected`, followed by a `Changes:` section containing a JSON array describing each change (type, component, page, the specific changed fragment `changedText`, surrounding source/target text, table cell, style changes). On failure, the response text starts with 'Analyze failed for' followed by the underlying exception type, message, and inner-exception chain.

## Parameters

| Name | Type | Required | Description |
|---|---|---|---|
| `sourceFile` | object | yes | Source (original) document — provide the filename as given by the user, e.g. 'source.pdf' — [FileInput shape]({{< ref "comparison/mcp/tools-reference/_index.md#the-fileinput-shape" >}}) |
| `targetFile` | object | yes | Target (modified) document to compare against — provide the filename as given by the user, e.g. 'target.pdf' — [FileInput shape]({{< ref "comparison/mcp/tools-reference/_index.md#the-fileinput-shape" >}}) |
| `sourcePassword` | string | no | Password for source document, if password-protected |
| `targetPassword` | string | no | Password for target document, if password-protected |

## Example call

```json
{
  "name": "analyze_changes",
  "arguments": {
    "sourceFile": {
      "filePath": "contract-v1.docx"
    },
    "targetFile": {
      "filePath": "contract-v2.docx"
    }
  }
}
```

## Result

Text beginning with `<N> change(s) detected` (or `No changes detected`), followed by a `Changes:` section containing the same JSON array `compare` returns — type, component, page, `changedText`, surrounding source and target text, table cell, and style changes — but **no result file is written**.

This is what an agent should use to summarize, explain, or reason about a revision. It is also the right tool inside loops: analysing twenty file pairs costs far less than rendering twenty marked-up documents nobody opens.

On failure the text starts with `Analyze failed for`, followed by the exception type and message.

## Example prompts

* *"What changed between contract-v1.docx and contract-v2.docx?"*
* *"Summarize the differences and flag anything about payment terms."*
* *"Did the liability clause change between these two versions?"*
* *"List only the deletions between the draft and the final version."*

See it used end-to-end: [Summarize what changed]({{< ref "comparison/mcp/use-cases/summarize-what-changed.md" >}}).
