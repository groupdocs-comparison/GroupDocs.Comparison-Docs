---
id: get-extended-information-on-the-summary-page
url: comparison/python-net/developer-guide/comparing-documents/get-extended-information-on-the-summary-page
title: Get Extended Information on the Summary Page
linkTitle: Extended summary page
weight: 17
description: "Generate a summary page with extended statistics (per-section counts, page metrics) for the comparison result using GroupDocs.Comparison for Python via .NET."
keywords: summary page, extended summary, extended_summary_page, comparison statistics, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-extended-information-on-the-summary-page/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to get extended summary information in Python
    description: Learn how to get extended summary information in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target file
        text: Add the target via add().
      - name: Configure options
        text: Set extended_summary_page = True on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can append a summary page with extended statistics to the comparison result, going beyond the basic insert/delete/modify counts.

## Example: Enable extended summary information

{{< tabs "extended-summary">}}
{{< tab "get_extended_summary_information.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def get_extended_summary_information():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.extended_summary_page = True
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    get_extended_summary_information()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-extended-information-on-the-summary-page/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-extended-information-on-the-summary-page/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 26 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-extended-information-on-the-summary-page/get_extended_summary_information/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: provide management with detailed metrics beyond the standard summary counts.

The result is as follows:

![](/comparison/python-net/images/how-to-get-extended-information-image.png)

## What you get with extended summary

The extended summary expands the default change-count summary with:

- Per-section change counts (header, body, footer, footnotes).
- Style-change counts broken out from content-change counts.
- Document-property diffs (when combined with `compare_document_property = True`).
- Page-by-page change distribution.

## When to use which summary option

| Option | Result content | Use it when |
|---|---|---|
| `generate_summary_page = True` | Result document body + appended summary page | You want both the diff *and* a high-level overview |
| `show_only_summary_page = True` | Only the summary page, no body | You want to share a concise overview without exposing full document content |
| `extended_summary_page = True` | Adds per-section statistics to whichever summary mode is active | You're reporting to non-technical stakeholders who need the breakdown |

## Related topics

- [Get only summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-only-summary-page" >}}) — produce a summary-only result document.
- [Compare variables and document properties]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-of-variables-and-document-properties" >}}) — surface metadata diffs in the summary.
- [Get list of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}}) — programmatic access to the same data.
