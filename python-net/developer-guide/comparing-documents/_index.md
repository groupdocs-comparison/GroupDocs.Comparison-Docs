---
id: comparing-documents
url: comparison/python-net/developer-guide/comparing-documents
title: Comparing Documents
linkTitle: Comparing documents
weight: 2
description: "Compare two or more documents, tune sensitivity, customize change styles, accept or reject changes, and handle format-specific scenarios with GroupDocs.Comparison for Python."
keywords: compare documents, document comparison, customize comparison, accept reject changes, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
aliases:
    - /comparison/python-net/comparison/
    - /comparison/python-net/advanced-usage/comparison/
    - /comparison/python-net/comparison-basic/
structuredData:
    showOrganization: true
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) offers a wide surface for controlling how comparisons run and how the result is rendered. The [`CompareOptions`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/compareoptions) class lets you tune behaviour across the following dimensions:

- **What gets compared** — `compare_bookmarks`, `compare_variable_property`, `compare_document_property`, `header_footers_comparison`, `compare_images_pdf`.
- **How sensitively** — `sensitivity_of_comparison`, `sensitivity_of_comparison_for_tables`, `detalisation_level`.
- **Which changes to surface** — `show_inserted_content`, `show_deleted_content`, `show_only_changed`, `show_revisions`, `detect_style_changes`.
- **Visual styling** — `inserted_item_style`, `deleted_item_style`, `changed_item_style`, `mark_nested_content`, `mark_changed_content`, `mark_line_breaks`, `leave_gaps`.
- **Coordinate output** — `calculate_coordinates`, `calculate_coordinates_mode`.
- **Result document properties** — `paper_size`, `password_save_option`, `original_size`.
- **Summary reporting** — `generate_summary_page`, `extended_summary_page`, `show_only_summary_page`.

For full details on individual options, see the topic pages below.

## Topics in this section

The pages here are grouped by intent:

**Core flows**

- [Compare documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}) — the foundational two-document comparison.
- [Compare multiple documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-multiple-documents" >}}) — multi-target compare in one pass.

**Format-specific**

- [Compare Word documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-word-documents" >}})
- [Compare PDF documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-pdf-documents" >}})
- [Compare JSON documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-json-documents" >}})
- [Compare Markdown documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-markdown-documents" >}})
- [Compare bookmarks in Word documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-bookmarks-in-word" >}})

**Customize the comparison**

- [Adjusting comparison sensitivity]({{< ref "comparison/python-net/developer-guide/comparing-documents/adjusting-comparison-sensitivity" >}})
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}})
- [Set shape color independently of font color]({{< ref "comparison/python-net/developer-guide/comparing-documents/set-shape-color-independently-of-font-color" >}})
- [Show gap lines instead of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/show-gap-lines" >}})
- [Disable image comparison in PDF documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents" >}})
- [Specify file type for comparison manually]({{< ref "comparison/python-net/developer-guide/comparing-documents/specify-file-type-manually" >}})
- [Compare variables and document properties]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-of-variables-and-document-properties" >}})

**Accept or reject changes**

- [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) — pick which differences to apply.
- [Accept or reject revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-revisions" >}}) — process Word Track Changes revisions.
- [How to merge source code files]({{< ref "comparison/python-net/developer-guide/comparing-documents/how-to-merge-source-code-files" >}}) — apply the accept/reject pattern to source code.

**Inspect changes**

- [Get list of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}})
- [Get changes coordinates]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-changes-coordinates" >}})
- [Get source and target text from files]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-source-and-target-text-from-files" >}})
- [Get comparison result as a Document object]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-result-document-object" >}})

**Summary pages**

- [Get only summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-only-summary-page" >}})
- [Get extended information on the summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-extended-information-on-the-summary-page" >}})

**Word-specific revisions**

- [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}})
- [Show revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/show-revisions" >}})
- [Setting author of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/setting-author-of-changes" >}})
