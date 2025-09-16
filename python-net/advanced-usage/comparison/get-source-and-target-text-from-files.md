---
id: get-source-and-target-text-from-files
url: comparison/python-net/get-source-and-target-text-from-files
title: Get source and target text from files
weight: 7
description: Learn how to read source and target texts of detected changes using GroupDocs.Comparison for Python via .NET.
keywords: Source text, Target text, Extended summary, GroupDocs.Comparison Python
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
    name: How to get source and target text in Python
    description: Learn how to get source and target text in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Compare documents
        text: Call compare() and get_changes().
      - name: Output the changes text
        text: Read source_text and target_text for each change.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) provides access to the source and target text for each detected change.

## Get source and target text from local disk

Compare two files and print the source/target text for each change.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare("result.docx")
    changes = comparer.get_changes()
    for change in changes:
        print()
        print("Source text:", change.source_text)
        print("Target text:", change.target_text)
```

🔹 Use case: Extract changed text pairs to power side-by-side diff review tools.

The result is as follows:

![](/comparison/python-net/images/get-source-and-target-text-from-files.png)


## Get source and target text from stream

Work directly with streams and retrieve the same data programmatically.

```python
import groupdocs.comparison as gc

with open("source.docx", "rb") as src, open("target.docx", "rb") as tgt:
    with gc.Comparer(src) as comparer:
        comparer.add(tgt)
        comparer.compare("result.docx")
        changes = comparer.get_changes()
        for change in changes:
            print()
            print("Source text:", change.source_text)
            print("Target text:", change.target_text)
```

🔹 Use case: Feed structured change text into analytics or translation workflows.


