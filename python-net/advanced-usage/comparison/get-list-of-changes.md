---
id: get-list-of-changes
url: comparison/python-net/get-list-of-changes
title: Get list of changes
weight: 6
description: Learn how to obtain a collection of detected changes using GroupDocs.Comparison for Python via .NET.
keywords: Get file diff, list of changes, compare documents, GroupDocs.Comparison Python
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
    name: How to get list of changes in Python
    description: Learn how to get the list of changes in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Compare documents
        text: Call compare() to generate the result and populate changes.
      - name: Get changes
        text: Call get_changes() to retrieve the collection of ChangeInfo.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you query the list of detected changes after a comparison.

## Get list of changes from local disk

Run a comparison and iterate over the resulting `ChangeInfo` objects.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare()
    changes = comparer.get_changes()
    for change in changes:
        print(f"Type: {change.type}, Page: {change.page_info.page_number}, Id: {change.id}, Text: {change.text}")
```

🔹 Use case: Build a custom report UI that lists all differences with pagination info.

## Get list of changes from stream

Compare from streams and retrieve the changes programmatically.

```python
import groupdocs.comparison as gc

with open("source.docx", "rb") as src, open("target.docx", "rb") as tgt:
    with gc.Comparer(src) as comparer:
        comparer.add(tgt)
        comparer.compare()
        changes = comparer.get_changes()
        for change in changes:
            print(f"Type: {change.type}, Page: {change.page_info.page_number}, Id: {change.id}, Text: {change.text}")
```

🔹 Use case: Integrate diff extraction into services that operate on file streams.


