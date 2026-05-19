---
id: get-only-summary-page
url: comparison/python-net/developer-guide/comparing-documents/get-only-summary-page
title: Get Only Summary Page
linkTitle: Get only summary page
weight: 16
description: "Produce a result document containing only the summary page — change counts and high-level statistics — using GroupDocs.Comparison for Python via .NET."
keywords: summary page, show_only_summary_page, comparison summary, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-only-summary-page/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to get only the summary page in Python
    description: Learn how to get only the summary page in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure options
        text: Set show_only_summary_page = True on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options to produce a summary-only result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can produce a result document that contains only the summary page — useful when you want to share change counts without exposing the underlying document content.

## Example: Get only the summary page

{{< tabs "summary-only">}}
{{< tab "get_only_summary_page.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def get_only_summary_page():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.show_only_summary_page = True
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    get_only_summary_page()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-only-summary-page/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-only-summary-page/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 8 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-only-summary-page/get_only_summary_page/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: share a concise overview of differences without exposing full document content.

The result is as follows:

![](/comparison/python-net/images/get-only-summary-page.png)

## When to use which summary option

| Option | Result content | Use it when |
|---|---|---|
| `generate_summary_page = True` | Result document body + appended summary page | You want both the diff *and* a high-level overview |
| `show_only_summary_page = True` | Only the summary page, no body | You want a concise overview without exposing full document content |
| `extended_summary_page = True` | Adds per-section statistics to whichever summary mode is active | Reporting to non-technical stakeholders who need the breakdown |

The three flags can be combined — e.g., `show_only_summary_page = True` plus `extended_summary_page = True` produces a summary-only document with the richest statistics.

## Related topics

- [Get extended information on the summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-extended-information-on-the-summary-page" >}}) — richer summary content.
- [Get list of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}}) — programmatic equivalent for building custom summaries.
