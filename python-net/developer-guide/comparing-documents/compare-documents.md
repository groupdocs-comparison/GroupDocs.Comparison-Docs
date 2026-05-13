---
id: compare-documents
url: comparison/python-net/developer-guide/comparing-documents/compare-documents
title: Compare Documents
linkTitle: Compare documents
weight: 1
description: "Compare Word, Excel, PowerPoint, PDF, image, HTML, AutoCAD, Visio, and OpenDocument files from file paths or streams with GroupDocs.Comparison for Python via .NET."
keywords: compare documents, document comparison Python, GroupDocs.Comparison Python, compare files
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-documents/
    - /comparison/python-net/comparison-basic/compare-documents/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare documents in Python
    description: Learn how to compare documents in Python step by step
    steps:
      - name: Create a Comparer and load the source file
        text: Create a Comparer instance whose constructor takes the source file path or stream. Absolute and relative paths both work.
      - name: Add the target file
        text: Add the target document via the add() method, again from a path or stream.
      - name: Compare documents
        text: Call compare() with the result file path or output stream.
---

The change-detection algorithm of [GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) detects changes across many document parts and blocks:

- Text blocks — paragraphs, words, and characters.
- Tables.
- Images.
- Shapes.

The result document highlights detected changes with colour:

- Added — **blue**.
- Modified — **green**.
- Style — **green**.
- Deleted — **red**.

The styling scheme is fully customizable — see [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}).

To compare two documents, follow these steps:

1. Instantiate a [`Comparer`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparer) with the source document path or stream.
2. Call [`add()`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparer/#add) and specify the target document path or stream.
3. Call [`compare()`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparer/#compare) and specify the result file path or output stream.

## Example 1: Compare documents from file paths

The simplest way to compare two documents is by passing file paths to `Comparer`.

{{< tabs "compare-documents-path">}}
{{< tab "compare_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_documents():
    # Initialize Comparer with the source file path
    with Comparer("./source.docx") as comparer:
        # Add the target file and run the comparison
        comparer.add("./target.docx")
        comparer.compare("./result.docx")

if __name__ == "__main__":
    compare_documents()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-documents/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-documents/compare_documents/result.docx)
{{< /tab >}}
{{< /tabs >}}

The output file looks like this:

![](/comparison/python-net/images/compare-documents.png)

## Example 2: Compare documents from streams

You can also feed `Comparer` open file streams — useful when the source and target arrive over the network, from a database, or from another in-memory source.

{{< tabs "compare-documents-stream">}}
{{< tab "compare_documents_from_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_documents_from_stream():
    # Open the source and target as binary streams
    with open("./source.docx", "rb") as source_stream, \
         open("./target.docx", "rb") as target_stream:
        with Comparer(source_stream) as comparer:
            comparer.add(target_stream)
            comparer.compare("./result.docx")

if __name__ == "__main__":
    compare_documents_from_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-documents/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-documents/compare_documents_from_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 3: Compare documents and write the result to a stream

Combine input streams with an output stream to keep everything in memory:

{{< tabs "compare-documents-output-stream">}}
{{< tab "compare_documents_to_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_documents_to_stream():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        with open("./result.docx", "wb") as out_stream:
            comparer.compare(out_stream)

if __name__ == "__main__":
    compare_documents_to_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-documents/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-documents/compare_documents_to_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Next steps

- [Compare multiple documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-multiple-documents" >}}) — compare a source against multiple targets.
- [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) — review changes individually before producing the result.
- [Adjusting comparison sensitivity]({{< ref "comparison/python-net/developer-guide/comparing-documents/adjusting-comparison-sensitivity" >}}) — fine-tune the change-detection threshold.
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — change the highlight colours and styles.
