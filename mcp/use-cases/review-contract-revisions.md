---
id: mcp-uc-review-contract-revisions
url: comparison/mcp/use-cases/review-contract-revisions
title: How to review contract revisions with an AI agent
linkTitle: Review contract revisions
weight: 2
description: "Review a contract revision with an AI agent over MCP: compare the two versions locally, get a marked-up document, and have the agent explain which clauses changed and what the change means."
keywords: review contract revisions AI, contract redline AI agent, compare contract versions Claude, legal document comparison MCP
productName: GroupDocs.Comparison MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to review contract revisions with an AI agent"
        description: "Review a contract revision with an AI agent over MCP: compare the two versions locally, get a marked-up document, and have the agent explain which clauses changed and what the change means."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Comparison MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "Compare contract-v1.docx with contract-v2.docx. List every change, and flag anything touching payment terms, liability, or termination."
---

A counterparty returns "a few small edits" as a fresh document with no track changes. The question is always the same: **what actually moved, and does it matter?** This is the workflow that answers it without the document leaving your machine.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "comparison/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## Setup

Put both versions in your storage folder:

```text
D:/Storage/Documents/
  contract-v1.docx      <- what you sent
  contract-v2.docx      <- what came back
```

Register the server in your client ([exact config]({{< ref "comparison/net/mcp/install-in-ai-clients.md" >}})) and point `GROUPDOCS_MCP_STORAGE_PATH` at that folder.

## Step 1 — ask what changed

> Compare contract-v1.docx with contract-v2.docx. List every change, and flag anything touching payment terms, liability, or termination.

The agent calls [`analyze_changes`]({{< ref "comparison/mcp/tools-reference/analyze-changes.md" >}}) and gets back every difference as structured data — including the changed fragment and the text around it. It then does what it is good at: reading that list against your three criteria and telling you which changes are substantive.

Because each entry carries its page and component — and its **table cell** when the change is in a table — the agent can say *"the payment schedule in the table on page 4 moved from 30 to 45 days"* rather than *"something changed on page 4"*.

## Step 2 — get the marked-up file

> Now give me the marked-up version I can send to legal.

This time the agent calls [`compare`]({{< ref "comparison/mcp/tools-reference/compare.md" >}}), which renders the result and saves it as `contract-v1_compared.docx` in your output folder. Your reviewers open it in Word and see the differences highlighted — no MCP, no AI, no new tool for them to learn.

## Step 3 — interrogate the diff

The change list is still in the conversation, so follow-ups cost nothing:

> Did anything change in section 7?
> Were any clauses deleted outright?
> Show me only the style changes — I want to know if emphasis moved.

## Watch for the evaluation cap

In evaluation mode **only the first two pages are compared**. On a twenty-page contract that silently produces a short, reassuring change list — the most dangerous possible failure for this workflow. Confirm the mode before you trust a review:

> What is the license status of the comparison server?

The agent calls [`get_license_status`]({{< ref "comparison/mcp/tools-reference/get-license-status.md" >}}); `"mode": "evaluation"` means you are seeing two pages' worth of truth. [Licensing]({{< ref "comparison/mcp/getting-started/licensing.md" >}}) removes the cap.

## Why local matters here

Contracts under negotiation are exactly the documents that must not be uploaded to a third-party service. The comparison runs in a child process on your machine, against files in a folder you chose; the only thing that reaches your model provider is the text of your prompt and whatever fragments the agent quotes back to you. See [On-premise architecture]({{< ref "comparison/mcp/use-cases/on-premise-document-comparison.md" >}}) for the full boundary — it is the page to send to a security reviewer.
