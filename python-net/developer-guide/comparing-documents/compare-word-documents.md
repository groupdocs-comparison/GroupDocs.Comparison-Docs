---
id: compare-word-documents
url: comparison/python-net/developer-guide/comparing-documents/compare-word-documents
title: Compare Word Documents
linkTitle: Compare Word documents
weight: 2
description: "Compare Microsoft Word (.doc, .docx) documents and detect text, formatting, and style differences using GroupDocs.Comparison for Python via .NET."
keywords: compare Word, compare DOCX, compare DOC, GroupDocs.Comparison Python, Word document comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-word-documents/
structuredData:
  showOrganization: true
  application:
    name: Compare Word Documents
    description: Compare Word documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare Word documents in Python
    description: Learn how to compare Word documents in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source Word file.
      - name: Add the target Word document
        text: Add one or more Word documents using add().
      - name: Run comparison
        text: Call compare() with the result file path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) compares Word documents and highlights differences in text, formatting, styles, and structure. Typical use cases include legal contracts, business reports, and any collaborative editing workflow where accurate change tracking matters.

The API:

- Compares **DOC and DOCX** files (and Word-compatible formats such as RTF, ODT, DOT, DOTX).
- Highlights insertions, deletions, and formatting changes.
- Exports the result as a Word document or any other supported format.

## Steps to compare Word documents

1. Create a `Comparer` instance and load the source Word document.
2. Add one or more target Word documents via `add()`.
3. Call `compare()` to generate the result file.

## Example: Compare Word documents

{{< tabs "compare-word">}}
{{< tab "compare_word_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_word_documents():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx")

if __name__ == "__main__":
    compare_word_documents()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-word-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-word-documents/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-word-documents/compare_word_documents/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Word-specific options

The base flow above works for any Word format, but several options on `CompareOptions` are specifically useful when comparing Word documents:

| Option | Purpose | Topic |
|---|---|---|
| `word_track_changes` | Include or ignore previously-tracked revisions | [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}}) |
| `compare_bookmarks` | Detect changes inside bookmarked ranges | [Compare bookmarks in Word documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-bookmarks-in-word" >}}) |
| `revision_author_name` | Attribute changes in the result to a specific author | [Setting author of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/setting-author-of-changes" >}}) |
| `show_revisions` | Show or hide inline revision markers in the result | [Show revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/show-revisions" >}}) |
| `compare_variable_property` / `compare_document_property` | Compare document metadata | [Compare variables and document properties]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-of-variables-and-document-properties" >}}) |

## Related topics

- [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) — apply only the changes you want.
- [Accept or reject revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-revisions" >}}) — process Word Track Changes revisions independently of comparison.
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — change colours and decorations for inserted/deleted/changed items.
