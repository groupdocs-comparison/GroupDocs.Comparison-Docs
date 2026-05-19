---
id: word-track-changes
url: comparison/python-net/developer-guide/comparing-documents/word-track-changes
title: Word Track Changes
linkTitle: Word track changes
weight: 30
description: "Choose whether to include or ignore Microsoft Word Track Changes (revisions) during comparison via word_track_changes on CompareOptions in GroupDocs.Comparison for Python via .NET."
keywords: Word track changes, word_track_changes, revisions, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/word-track-changes/
structuredData:
  showOrganization: true
  application:
    name: Compare Word Documents with Revisions
    description: Compare Word documents that contain Track Changes using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare Word documents with Track Changes in Python
    description: Learn how to compare Word documents with revisions step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source DOCX file.
      - name: Add target
        text: Add the target DOCX file via add().
      - name: Configure options
        text: Set word_track_changes on CompareOptions to include or ignore revisions.
      - name: Compare and save
        text: Call compare() to produce the result file.
---

By default, GroupDocs.Comparison includes Microsoft Word Track Changes (revisions) during comparison. Use `CompareOptions.word_track_changes` to toggle that behaviour.

## Example 1: Include Word revisions during comparison

Detect and include tracked revisions (changes, comments, insertions, deletions) from the source document so that any previously tracked changes are preserved in the comparison output.

{{< tabs "track-changes-include">}}
{{< tab "include_word_track_changes.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def include_word_track_changes():
    with Comparer("./source-with-revisions.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.word_track_changes = True
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    include_word_track_changes()
```
{{< /tab >}}
{{< tab "source-with-revisions.docx" >}}
{{< tab-text >}}
`source-with-revisions.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/word-track-changes/source-with-revisions.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/word-track-changes/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/word-track-changes/include_word_track_changes/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 2: Ignore Word revisions during comparison

Compare only the final text and ignore previously tracked revisions so historical edits do not affect the diff.

{{< tabs "track-changes-ignore">}}
{{< tab "ignore_word_track_changes.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def ignore_word_track_changes():
    with Comparer("./source-with-revisions.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.word_track_changes = False
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    ignore_word_track_changes()
```
{{< /tab >}}
{{< tab "source-with-revisions.docx" >}}
{{< tab-text >}}
`source-with-revisions.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/word-track-changes/source-with-revisions.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/word-track-changes/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 30 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/word-track-changes/ignore_word_track_changes/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: produce a clean diff focused on current content for executive review.

Note: the availability of particular options can depend on the document format and library version.

The result is as follows:

|                     word_track_changes = True                  |
| :------------------------------------------------------------: |
| ![](/comparison/python-net/images/word-track-changes-option-true.png) |

|                     word_track_changes = False                 |
| :-------------------------------------------------------------: |
| ![](/comparison/python-net/images/word-track-changes-option-false.png) |
