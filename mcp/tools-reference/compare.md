---
id: mcp-tool-compare
url: comparison/mcp/tools-reference/compare
title: compare
weight: 1
description: "The compare MCP tool compares two documents, saves a marked-up result file with the differences highlighted, and returns the change list as JSON."
keywords: compare MCP tool, MCP compare documents tool parameters, ai agent redline documents, document diff tool MCP
productName: GroupDocs.Comparison MCP Server
generated: true
serverVersion: 26.9.1
toc: True
---

`compare` compares two documents, saves a **marked-up result document** with the differences highlighted, and returns the list of changes. Example prompt: *"Compare contract-v1.docx with contract-v2.docx and give me a marked-up copy"*.

**Tool description (as the AI agent sees it):**

> Compares two documents and highlights the differences between them. Supports PDF, DOCX, XLSX, PPTX, ODT, RTF, TXT, HTML, and 30+ more document formats. Call this tool immediately whenever the user asks to compare, diff, or check differences between two files. Do NOT pre-check whether files exist — just pass the filenames the user provided. The tool resolves files from storage and returns an error with available files if a name is not found. Use this tool when the user wants the marked-up result FILE saved (to view, download, or share). If the user only wants to know WHAT changed (an analysis or summary of the differences) without needing the rendered file, prefer the `analyze_changes` tool, which is cheaper because it skips rendering. The returned text includes either `<N> change(s) detected` or `No changes detected`, followed by the saved path of the marked-up result document (file name pattern: `<source-stem>_compared<source-ext>`), and then a `Changes:` section containing a JSON array describing each change (type, component, page, the specific changed fragment `changedText`, surrounding source/target text, table cell, style changes). On failure, the response text starts with 'Compare failed for' followed by the underlying exception type, message, and inner-exception chain.

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
  "name": "compare",
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

The response text opens with `<N> change(s) detected` (or `No changes detected`), names the saved file — the pattern is `<source-stem>_compared<source-ext>`, so `contract-v1.docx` becomes `contract-v1_compared.docx` — and then carries a `Changes:` section holding a JSON array. Each entry describes one change: its type (inserted, deleted, style change), the component and page it sits on, the changed fragment itself (`changedText`), the surrounding source and target text, the table cell when the change is inside a table, and style details.

That combination is what makes the tool useful to an agent: it can answer *"what changed"* from the JSON and hand you the rendered file in the same turn.

On failure the text starts with `Compare failed for`, followed by the exception type and message — enough for the agent to explain a wrong password or an unsupported format rather than guessing.

## Example prompts

* *"Compare contract-v1.docx with contract-v2.docx and give me the marked-up file."*
* *"Produce a redline between the old and new proposal."*
* *"Compare these two spreadsheets and save the result I can send to the client."*
* *"Diff report-draft.pdf against report-final.pdf."*

See it used end-to-end: [Review contract revisions]({{< ref "comparison/mcp/use-cases/review-contract-revisions.md" >}}).
