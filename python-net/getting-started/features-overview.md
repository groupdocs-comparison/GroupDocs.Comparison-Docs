---
id: features-overview
url: comparison/python-net/getting-started/features-overview
title: Features Overview
linkTitle: Features overview
weight: 1
description: "The main capabilities of GroupDocs.Comparison for Python via .NET — change detection, accept/reject, document information extraction, summary reports, and multi-document comparison."
keywords: features overview, file comparison, accept reject changes, change detection, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/features-overview/
structuredData:
  showOrganization: true
---

GroupDocs.Comparison for Python via .NET is a feature-rich document comparison library. The sections below summarize what the API can do; each one links to the developer-guide topic that covers it in depth.

## File comparison

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) identifies differences between two or more files at paragraph, word, and character levels. It detects content changes — additions, deletions, modifications — and style and formatting changes such as bold, italic, underline, strikethrough, and font changes.

See: [Compare documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}).

## Multi-document comparison

Compare a source document against multiple targets in a single operation. The merged result aggregates changes from every target, which is useful for collating proposal revisions or multiple reviewer iterations.

See: [Compare multiple documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-multiple-documents" >}}).

## Accept or reject changes

Every detected difference can be accepted or rejected programmatically. The accepted-only result can be saved to a new document, enabling reviewer-style workflows.

See: [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}).

## Customize the comparison process

Tune how the comparison runs:

- Sensitivity (per-line, per-word, per-character) — see [Adjusting comparison sensitivity]({{< ref "comparison/python-net/developer-guide/comparing-documents/adjusting-comparison-sensitivity" >}}).
- Highlight colours and styles — see [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}).
- Show or hide gap lines — see [Show gap lines]({{< ref "comparison/python-net/developer-guide/comparing-documents/show-gap-lines" >}}).
- Word track-changes handling — see [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}}).

## Document information extraction

Without performing a full comparison, query basic metadata: file type, size, and page count. Useful for routing decisions and previews.

See: [Get document information]({{< ref "comparison/python-net/developer-guide/getting-document-info" >}}).

## Page previews

Generate per-page image previews of the source, target, or result document.

See: [Generate document pages preview]({{< ref "comparison/python-net/developer-guide/generate-document-pages-preview" >}}).

## Folder comparison

Compare entire folders of documents in one pass.

See: [Compare folders]({{< ref "comparison/python-net/developer-guide/compare-folders" >}}).

## Summary reports

When comparison completes, you can save a summary page listing every detected change. Combine with [Get extended information on the summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-extended-information-on-the-summary-page" >}}) for richer reports.

## Load and save flexibility

- Load from local files or streams, including password-protected documents and custom fonts — see [Loading documents]({{< ref "comparison/python-net/developer-guide/loading-documents" >}}).
- Save results to file paths or streams; control output format, metadata, and password — see [Saving results]({{< ref "comparison/python-net/developer-guide/saving-results" >}}).
