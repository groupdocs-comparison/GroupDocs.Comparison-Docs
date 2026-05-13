---
id: generate-document-pages-preview
url: comparison/python-net/developer-guide/generate-document-pages-preview
title: Generate Document Pages Preview
linkTitle: Generate page previews
weight: 6
description: "Render lightweight thumbnail images for selected document pages using PreviewOptions and Document.generate_preview() from GroupDocs.Comparison for Python via .NET."
keywords: page preview, thumbnails, PreviewOptions, PreviewFormats, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/generate-document-pages-preview/
    - /comparison/python-net/advanced-usage/generate-document-pages-preview/
structuredData:
  showOrganization: true
  application:
    name: Generate Document Pages Preview
    description: Render page thumbnails in Python with GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to generate document pages preview in Python
    description: Learn how to render page previews step by step
    steps:
      - name: Open the document
        text: Use Comparer or Document to open the source document.
      - name: Configure PreviewOptions
        text: Set the output format, resolution, and page numbers.
      - name: Generate previews
        text: Call generate_preview() to render thumbnails for the selected pages.
---

GroupDocs.Comparison can render thumbnail images of selected pages — useful for review dashboards, file browsers, and any UI that needs a quick visual reference without downloading the full document.

## Example: Render PNG previews of selected pages

{{< tabs "generate-page-previews">}}
{{< tab "generate_document_pages_preview.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import PreviewOptions, PreviewFormats


def create_page_stream(page_number):
    # Return a writable stream — GroupDocs.Comparison writes the rendered page into it.
    return open(f"./page-{page_number}.png", "wb")


def release_page_stream(page_number):
    # The stream returned from create_page_stream has already been flushed and
    # closed by .NET. This hook is for any per-page bookkeeping you want to do.
    pass


def generate_document_pages_preview():
    with Comparer("./source.docx") as comparer:
        preview_options = PreviewOptions(create_page_stream, release_page_stream)
        preview_options.preview_format = PreviewFormats.PNG
        preview_options.page_numbers = [1, 2, 3]
        comparer.source.generate_preview(preview_options)

if __name__ == "__main__":
    generate_document_pages_preview()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the document used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/generate-document-pages-preview/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "page-1.png" >}}  
```text
Binary file (PNG, 163 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/generate-document-pages-preview/generate_document_pages_preview/page-1.png)
{{< /tab >}}
{{< /tabs >}}

You can choose the output format (PNG / JPEG), control resolution, and render only selected pages.

Use case: generate thumbnails for a review dashboard without downloading full documents.
