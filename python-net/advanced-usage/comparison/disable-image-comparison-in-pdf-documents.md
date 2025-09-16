---
id: disable-image-comparison-in-pdf-documents
url: comparison/python-net/disable-image-comparison-in-pdf-documents
title: Disable image comparison in PDF documents
weight: 20
description: Learn how to disable image comparison in PDF documents using GroupDocs.Comparison for Python via .NET.
keywords: compare images pdf, disable image comparison, images inheritance mode, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to disable image comparison in PDF documents in Python
    description: Learn how to disable image comparison in PDF documents in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a PDF source path or stream.
      - name: Add target
        text: Add the PDF target path or stream using add().
      - name: Configure options
        text: Set CompareImagesPdf = False and optionally ImagesInheritanceMode.
      - name: Compare documents
        text: Call compare() with options to generate the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can turn off image comparison in PDFs when you only care about text changes.

## Disable image comparison for PDFs

Set `compare_images_pdf` to `False` and choose image inheritance behavior.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.pdf") as comparer:
    comparer.add("target.pdf")
    options = gc.CompareOptions()
    options.compare_images_pdf = False
    options.images_inheritance_mode = gc.ImagesInheritance.TARGET
    comparer.compare("result.pdf", options)
```

🔹 Use case: Speed up PDF comparisons and avoid noise from embedded graphics.


