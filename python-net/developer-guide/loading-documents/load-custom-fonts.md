---
id: load-custom-fonts
url: comparison/python-net/developer-guide/loading-documents/load-custom-fonts
title: Load Custom Fonts
linkTitle: Load custom fonts
weight: 4
description: "Compare documents that contain non-standard fonts by supplying custom font directories through LoadOptions using GroupDocs.Comparison for Python via .NET."
keywords: custom fonts, font_directories, non-standard fonts, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/load-custom-fonts/
    - /comparison/python-net/advanced-usage/loading/load-custom-fonts/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to load custom fonts in Python
    description: Learn how to load custom fonts in Python step by step
    steps:
      - name: Create LoadOptions and add a font directory
        text: Instantiate LoadOptions and append a custom font directory to font_directories.
      - name: Create a Comparer with LoadOptions
        text: Pass the source path/stream and LoadOptions to Comparer.
      - name: Add target with LoadOptions
        text: Add the target document with the same LoadOptions.
      - name: Compare documents
        text: Call compare() with the result file path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can compare documents that use non-standard fonts. Register the custom font directory through a `LoadOptions` instance before opening the documents.

## Example: Connect custom fonts and compare documents

{{< tabs "load-custom-fonts">}}
{{< tab "load_custom_fonts.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import LoadOptions

def load_custom_fonts():
    load_options = LoadOptions()
    load_options.font_directories.append("./fonts/")

    with Comparer("./source.docx", load_options) as comparer:
        comparer.add("./target.docx", load_options)
        comparer.compare("./result.docx")

if __name__ == "__main__":
    load_custom_fonts()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-custom-fonts/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-custom-fonts/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 11 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/loading-documents/load-custom-fonts/load_custom_fonts/result.docx)
{{< /tab >}}
{{< /tabs >}}

The `./fonts/` directory in the example should contain the `.otf` or `.ttf` files needed to render the document accurately.
