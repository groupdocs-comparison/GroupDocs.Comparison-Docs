---
id: compare-pdf-documents
url: comparison/python-net/developer-guide/comparing-documents/compare-pdf-documents
title: Compare PDF Documents
linkTitle: Compare PDF documents
weight: 3
description: "Compare PDF documents and detect text, formatting, and annotation differences using GroupDocs.Comparison for Python via .NET — ideal for contract and legal-document review workflows."
keywords: compare PDF, PDF comparison, GroupDocs.Comparison Python, document comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-pdf-documents/
structuredData:
  showOrganization: true
  application:
    name: Compare PDF Documents
    description: Compare PDF documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare PDF documents in Python
    description: Learn how to compare PDF documents in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source PDF file.
      - name: Add the target PDF document
        text: Add one or more PDF files using add().
      - name: Run comparison
        text: Call compare() with the result file path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) compares PDF documents and identifies changes in text, formatting, annotations, and structure. Typical use cases include contract review, legal-document comparison, and any workflow where precise difference detection is critical.

The API:

- Compares two or more **PDF files**.
- Highlights insertions, deletions, and formatting changes.
- Saves the comparison result to a new PDF or any other supported format.

## Steps to compare PDF documents

1. Create a `Comparer` instance and load the source PDF file.
2. Add one or more target PDF files via `add()`.
3. Call `compare()` with the result file path.

## Example: Compare PDF documents

{{< tabs "compare-pdf">}}
{{< tab "compare_pdf_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_pdf_documents():
    with Comparer("./source.pdf") as comparer:
        comparer.add("./target.pdf")
        comparer.compare("./result.pdf")

if __name__ == "__main__":
    compare_pdf_documents()
```
{{< /tab >}}
{{< tab "source.pdf" >}}
{{< tab-text >}}
`source.pdf` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-pdf-documents/source.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.pdf" >}}
{{< tab-text >}}
`target.pdf` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-pdf-documents/target.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.pdf" >}}  
```text
Binary file (PDF, 279 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-pdf-documents/compare_pdf_documents/result.pdf)
{{< /tab >}}
{{< /tabs >}}

## PDF-specific notes

- **Text vs. images.** By default, PDF comparison detects both text and embedded image changes. For text-only review, disable image comparison — see [Disable image comparison in PDF documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents" >}}). Text-only mode is faster and produces less visual noise when the PDFs differ only in scanned figures or watermarks.
- **Annotations and form fields.** GroupDocs.Comparison detects changes in PDF annotation text and form-field values alongside body text.
- **Page-level coordinates.** Set `calculate_coordinates = True` on `CompareOptions` to receive pixel-accurate change locations on each page — useful for overlay UIs. See [Get changes coordinates]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-changes-coordinates" >}}).
- **Password-protected PDFs.** Pass a `LoadOptions` with `password` set — see [Load password-protected documents]({{< ref "comparison/python-net/developer-guide/loading-documents/load-password-protected-documents" >}}).

## Related topics

- [Disable image comparison in PDF documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/disable-image-comparison-in-pdf-documents" >}}) — skip image comparison for faster PDF diffs.
- [Get changes coordinates]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-changes-coordinates" >}}) — pixel coordinates for each detected change.
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — change highlight colours.
- [Save comparison result in a different format]({{< ref "comparison/python-net/developer-guide/saving-results/save-comparison-result-in-different-format" >}}) — export a PDF diff to DOCX or HTML for review tools that don't render PDF inline.
