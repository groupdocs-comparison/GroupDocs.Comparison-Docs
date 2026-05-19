---
id: specify-file-type-manually
url: comparison/python-net/developer-guide/comparing-documents/specify-file-type-manually
title: Specify File Type for Comparison Manually
linkTitle: Specify file type manually
weight: 28
description: "Manually specify the file type when an extension is missing or wrong, using LoadOptions and FileType from GroupDocs.Comparison for Python via .NET."
keywords: file type, LoadOptions, FileType, manual file type, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/specify-file-type-manually/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to specify the file type for comparison manually in Python
    description: Learn how to specify the file type for comparison manually in Python step by step
    steps:
      - name: Create LoadOptions
        text: Create LoadOptions and set file_type to the desired FileType value.
      - name: Create a Comparer with LoadOptions
        text: Instantiate Comparer with the source path/stream and the LoadOptions object.
      - name: Add target with LoadOptions
        text: Add the target with the same LoadOptions.
      - name: Compare documents
        text: Call compare() with the result file path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) detects file type from the extension by default. When the extension is missing, wrong, or ambiguous, set the file type explicitly via `LoadOptions.file_type`.

## Example: Specify the file type manually

{{< tabs "specify-file-type">}}
{{< tab "specify_file_type_manually.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import LoadOptions
from groupdocs.comparison.result import FileType

def specify_file_type_manually():
    load_options = LoadOptions()
    load_options.file_type = FileType.DOCX

    with Comparer("./source.docx", load_options) as comparer:
        comparer.add("./target.docx", load_options)
        comparer.compare("./result.docx")

if __name__ == "__main__":
    specify_file_type_manually()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/specify-file-type-manually/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/specify-file-type-manually/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/specify-file-type-manually/specify_file_type_manually/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: process files with incorrect or missing extensions by forcing the correct type.

## Common `FileType` values

A few commonly-used members of [`groupdocs.comparison.result.FileType`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.result/filetype/):

| Format family | FileType value |
|---|---|
| Word | `FileType.DOCX`, `FileType.DOC`, `FileType.DOT`, `FileType.DOTX`, `FileType.ODT`, `FileType.RTF` |
| PDF | `FileType.PDF` |
| Spreadsheet | `FileType.XLSX`, `FileType.XLS`, `FileType.ODS`, `FileType.CSV` |
| Presentation | `FileType.PPTX`, `FileType.PPT`, `FileType.ODP` |
| Email | `FileType.EML`, `FileType.MSG`, `FileType.EMLX` |
| Image | `FileType.PNG`, `FileType.JPG`, `FileType.BMP`, `FileType.TIFF`, `FileType.GIF` |
| Web | `FileType.HTML`, `FileType.MHTML` |
| Markdown | `FileType.MD`, `FileType.MARKDOWN` |
| Text & code | `FileType.TXT`, `FileType.JSON`, `FileType.XML`, `FileType.YAML`, `FileType.PY`, `FileType.JS`, `FileType.CS`, ... |

To enumerate every supported value at runtime, call [`FileType.get_supported_file_types()`]({{< ref "comparison/python-net/developer-guide/get-supported-file-formats" >}}).

## When to use

- **Files with no extension.** Documents downloaded from S3 or content systems that strip extensions still need a file-type hint.
- **Wrong extension.** Files renamed by content-management systems (e.g., `.bin`, `.dat`) that hold valid Word / PDF bytes.
- **Custom content-type detection.** Pipelines where Python has already inspected the file (via `python-magic` or similar) and wants to bypass the library's extension-based detection.

## Related topics

- [Get supported file formats]({{< ref "comparison/python-net/developer-guide/get-supported-file-formats" >}}) — enumerate every recognised type at runtime.
- [Load file from stream]({{< ref "comparison/python-net/developer-guide/loading-documents/load-file-from-stream" >}}) — streams have no implicit extension; combine with manual file-type for full control.
