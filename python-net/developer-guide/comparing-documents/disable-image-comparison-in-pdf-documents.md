---
id: disable-image-comparison-in-pdf-documents
url: comparison/python-net/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents
title: Disable Image Comparison in PDF Documents
linkTitle: Disable image comparison (PDF)
weight: 22
description: "Skip image comparison when diffing PDF documents to speed up the process and avoid noise from embedded graphics, using GroupDocs.Comparison for Python via .NET."
keywords: compare_images_pdf, disable image comparison, ImagesInheritance, PDF comparison, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/disable-image-comparison-in-pdf-documents/
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
      - name: Create a Comparer
        text: Instantiate Comparer with a PDF source path or stream.
      - name: Add target
        text: Add the PDF target via add().
      - name: Configure options
        text: Set compare_images_pdf = False on CompareOptions; optionally set images_inheritance_mode.
      - name: Compare documents
        text: Call compare() with the options to produce the result PDF.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can skip image comparison when diffing PDFs — useful when only text changes matter and embedded graphics would otherwise add noise to the result.

## Example: Disable image comparison for PDFs

{{< tabs "disable-image-pdf">}}
{{< tab "disable_image_comparison_in_pdf.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions, ImagesInheritance

def disable_image_comparison_in_pdf():
    with Comparer("./source.pdf") as comparer:
        comparer.add("./target.pdf")
        options = CompareOptions()
        options.compare_images_pdf = False
        options.images_inheritance_mode = ImagesInheritance.TARGET
        comparer.compare("./result.pdf", options)

if __name__ == "__main__":
    disable_image_comparison_in_pdf()
```
{{< /tab >}}
{{< tab "source.pdf" >}}
{{< tab-text >}}
`source.pdf` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents/source.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.pdf" >}}
{{< tab-text >}}
`target.pdf` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents/target.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.pdf" >}}  
```text
Binary file (PDF, 279 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents/disable_image_comparison_in_pdf/result.pdf)
{{< /tab >}}
{{< /tabs >}}

Use case: speed up PDF comparisons and avoid noise from embedded graphics.

The result is as follows:

![](/comparison/python-net/images/disable-image-comparison-in-pdf-documents.png)

## When to disable image comparison

Disable image comparison when:

- **You only care about text edits.** Legal redlines, contract markup, and editorial review workflows usually treat embedded figures as visual context, not diff content.
- **The PDFs differ only in cosmetic backgrounds.** Scanned letterheads, watermarks, and stamps inflate the change count without surfacing meaningful differences.
- **You need a faster comparison.** Image diffing is the most expensive part of PDF comparison; skipping it can shave seconds off each comparison and is essential at high throughput.

Keep image comparison enabled when:

- **The PDFs are image-heavy** (scanned forms, technical drawings, presentations exported to PDF) — image diffs are the meaningful content.
- **You need pixel-accurate change overlays** combined with `calculate_coordinates = True`.

## `ImagesInheritance` values

When image comparison is disabled, `images_inheritance_mode` controls which document's images appear in the result PDF:

| Value | Behaviour |
|---|---|
| `ImagesInheritance.SOURCE` | The result PDF inherits images from the source document. |
| `ImagesInheritance.TARGET` | The result PDF inherits images from the target document. Useful when the target is the "newer" version and you want its visual layer. |
| `ImagesInheritance.AVERAGE` | A blended image is generated; appropriate only when the images differ only slightly. |

## Related topics

- [Compare PDF documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-pdf-documents" >}}) — base PDF-comparison flow.
- [Get changes coordinates]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-changes-coordinates" >}}) — when you keep image compare on and want overlay coordinates.
