---
id: mcp-uc-summarize-what-changed
url: comparison/mcp/use-cases/summarize-what-changed
title: How to summarize what changed between two documents
linkTitle: Summarize what changed
weight: 3
description: "Get a plain-language summary of the differences between two documents with an AI agent over MCP, using analyze_changes to skip rendering entirely."
keywords: summarize document changes AI, what changed between two documents, analyze_changes MCP, document diff summary Claude
productName: GroupDocs.Comparison MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to summarize what changed between two documents"
        description: "Get a plain-language summary of the differences between two documents with an AI agent over MCP, using analyze_changes to skip rendering entirely."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Comparison MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "What changed between proposal-draft.docx and proposal-final.docx? Keep it short."
---

Most comparison questions do not want a document back. *"Did the price change?"*, *"What's different in this draft?"*, *"Anything I should worry about?"* — these want an **answer**. [`analyze_changes`]({{< ref "comparison/mcp/tools-reference/analyze-changes.md" >}}) is built for exactly that: it detects the same differences as `compare` but never renders a result file.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "comparison/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The prompt

> What changed between proposal-draft.docx and proposal-final.docx? Keep it short.

The agent calls `analyze_changes` with the two file names. It gets `<N> change(s) detected` plus a JSON array — every change with its type, page, component, the changed fragment, and the surrounding text — and turns that into prose.

## Why it is cheaper

Rendering a marked-up document is the expensive half of a comparison: the engine has to lay out and write a new file. Skipping it means:

* **Faster answers** — no file written, nothing to open.
* **No output clutter** — twenty questions do not leave twenty `_compared` files in your folder.
* **Less metered consumption** under [metered licensing]({{< ref "comparison/mcp/getting-started/licensing.md" >}}#metered-pay-per-use-licensing).

Ask for the file when you actually need the file.

## Sharper questions

Because the agent holds the change list as data, it can filter it without touching the documents again:

> Only the deletions, please.
> Ignore formatting — show me changes that alter meaning.
> Group the changes by page.
> Did any number change?

The last one is worth knowing: a style change and a substantive edit look identical in a rendered redline but are different entries in the array, so the agent can separate *"this became bold"* from *"this became 45 days"*.

## When the answer is "nothing"

`No changes detected` is a real, useful result — it confirms two files are identical in content even when their bytes differ (re-saved, re-exported, different producer). That is a question `diff` cannot answer for a DOCX or a PDF.

## Then, only if needed

> Good — now give me the marked-up copy of the ones about pricing.

The agent switches to [`compare`]({{< ref "comparison/mcp/tools-reference/compare.md" >}}) and saves the rendered document. Summarize first, render on demand: that is the pattern that keeps a comparison workflow fast.
