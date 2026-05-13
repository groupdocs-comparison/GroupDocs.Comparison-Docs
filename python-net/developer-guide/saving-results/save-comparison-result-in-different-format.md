---
id: save-comparison-result-in-different-format
url: comparison/python-net/developer-guide/saving-results/save-comparison-result-in-different-format
title: Save Comparison Result in a Different Format
linkTitle: Save in different format
weight: 30
description: "Export the comparison result to a different format (e.g., DOCX → PDF) using GroupDocs.Comparison for Python via .NET."
keywords: save result format, export comparison result, result file format, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/save-comparison-result-in-different-format/
    - /comparison/python-net/advanced-usage/saving/save-comparison-result-in-different-format/
structuredData:
  showOrganization: true
  application:
    name: Save Comparison Result
    description: Save comparison output to a specific format in Python with GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to save the comparison result in a different format in Python
    description: Learn step by step how to export the result to the desired format
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer and load the source file.
      - name: Add the target
        text: Add one or more target documents.
      - name: Call compare with the desired result extension
        text: Pass a result file path whose extension matches the desired output format.
---

The simplest way to control the output format of a comparison is to pick a result file path with the matching extension. GroupDocs.Comparison infers the output format from the extension and produces a result file in that format.

## Example: Export a DOCX vs DOCX diff to PDF

{{< tabs "save-different-format">}}
{{< tab "save_comparison_result_in_different_format.py" >}}
```python
from groupdocs.comparison import Comparer

def save_comparison_result_in_different_format():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        # Output is inferred from the file extension — .pdf in this case.
        comparer.compare("./result.pdf")

if __name__ == "__main__":
    save_comparison_result_in_different_format()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/save-comparison-result-in-different-format/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/save-comparison-result-in-different-format/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.pdf" >}}  
```text
Binary file (PDF, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/saving-results/save-comparison-result-in-different-format/save_comparison_result_in_different_format/result.pdf)
{{< /tab >}}
{{< /tabs >}}

Supported output formats depend on the source file type. Common targets include DOCX, PDF, and HTML.

Use case: deliver a PDF diff to stakeholders while keeping DOCX for editing.
