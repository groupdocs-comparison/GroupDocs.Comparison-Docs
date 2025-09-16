---
id: get-changes-coordinates
url: comparison/python-net/get-changes-coordinates
title: Get changes coordinates
weight: 5
description: Learn how to obtain coordinates for detected changes on page previews using GroupDocs.Comparison for Python via .NET.
keywords: Changes coordinates, preview images, highlight changes, GroupDocs.Comparison Python
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
    name: How to get changes coordinates in Python
    description: Learn how to get changes coordinates in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target file
        text: Add the target path or stream using add().
      - name: Configure options
        text: Set CalculateCoordinates = True in CompareOptions.
      - name: Compare and get changes
        text: Call compare(), then get_changes() and read Box coordinates.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can compute coordinates for each detected change, allowing you to overlay highlights on preview images.

## Get coordinates for detected changes

Enable coordinate calculation and inspect the `Box` values from each change.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.calculate_coordinates = True
    comparer.compare(options)
    changes = comparer.get_changes()
    for change in changes:
        print(f"Type: {change.type}, X: {change.box.x}, Y: {change.box.y}, Text: {change.text}")
```

🔹 Use case: Draw bounding boxes over preview images to visualize change locations.

The result is as follows:

![](/comparison/python-net/images/get-changes-coordinates.png)


