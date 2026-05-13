---
id: show-revisions
url: comparison/python-net/developer-guide/comparing-documents/show-revisions
title: Show Revisions
linkTitle: Show revisions
weight: 27
description: "Toggle whether revisions are displayed in the comparison result using GroupDocs.Comparison for Python via .NET — useful when producing clean deliverables for end users."
keywords: show_revisions, revisions view, compare options, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/show-revisions/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to show revisions in Python
    description: Learn how to show or hide revisions in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure options
        text: Set show_revisions to True or False on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options to produce the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you toggle the visibility of inline revision markers in the result. Disable them when you want a clean deliverable for end users.

## Example: Hide revisions in the result

{{< tabs "show-revisions">}}
{{< tab "hide_revisions.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def hide_revisions():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.show_revisions = False
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    hide_revisions()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/show-revisions/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/show-revisions/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/show-revisions/hide_revisions/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: produce a clean deliverable without inline revision markers for end users.

The result is as follows:

|              Disabled revisions display              |
| :--------------------------------------------------: |
| ![](/comparison/python-net/images/show-revisions-false.png) |

## Interaction with other options

- **`word_track_changes`** — when set to `True`, GroupDocs writes diffs as Word Track Changes revisions. `show_revisions = False` then hides those revision markers in the rendered output but keeps them in the underlying document XML — opening the result in Word with track-changes UI enabled will still show them.
- **`revision_author_name`** — only meaningful when `show_revisions = True`. With revisions hidden, the author name is recorded but invisible.
- **`leave_gaps`** — orthogonal: gap lines apply to inserted/deleted content blocks, not to revision markers.

## Related topics

- [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}}) — control whether revisions are emitted in the first place.
- [Setting author of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/setting-author-of-changes" >}}) — attribute revisions to a specific author.
- [Accept or reject revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-revisions" >}}) — process the revisions programmatically after comparison.
