---
id: accept-or-reject-detected-changes
url: comparison/python-net/accept-or-reject-detected-changes
title: Accept or reject detected changes
weight: 1
description: Learn how to apply or discard detected changes and save the result using GroupDocs.Comparison for Python via .NET.
keywords: apply changes, reject changes, accept changes, applychanges, comparisonaction, GroupDocs.Comparison Python
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
    name: How to accept or reject detected changes in Python
    description: Learn how to accept or reject detected changes in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Compare and get changes
        text: Call compare(), then get_changes().
      - name: Accept or reject changes
        text: Set comparison_action to ACCEPT or REJECT for each change.
      - name: Apply changes
        text: Call apply_changes() with ApplyChangeOptions to produce the final file.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you programmatically accept or reject individual changes before producing the final result.

## Accept or reject changes (files on disk)

Compare files, update change actions, and apply them to the output.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare()
    changes = comparer.get_changes()

    # Example: reject the first change
    if changes:
        changes[0].comparison_action = gc.ComparisonAction.REJECT

    with open("result.docx", "wb") as out_stream:
        comparer.apply_changes(out_stream, gc.ApplyChangeOptions(changes=changes))
```

🔹 Use case: Remove undesired edits from the final deliverable while keeping approved changes.

The result is as follows:

|                            Accepted changes                             |                             Rejected changes                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/python-net/images/accepted-changes.png) | ![](/comparison/python-net/images/rejected-changes.png) |

## Accept or reject changes (streams)

Work entirely with streams and persist the merged result.

```python
import groupdocs.comparison as gc

with open("source.docx", "rb") as src, open("target.docx", "rb") as tgt:
    with gc.Comparer(src) as comparer:
        comparer.add(tgt)
        comparer.compare()
        changes = comparer.get_changes()
        if changes:
            changes[0].comparison_action = gc.ComparisonAction.REJECT
        with open("result.docx", "wb") as out_stream:
            comparer.apply_changes(out_stream, gc.ApplyChangeOptions(changes=changes))
```

🔹 Use case: Integrate approval workflows in services that don’t use local file paths.


