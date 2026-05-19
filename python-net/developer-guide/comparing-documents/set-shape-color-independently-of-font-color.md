---
id: set-shape-color-independently-of-font-color
url: comparison/python-net/developer-guide/comparing-documents/set-shape-color-independently-of-font-color
title: Set Shape Color Independently of Font Color
linkTitle: Shape color (independent)
weight: 23
description: "Highlight shape changes with a different colour than font changes when detecting style changes using GroupDocs.Comparison for Python via .NET."
keywords: shape color, font color, style settings, StyleSettings.shape_color, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/set-shape-color-independently-of-font-color/
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
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure style settings
        text: Set shape_color on each StyleSettings, plus detect_style_changes and mark_changed_content.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you colour shapes separately from text. Use `StyleSettings.shape_color` alongside `font_color` to emphasize shape modifications without altering text colour coding.

## Example: Different colours for shapes and fonts

{{< tabs "shape-color-independent">}}
{{< tab "set_shape_color_independently.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison import Color
from groupdocs.comparison.options import CompareOptions, StyleSettings


def set_shape_color_independently():
    options = CompareOptions()
    options.detect_style_changes = True
    options.mark_changed_content = True

    inserted = StyleSettings()
    inserted.font_color = Color.from_name("blue")
    inserted.shape_color = Color.from_name("purple")
    options.inserted_item_style = inserted

    deleted = StyleSettings()
    deleted.font_color = Color.from_name("red")
    deleted.shape_color = Color.from_name("orange")
    options.deleted_item_style = deleted

    changed = StyleSettings()
    changed.font_color = Color.from_name("green")
    changed.shape_color = Color.from_name("lightgreen")
    options.changed_item_style = changed

    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    set_shape_color_independently()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/set-shape-color-independently-of-font-color/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/set-shape-color-independently-of-font-color/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/set-shape-color-independently-of-font-color/set_shape_color_independently/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: emphasize shape modifications (e.g., diagrams) without altering text colour coding.

The result is as follows:

![](/comparison/python-net/images/set-shape-color-independently-of-font-color.png)

## When the distinction matters

`StyleSettings.font_color` controls the colour of *text runs* in the result. `StyleSettings.shape_color` controls the colour of *shape outlines and fills* — text frames, callouts, lines, autoshapes, diagram elements.

In documents that mix prose and diagrams (technical specs, contracts with embedded org charts, marketing decks with infographics), using a single colour for both makes shape changes hard to spot against the text-change highlights. Setting `shape_color` distinct from `font_color` gives you a visually obvious "this shape was modified" signal.

When the source/target only differ in text, set `font_color` only and skip `shape_color` — leaving it at the default keeps shapes visually neutral.

## Related topics

- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — the parent topic covering every `StyleSettings` property.
- [Compare PDF documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-pdf-documents" >}}) — PDFs often have shape content worth styling separately.
