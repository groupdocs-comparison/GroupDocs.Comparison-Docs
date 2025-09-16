---
id: generate-document-pages-preview
url: comparison/python-net/generate-document-pages-preview
title: Generate document pages preview
weight: 20
description: Learn how to generate page previews (thumbnails) of documents using GroupDocs.Comparison for Python via .NET.
keywords: Pages preview, Thumbnails, Render page preview, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
structuredData:
  showOrganization: true
  application:
    name: Generate document pages preview
    description: Render page thumbnails in Python with GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to generate document pages preview in Python
    description: Learn how to render page previews step by step
    steps:
      - name: Create a Comparer instance
        text: Instantiate Comparer with a source document path or stream.
      - name: Prepare preview options
        text: Create PreviewOptions and set output callback and required pages.
      - name: Generate previews
        text: Call get_pages to render thumbnails for selected pages.
---

Use GroupDocs.Comparison to render lightweight page images for quick previews.

```python
import groupdocs.comparison as gc

def save_page_callback(page_number: int, stream):
    with open(f"page-{page_number}.png", "wb") as f:
        f.write(stream.read())

with gc.Comparer("source.docx") as comparer:
    preview_options = gc.PreviewOptions(save_page_callback)
    preview_options.preview_format = gc.PreviewFormats.PNG
    preview_options.page_numbers = [1, 2, 3]

    comparer.get_pages(preview_options)
```

You can choose output format (PNG/JPEG), control resolution, and render only selected pages.

🔹 Use case: Generate thumbnails for a review dashboard without downloading full documents.


