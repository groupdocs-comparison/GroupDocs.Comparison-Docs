---
id: save-comparison-result-in-different-format
url: comparison/python-net/save-comparison-result-in-different-format
title: Save comparison result in different format
weight: 30
description: Learn how to save the comparison result to different output formats using GroupDocs.Comparison for Python via .NET.
keywords: Save result format, Export comparison result, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
structuredData:
  showOrganization: true
  application:
    name: Save comparison result
    description: Save comparison output to a specific format in Python with GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to save comparison result in a different format in Python
    description: Learn step by step how to export result to desired format
    steps:
      - name: Create a Comparer instance
        text: Instantiate Comparer and load the source file.
      - name: Add target file(s)
        text: Add one or more target documents to compare.
      - name: Configure save options
        text: Set desired result format in CompareOptions.
      - name: Run comparison
        text: Call compare() to generate the result file.
---

Export the comparison result to a different format (e.g., PDF or HTML) by setting the desired output in `CompareOptions`.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")

    options = gc.CompareOptions()
    options.result_document_format = gc.FileFormat.PDF  # e.g., export result to PDF

    comparer.compare("result.pdf", options)
```

Supported output formats depend on the source file type. Common targets include DOCX, PDF, and HTML.

🔹 Use case: Deliver a PDF diff to stakeholders while keeping DOCX for editing.


