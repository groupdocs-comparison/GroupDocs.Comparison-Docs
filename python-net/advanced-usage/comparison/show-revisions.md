---
id: show-revisions
url: comparison/python-net/show-revisions
title: Show revisions
weight: 14
description: Learn how to control the display of revisions in the output using GroupDocs.Comparison for Python via .NET.
keywords: ShowRevisions, revisions view, compare options, GroupDocs.Comparison Python
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
    name: How to show revisions in Python
    description: Learn how to show or hide revisions in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target file
        text: Add the target path or stream using add().
      - name: Configure options
        text: Set ShowRevisions = False to hide revisions in the result.
      - name: Compare documents
        text: Call compare() with the options to generate the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you toggle the visibility of revisions in the output document.

## Hide revisions in the result

Turn off revision display to simplify the output document.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.show_revisions = False
    comparer.compare("result.docx", options)
```

🔹 Use case: Produce a clean deliverable without inline revision markers for end users.

The result is as follows:

|              Disable display Revisions               |
| :--------------------------------------------------: |
| ![](/comparison/python-net/images/show-revisions-false.png) |


