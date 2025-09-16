---
id: set-shape-color-independently-of-font-color
url: comparison/python-net/set-shape-color-independently-of-font-color
title: Set shape color independently of font color
weight: 16
description: Learn how to set shape color independently of font color for detected changes using GroupDocs.Comparison for Python via .NET.
keywords: style changes, shapes, shape color, style settings, GroupDocs.Comparison Python
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
    name: How to set shape color independently of font color in Python
    description: Learn how to set shape color independently of font color in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Configure style settings
        text: Set StyleSettings.ShapeColor and enable DetectStyleChanges and MarkChangedContent.
      - name: Compare documents
        text: Call compare() with options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you control colors for shapes separately from font colors.

## Set shape color for detected changes

Enable style detection and specify separate shape colors per change type.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.detect_style_changes = True
    options.mark_changed_content = True
    options.inserted_item_style = gc.StyleSettings(
        font_color=gc.Color.from_name("blue"),
        shape_color=gc.Color.from_name("purple"),
    )
    options.deleted_item_style = gc.StyleSettings(
        font_color=gc.Color.from_name("red"),
        shape_color=gc.Color.from_name("orange"),
    )
    options.changed_item_style = gc.StyleSettings(
        font_color=gc.Color.from_name("green"),
        shape_color=gc.Color.from_name("lightgreen"),
    )
    comparer.compare("result.docx", options)
```

🔹 Use case: Emphasize shape modifications (e.g., diagrams) without altering text color coding.


The result is as follows:

![](/comparison/net/images/set-shape-color-independently-of-font-color.png)
