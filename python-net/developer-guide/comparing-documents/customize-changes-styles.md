---
id: customize-changes-styles
url: comparison/python-net/developer-guide/comparing-documents/customize-changes-styles
title: Customize Changes Styles
linkTitle: Customize changes styles
weight: 13
description: "Customize the highlight colour, font colour, and text decorations of inserted, deleted, and changed items in comparison results with GroupDocs.Comparison for Python via .NET."
keywords: compare options, style settings, customize change styles, StyleSettings, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/customize-changes-styles/
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
      - name: Create a Comparer and load the source
        text: Instantiate Comparer with a source path or stream.
      - name: Load the target
        text: Add the target via add().
      - name: Configure styles
        text: Create CompareOptions and set inserted_item_style, deleted_item_style, and changed_item_style.
      - name: Compare documents
        text: Call compare() with the options and a result path or stream.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you customize how inserted, deleted, and changed items are rendered in the result document — highlight colour, font colour, bold, italic, underline, and strikethrough.

To customize change styles:

1. Instantiate a `Comparer` with a source path or stream.
2. Call `add()` with the target.
3. Create a `CompareOptions` instance and configure `inserted_item_style`, `deleted_item_style`, and `changed_item_style` with `StyleSettings`.
4. Call `compare()` with the options and a result path or stream.

## Example 1: Custom change styles (file paths)

{{< tabs "customize-styles-path">}}
{{< tab "customize_changes_styles.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison import Color
from groupdocs.comparison.options import CompareOptions, StyleSettings


def customize_changes_styles():
    options = CompareOptions()

    inserted = StyleSettings()
    inserted.font_color = Color.from_name("green")
    inserted.highlight_color = Color.from_name("red")
    inserted.is_underline = True
    inserted.is_bold = True
    options.inserted_item_style = inserted

    deleted = StyleSettings()
    deleted.font_color = Color.from_name("brown")
    deleted.highlight_color = Color.from_name("azure")
    deleted.is_strikethrough = True
    options.deleted_item_style = deleted

    changed = StyleSettings()
    changed.font_color = Color.from_name("firebrick")
    changed.highlight_color = Color.from_name("crimson")
    changed.is_italic = True
    options.changed_item_style = changed

    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    customize_changes_styles()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/customize-changes-styles/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/customize-changes-styles/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/customize-changes-styles/customize_changes_styles/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: enforce corporate branding for change highlights in contract reviews.

## Example 2: Custom change styles (streams)

The same styling, but operating entirely through streams:

{{< tabs "customize-styles-stream">}}
{{< tab "customize_changes_styles_stream.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison import Color
from groupdocs.comparison.options import CompareOptions, StyleSettings


def customize_changes_styles_stream():
    options = CompareOptions()
    options.inserted_item_style = StyleSettings()
    options.inserted_item_style.font_color = Color.from_name("green")
    options.inserted_item_style.is_underline = True

    options.deleted_item_style = StyleSettings()
    options.deleted_item_style.is_strikethrough = True

    options.changed_item_style = StyleSettings()
    options.changed_item_style.is_italic = True

    with open("./source.docx", "rb") as source_stream, \
         open("./target.docx", "rb") as target_stream, \
         open("./result.docx", "wb") as out_stream:
        with Comparer(source_stream) as comparer:
            comparer.add(target_stream)
            comparer.compare(out_stream, options)

if __name__ == "__main__":
    customize_changes_styles_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/customize-changes-styles/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/customize-changes-styles/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/customize-changes-styles/customize_changes_styles_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: process documents fully in memory (no temp files) while keeping brand-compliant styling.
