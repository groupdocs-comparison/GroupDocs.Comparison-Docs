---
id: compare-of-variables-and-document-properties
url: comparison/python-net/compare-of-variables-and-document-properties
title: Compare variables and document properties
weight: 11
description: Learn how to compare variable, built-in, and custom document properties using GroupDocs.Comparison for Python via .NET.
keywords: variables properties, built properties, custom properties, compare document properties, GroupDocs.Comparison Python
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
    name: How to compare variables and document properties in Python
    description: Learn how to compare variables and document properties in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Configure options
        text: Set CompareVariableProperty and CompareDocumentProperty to True.
      - name: Compare documents
        text: Call compare() with options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you compare Word document properties, including variable, built-in, and custom properties.

## Compare document properties

Enable property comparison to detect changes in metadata.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.compare_variable_property = True  # compare variable properties
    options.compare_document_property = True  # compare built and custom properties
    comparer.compare("result.docx", options)
```

🔹 Use case: Ensure key metadata values remain consistent across document versions.


