---
id: adjusting-comparison-sensitivity
url: comparison/python-net/adjusting-comparison-sensitivity
title: Adjusting comparison sensitivity
weight: 2
description: Learn how to adjust comparison sensitivity to balance speed and accuracy using GroupDocs.Comparison for Python via .NET.
keywords: Comparison sensitivity, sensitivity level, tables sensitivity, GroupDocs.Comparison Python
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
    name: How to adjust comparison sensitivity in Python
    description: Learn how to adjust comparison sensitivity in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Configure sensitivity
        text: Set sensitivity_of_comparison and optionally sensitivity_of_comparison_for_tables.
      - name: Compare documents
        text: Call compare() with options to generate the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) supports sensitivity levels from 0 (fastest, least detailed) to 100 (slowest, most detailed).

## Adjust overall sensitivity

Increase sensitivity to detect smaller changes or reduce it for faster processing.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.sensitivity_of_comparison = 100
    comparer.compare("result.docx", options)
```

🔹 Use case: Maximize accuracy for legal or scientific documents where subtle edits matter.

## Adjust sensitivity for tables

Use a separate sensitivity value for tabular content.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.sensitivity_of_comparison = 100
    options.sensitivity_of_comparison_for_tables = 75
    comparer.compare("result.docx", options)
```

🔹 Use case: Tune detection granularity in tables while keeping overall sensitivity high.


