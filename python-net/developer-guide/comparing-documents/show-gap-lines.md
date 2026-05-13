---
id: show-gap-lines
url: comparison/python-net/developer-guide/comparing-documents/show-gap-lines
title: Show Gap Lines Instead of Changes
linkTitle: Show gap lines
weight: 26
description: "Replace inserted and deleted content with empty gap lines to produce redacted-style diffs while preserving layout alignment using GroupDocs.Comparison for Python via .NET."
keywords: leave_gaps, gap lines, empty lines, redacted diff, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/show-gap-lines/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to show gap lines instead of changes in Python
    description: Step-by-step to show gap lines instead of changes in Python
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure options
        text: Set show_inserted_content = False, show_deleted_content = False, and leave_gaps = True.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can produce redacted-style results in which inserted and deleted content is hidden and replaced with empty gap lines. The layout alignment is preserved so readers can see where changes occurred without seeing the changed text.

## Example: Replace changes with gap lines

{{< tabs "show-gap-lines">}}
{{< tab "show_gap_lines.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def show_gap_lines():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.show_inserted_content = False
        options.show_deleted_content = False
        options.leave_gaps = True
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    show_gap_lines()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/show-gap-lines/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/show-gap-lines/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/show-gap-lines/show_gap_lines/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: provide redacted-style diffs that keep layout alignment without showing actual changed text.

The result is as follows:

|                        Default result                         |                Result without LeaveGaps                       |
| :-----------------------------------------------------------: | :------------------------------------------------------------: |
| ![](/comparison/python-net/images/show-gap-lines-default-result.png) | ![](/comparison/python-net/images/show-gap-lines-without-leavegaps.png) |

|                        Default result                         |                Result with LeaveGaps                          |
| :-----------------------------------------------------------: | :-----------------------------------------------------------: |
| ![](/comparison/python-net/images/show-gap-lines-default-result.png) | ![](/comparison/python-net/images/show-gap-lines-with-leavegaps.png) |

## When to use gap lines

Gap-line output is useful in two scenarios:

- **Redacted-style diffs for regulatory review.** Reviewers can see *where* changes occurred and *how many* without seeing the actual content — useful when the comparison artifact will be circulated more widely than the underlying documents.
- **Visual change density reporting.** A gap-line result document gives a quick visual sense of how much was changed and where, without the cognitive load of reading every diff.

For full-content review use the default settings (`show_inserted_content = True`, `show_deleted_content = True`, `leave_gaps = False`).

## Related topics

- [Show revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/show-revisions" >}}) — another way to produce a "clean" result by hiding revision markers.
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — full control over how visible changes look.
- [Get only summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-only-summary-page" >}}) — the most extreme form of redacted output: counts only, no content at all.
