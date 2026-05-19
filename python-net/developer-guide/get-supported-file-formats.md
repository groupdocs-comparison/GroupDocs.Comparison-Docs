---
id: get-supported-file-formats
url: comparison/python-net/developer-guide/get-supported-file-formats
title: Get Supported File Formats Programmatically
linkTitle: Get supported formats (API)
weight: 7
description: "Programmatically enumerate the list of file formats supported by GroupDocs.Comparison for Python via .NET via FileType.get_supported_file_types()."
keywords: supported file formats, FileType, get_supported_file_types, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-supported-document-formats/
    - /comparison/python-net/comparison-basic/get-supported-file-formats/
    - /comparison/python-net/get-supported-file-formats/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: Get file formats supported by Comparison in Python
    description: Programmatically enumerate the supported file types
    steps:
      - name: Call FileType.get_supported_file_types()
        text: Static method returning a collection of FileType values.
      - name: Iterate the result
        text: Sort by extension and print each FileType.
---

If you need the [full list of formats]({{< ref "comparison/python-net/getting-started/supported-document-formats" >}}) at runtime — for example, to validate user input — use the static `FileType.get_supported_file_types()` method.

## Example: List all supported file formats

{{< tabs "get-supported-formats">}}
{{< tab "get_supported_file_formats.py" >}}
```python
from groupdocs.comparison.result import FileType

def get_supported_file_formats():
    supported_file_types = FileType.get_supported_file_types()
    for file_type in sorted(supported_file_types, key=lambda x: x.extension):
        print(file_type)
    print("\nSupported file types retrieved successfully.")

if __name__ == "__main__":
    get_supported_file_formats()
```
{{< /tab >}}
{{< tab "get-supported-file-formats.txt" >}}  
```text
ActionScript Programming Language format (.as)
ActionScript Programming Language format (.as3)
Assembler Programming Language format (.asm)
Type of interpreter that processes shell commands (.bash)
File determines the behavior of interactive shells (.bashrc)
Script file in DOS, OS/2 and Microsoft Windows (.bat)
Configuration file for package control on the server-side (.bowerrc)
C-Based Programming Language format (.c)
CAD file format (.cad)
CSharp cross-platform build automation system format (
[TRUNCATED]
```
[Download full output](/comparison/python-net/_output_files/developer-guide/get-supported-file-formats/get_supported_file_formats/get-supported-file-formats.txt)
{{< /tab >}}
{{< /tabs >}}
