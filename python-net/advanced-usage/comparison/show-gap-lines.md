---
id: show-gap-lines
url: comparison/python-net/show-gap-lines
title: Show gap lines instead of changes
weight: 15
description: Learn how to replace changed content with empty lines using GroupDocs.Comparison for Python via .NET.
keywords: LeaveGaps, gap lines, empty lines, GroupDocs.Comparison Python
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
    name: How to show gap lines instead of changes in Python
    description: Step-by-step to show gap lines instead of changes in Python
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Configure options
        text: Set ShowInsertedContent = False, ShowDeletedContent = False, and LeaveGaps = True.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you adjust the output appearance by replacing changed content with empty lines.

## Replace changes with gap lines

Disable inserted/deleted content in the result and leave gaps where changes occurred.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.show_inserted_content = False
    options.show_deleted_content = False
    options.leave_gaps = True
    comparer.compare("result.docx", options)
```

🔹 Use case: Provide redacted-style diffs that keep layout alignment without showing actual changed text.

The result is as follows:

|                        Default result                         |                Result without LeaveGaps property                 |
| :-----------------------------------------------------------: | :--------------------------------------------------------------: |
| ![](/comparison/python-net/images/show-gap-lines-default-result.png) | ![](/comparison/python-net/images/show-gap-lines-without-leavegaps.png) |

|                        Default result                         |                Result with LeaveGaps property                 |
| :-----------------------------------------------------------: | :-----------------------------------------------------------: |
| ![](/comparison/python-net/images/show-gap-lines-default-result.png) | ![](/comparison/python-net/images/show-gap-lines-with-leavegaps.png) |


