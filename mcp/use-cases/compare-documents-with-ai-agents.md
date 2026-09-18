---
id: mcp-uc-compare-documents-with-ai-agents
url: comparison/mcp/use-cases/compare-documents-with-ai-agents
title: How to compare documents with AI agents using MCP
linkTitle: Compare with AI agents
weight: 1
description: "Compare two versions of a document with an AI agent over MCP: the agent reads your prompt, the GroupDocs engine does the comparison locally, and you get either a summary or a marked-up file."
keywords: compare documents with AI agent, MCP document comparison, Claude compare two documents, AI redline documents
productName: GroupDocs.Comparison MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to compare documents with AI agents using MCP"
        description: "Compare two versions of a document with an AI agent over MCP: the agent reads your prompt, the GroupDocs engine does the comparison locally, and you get either a summary or a marked-up file."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Comparison MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "Compare contract-v1.docx with contract-v2.docx. Summarize what changed, then give me a marked-up copy."
---

Comparing documents with an AI agent works because the two halves do what each is good at: the **agent** understands *"check whether the payment terms moved"*, and the **engine** does the actual format-aware comparison locally. The agent never guesses at differences from reading text — it calls a tool and reports what the engine found.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "comparison/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The pattern

1. You put both versions in the storage folder the server can see.
2. You ask in plain language: *"What changed between contract-v1.docx and contract-v2.docx?"*
3. The agent calls [`analyze_changes`]({{< ref "comparison/mcp/tools-reference/analyze-changes.md" >}}) — or [`compare`]({{< ref "comparison/mcp/tools-reference/compare.md" >}}) if you asked for a file — with the two names.
4. The engine compares them on your machine and returns the change list as JSON.
5. The agent summarizes it, quotes the fragments that matter, and answers follow-up questions from the same data.

## Which tool answers which question

| Your prompt | Tool | What comes back |
|---|---|---|
| "What changed?" | `analyze_changes` | Change list as data; no file written |
| "Summarize the differences" | `analyze_changes` | Same data, summarized in chat |
| "Give me a marked-up copy" | `compare` | Rendered result document **and** the change list |
| "How many pages is this?" | `get_document_info` | Type, pages, size — no comparison |

The rule of thumb: **ask for an answer, get `analyze_changes`; ask for a document, get `compare`.** Rendering is the expensive part, and `analyze_changes` skips it.

## What the engine actually detects

Each change in the returned array carries its type (inserted, deleted, style change), the component and page it belongs to, the changed fragment itself, the surrounding source and target text, and — when the change is inside a table — the specific cell. Style changes count: if a clause went from regular to bold, that is a change, not noise.

That structure is why an agent can answer *"did anything change in section 7?"* without re-reading the documents: it filters the array it already has.

## Setup

Any MCP client works. The shortest path:

```bash
dnx GroupDocs.Comparison.Mcp --yes
```

with `GROUPDOCS_MCP_STORAGE_PATH` pointing at the folder holding both versions — see [Register in AI clients]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}}) for the exact per-client block, or run the [installer]({{< ref "comparison/mcp/getting-started/_index.md" >}}) and let it write the config.

## Try it

Drop two versions of any document into your storage folder and ask:

> Compare contract-v1.docx with contract-v2.docx. Summarize what changed, then give me a marked-up copy.

A capable agent will make two calls — `analyze_changes` for the summary, `compare` for the file — and hand you both in one turn.

## Where to go next

* [Review contract revisions]({{< ref "comparison/mcp/use-cases/review-contract-revisions.md" >}}) — the redline workflow end to end.
* [Summarize what changed]({{< ref "comparison/mcp/use-cases/summarize-what-changed.md" >}}) — answer-only comparisons, and how to keep them cheap.
* [Batch-compare a folder]({{< ref "comparison/mcp/use-cases/batch-compare-folder.md" >}}) — many pairs in one prompt.
* [On-premise architecture]({{< ref "comparison/mcp/use-cases/on-premise-document-comparison.md" >}}) — what leaves your machine, and what does not.
