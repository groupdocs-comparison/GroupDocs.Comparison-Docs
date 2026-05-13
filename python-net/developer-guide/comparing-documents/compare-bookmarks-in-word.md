---
id: compare-bookmarks-in-word
url: comparison/python-net/developer-guide/comparing-documents/compare-bookmarks-in-word
title: Compare Bookmarks in Word Documents
linkTitle: Compare bookmarks
weight: 20
description: "Enable bookmark comparison in Word documents using GroupDocs.Comparison for Python via .NET to detect differences in bookmarked ranges."
keywords: compare bookmarks, Word bookmarks, DOCX bookmarks, compare_bookmarks, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-bookmarks-in-word/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare bookmarks in Word documents in Python
    description: Learn how to compare bookmarks in Word documents in Python step by step
    steps:
      - name: Create a Comparer and load the source DOCX
        text: Instantiate Comparer with a Word source path or stream.
      - name: Add the target DOCX
        text: Add the target Word document via add().
      - name: Configure options
        text: Set compare_bookmarks = True on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) supports bookmark comparison in Word documents — enable `compare_bookmarks` on `CompareOptions` to detect differences in bookmarked ranges.

## Example: Enable bookmark comparison

{{< tabs "compare-bookmarks">}}
{{< tab "compare_bookmarks_in_word.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def compare_bookmarks_in_word():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.compare_bookmarks = True
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    compare_bookmarks_in_word()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-bookmarks-in-word/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-bookmarks-in-word/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 27 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-bookmarks-in-word/compare_bookmarks_in_word/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: validate that critical bookmarked sections (e.g., contract clauses) remain unchanged.

The result is as follows:

![](/comparison/python-net/images/compared-bookmarks.png)

## Notes

- **Word-only.** Bookmark comparison applies only to Microsoft Word documents (`.doc`, `.docx`, `.dot`, `.dotx`). For other formats the option is silently ignored.
- **Interaction with `word_track_changes`.** Bookmark comparison runs alongside revision processing — if a bookmarked range contains tracked changes, both are surfaced in the result.
- **Bookmark *content* vs. bookmark *definitions*.** `compare_bookmarks = True` detects content changes inside bookmarked ranges. Pure bookmark-name renames without content change are not surfaced as content diffs.

## Related topics

- [Compare Word documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-word-documents" >}}) — the base Word-comparison flow.
- [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}}) — include or ignore tracked revisions.
- [Compare variables and document properties]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-of-variables-and-document-properties" >}}) — also Word-specific.
