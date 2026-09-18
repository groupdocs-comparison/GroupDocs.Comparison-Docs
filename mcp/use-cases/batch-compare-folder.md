---
id: mcp-uc-batch-compare-folder
url: comparison/mcp/use-cases/batch-compare-folder
title: How to batch-compare document versions in a folder
linkTitle: Batch-compare a folder
weight: 4
description: "Compare many document pairs in one prompt with an AI agent over MCP: the agent iterates the folder, calls analyze_changes per pair, and reports one consolidated summary."
keywords: batch compare documents, compare folder of documents AI, bulk document diff MCP, compare many files Claude
productName: GroupDocs.Comparison MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to batch-compare document versions in a folder"
        description: "Compare many document pairs in one prompt with an AI agent over MCP: the agent iterates the folder, calls analyze_changes per pair, and reports one consolidated summary."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Comparison MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "For every -v1/-v2 pair in my documents folder, compare the two and tell me which invoices changed and how. One line per invoice."
---

One prompt, a folder of version pairs, no uploads. The agent loops; the engine compares each pair locally; you get one consolidated report.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "comparison/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## Setup

Name the pairs so the agent can match them. Any consistent convention works:

```text
D:/Storage/Documents/
  invoice-001-v1.pdf   invoice-001-v2.pdf
  invoice-002-v1.pdf   invoice-002-v2.pdf
  invoice-003-v1.pdf   invoice-003-v2.pdf
```

Point `GROUPDOCS_MCP_STORAGE_PATH` at that folder — [configuration]({{< ref "comparison/net/mcp/configuration.md" >}}).

## The prompt

> For every `-v1`/`-v2` pair in my documents folder, compare the two and tell me which invoices changed and how. One line per invoice.

The agent calls [`analyze_changes`]({{< ref "comparison/mcp/tools-reference/analyze-changes.md" >}}) once per pair and reports each result. Use `analyze_changes` here rather than `compare`: a sweep over thirty pairs that renders thirty marked-up documents nobody opens is thirty times the work for the same answer.

## Getting files for the ones that matter

> Now produce marked-up copies for the three that changed.

The agent calls [`compare`]({{< ref "comparison/mcp/tools-reference/compare.md" >}}) for just those three. Each result lands in your output folder as `<source-stem>_compared<ext>`; existing files are never overwritten — a new name is used instead.

## Practical notes

* **Files are resolved by name** from the storage folder, so the agent passes `invoice-001-v1.pdf`, not a full path from your machine.
* **A missing or mistyped name is not fatal** — the tool answers with the list of files it can see, and the agent corrects itself and retries.
* **Compare like with like.** Both files in a pair should be the same format; convert first if they are not ([Conversion MCP server](/conversion/mcp/)).
* **Mind the evaluation cap** — two pages per document until a license is applied, which on a batch means a quietly incomplete report. Check with [`get_license_status`]({{< ref "comparison/mcp/tools-reference/get-license-status.md" >}}) before trusting a sweep.
* **Long sweeps take time.** Each pair is a real comparison by a real engine; a folder of large PDFs is minutes, not seconds. Ask for progress as it goes rather than one silent batch.

## Where this goes next

Sweeps like this are how teams check that a re-issued batch matches what was approved, that a vendor's "unchanged" statements really are unchanged, and that a migration produced the same documents it started with — all without a single file leaving the machine ([architecture]({{< ref "comparison/mcp/use-cases/on-premise-document-comparison.md" >}})).
