---
id: customize-changes-styles
url: comparison/python-net/customize-changes-styles
title: Customize changes styles
weight: 4
description: Learn how to customize the appearance of detected changes using GroupDocs.Comparison for Python via .NET.
keywords: Compare options, Style settings, Customize change styles, GroupDocs.Comparison for Python via .NET
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
    name: How to customize changes styles in Python
    description: Learn how to customize changes styles in Python step by step
    steps:
      - name: Create an object and load source file
        text: Instantiate the Comparer class and provide a source path or stream.
      - name: Load target file
        text: Add a target file path or stream using add().
      - name: Specify necessary settings
        text: Create CompareOptions and set InsertedItemStyle, DeletedItemStyle, and ChangedItemStyle.
      - name: Compare documents
        text: Call compare() with the options object and a result path or stream.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) provides a rich set of options to control the look of detected changes in the result document.

To compare two documents with custom change style settings, follow these steps:

1. Instantiate the `Comparer` object with a source path or stream.
2. Call `add()` and provide the target path or stream.
3. Instantiate `CompareOptions` and configure `InsertedItemStyle`, `DeletedItemStyle`, and `ChangedItemStyle`.
4. Call `compare()` with the options and a result path or stream.

## Compare documents from local disk with custom change styles

Configure custom highlight, font, and style settings for inserted, deleted, and changed items, then run the comparison to produce a styled result.

```python
import groupdocs.comparison as gc

source_path = "source.docx"
target_path = "target.docx"
result_path = "result.docx"

options = gc.CompareOptions()
options.inserted_item_style = gc.StyleSettings(
    highlight_color=gc.Color.from_name("red"),
    font_color=gc.Color.from_name("green"),
    is_underline=True,
    is_bold=True,
    is_strikethrough=True,
    is_italic=True,
)
options.deleted_item_style = gc.StyleSettings(
    highlight_color=gc.Color.from_name("azure"),
    font_color=gc.Color.from_name("brown"),
    is_underline=True,
    is_bold=True,
    is_strikethrough=True,
    is_italic=True,
)
options.changed_item_style = gc.StyleSettings(
    highlight_color=gc.Color.from_name("crimson"),
    font_color=gc.Color.from_name("firebrick"),
    is_underline=True,
    is_bold=True,
    is_strikethrough=True,
    is_italic=True,
)

with gc.Comparer(source_path) as comparer:
    comparer.add(target_path)
    comparer.compare(result_path, options)
```

🔹 Use case: Enforce corporate branding for change highlights in contract reviews.

## Compare documents from stream with custom change styles

Load documents as streams, apply custom `StyleSettings` for all change types, and write the styled result to a stream.

```python
import groupdocs.comparison as gc

options = gc.CompareOptions()
options.inserted_item_style = gc.StyleSettings(
    highlight_color=gc.Color.from_name("red"),
    font_color=gc.Color.from_name("green"),
    is_underline=True,
    is_bold=True,
    is_strikethrough=True,
    is_italic=True,
)
options.deleted_item_style = gc.StyleSettings(
    highlight_color=gc.Color.from_name("azure"),
    font_color=gc.Color.from_name("brown"),
    is_underline=True,
    is_bold=True,
    is_strikethrough=True,
    is_italic=True,
)
options.changed_item_style = gc.StyleSettings(
    highlight_color=gc.Color.from_name("crimson"),
    font_color=gc.Color.from_name("firebrick"),
    is_underline=True,
    is_bold=True,
    is_strikethrough=True,
    is_italic=True,
)

with open("source.docx", "rb") as src, open("target.docx", "rb") as tgt, open("result.docx", "wb") as out_stream:
    with gc.Comparer(src) as comparer:
        comparer.add(tgt)
        comparer.compare(out_stream, options)
```

The result document will highlight inserted, deleted, and changed items using your specified styles.

🔹 Use case: Process documents in memory (no temp files) while keeping brand-compliant styling.


