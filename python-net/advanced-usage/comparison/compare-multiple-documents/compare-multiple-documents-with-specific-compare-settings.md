---
id: compare-multiple-documents-with-specific-compare-settings
url: comparison/python-net/compare-multiple-documents-with-specific-compare-settings
title: Compare multiple documents with specific compare settings
weight: 2
description: Learn how to compare multiple documents and customize options (e.g., styles, sensitivity) using GroupDocs.Comparison for Python via .NET.
keywords: compare multiple documents, style detection, comparison sensitivity, GroupDocs.Comparison Python
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
    name: How to compare multiple documents with specific compare settings in Python
    description: Learn how to compare multiple documents with specific compare settings in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Set compare options
        text: Create CompareOptions and adjust desired settings (styles, sensitivity, etc.).
      - name: Add target files
        text: Add multiple targets via add() calls.
      - name: Compare documents
        text: Call compare() with options and a result path.
---

Note: This feature applies to Microsoft Word documents, Microsoft PowerPoint, and OpenDocument presentations.

## Compare multiple documents (disk)

Add several targets and set styling for inserted items.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target1.docx")
    comparer.add("target2.docx")
    comparer.add("target3.docx")
    options = gc.CompareOptions()
    options.inserted_item_style = gc.StyleSettings(font_color=gc.Color.from_name("yellow"))
    comparer.compare("result.docx", options)
```

🔹 Use case: Aggregate changes across multiple proposal iterations into a single consolidated diff.

## Compare multiple documents (streams)

Perform the same operation using streams.

```python
import groupdocs.comparison as gc

with open("source.docx", "rb") as src,
     open("target1.docx", "rb") as t1,
     open("target2.docx", "rb") as t2,
     open("target3.docx", "rb") as t3:
    with gc.Comparer(src) as comparer:
        comparer.add(t1)
        comparer.add(t2)
        comparer.add(t3)
        options = gc.CompareOptions()
        options.inserted_item_style = gc.StyleSettings(font_color=gc.Color.from_name("yellow"))
        with open("result.docx", "wb") as out_stream:
            comparer.compare(out_stream, options)
```

🔹 Use case: Compare multiple contributions uploaded via API without persisting intermediate files.


