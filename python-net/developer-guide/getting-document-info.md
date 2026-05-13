---
id: getting-document-info
url: comparison/python-net/developer-guide/getting-document-info
title: Get Document Information
linkTitle: Get document info
weight: 1
description: "Detect file type, file size, and page count of a document using GroupDocs.Comparison for Python via .NET — from file paths or streams."
keywords: get file info, get document info, file type, file size, page count, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-file-info/
    - /comparison/python-net/comparison-basic/get-file-info/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to get document info in Python
    description: Learn how to read document information in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source file path or stream.
      - name: Get the document info
        text: Call comparer.source.get_document_info().
      - name: Read fields
        text: Read file_type, page_count, and size on the returned object.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can return the following information about a document without performing a comparison:

- `file_type` — the document file type (PDF, Word, Excel, PowerPoint, image, etc.).
- `page_count` — number of pages.
- `size` — file size in bytes.
- `pages_info` — per-page information.

## Example 1: Get document info for a file on local disk

{{< tabs "get-document-info-path">}}
{{< tab "get_document_info.py" >}}
```python
from groupdocs.comparison import Comparer

def get_document_info():
    with Comparer("./source.docx") as comparer:
        info = comparer.source.get_document_info()
        print(f"File type: {info.file_type.file_format}")
        print(f"Number of pages: {info.page_count}")
        print(f"Document size: {info.size} bytes")
        print("\nDocument info extracted successfully.")

if __name__ == "__main__":
    get_document_info()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the document used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/getting-document-info/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-document-info.txt" >}}  
```text
File type: Microsoft Word Document
Number of pages: 1
Document size: 26611 bytes

Document info extracted successfully.
```
[Download full output](/comparison/python-net/_output_files/developer-guide/getting-document-info/get_document_info/get-document-info.txt)
{{< /tab >}}
{{< /tabs >}}

## Example 2: Get document info for a file from a stream

{{< tabs "get-document-info-stream">}}
{{< tab "get_document_info_from_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def get_document_info_from_stream():
    with open("./source.docx", "rb") as source_stream:
        with Comparer(source_stream) as comparer:
            info = comparer.source.get_document_info()
            print(f"File type: {info.file_type.file_format}")
            print(f"Number of pages: {info.page_count}")
            print(f"Document size: {info.size} bytes")

if __name__ == "__main__":
    get_document_info_from_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the document used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/getting-document-info/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-document-info-from-stream.txt" >}}  
```text
File type: Microsoft Word Document
Number of pages: 1
Document size: 26611 bytes
```
[Download full output](/comparison/python-net/_output_files/developer-guide/getting-document-info/get_document_info_from_stream/get-document-info-from-stream.txt)
{{< /tab >}}
{{< /tabs >}}

## Inspect without comparing — the trio

`Comparer.source.get_document_info()` is one of three ways to read information about a document without running a full comparison:

| What you need | Use |
|---|---|
| File type, size, page count of a *specific* document | This page |
| The list of *every* supported format at runtime | [Get supported file formats]({{< ref "comparison/python-net/developer-guide/get-supported-file-formats" >}}) |
| Visual thumbnails of selected pages | [Generate document pages preview]({{< ref "comparison/python-net/developer-guide/generate-document-pages-preview" >}}) |

Pair `get_document_info()` with the format-list to validate inputs early in a pipeline (e.g., reject anything outside an allowlist), and use page previews to give end users a quick visual preview before committing to a full diff.

## Related topics

- [Get supported file formats]({{< ref "comparison/python-net/developer-guide/get-supported-file-formats" >}}) — enumerate supported types at runtime.
- [Generate document pages preview]({{< ref "comparison/python-net/developer-guide/generate-document-pages-preview" >}}) — render page thumbnails.
- [Specify file type for comparison manually]({{< ref "comparison/python-net/developer-guide/comparing-documents/specify-file-type-manually" >}}) — when the inferred type is wrong.
