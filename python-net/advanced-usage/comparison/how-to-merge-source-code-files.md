---
id: how-to-merge-source-code-files
url: comparison/python-net/how-to-merge-source-code-files
title: How to merge source code files
weight: 8
description: Learn how to accept or reject detected changes and apply them to the result using GroupDocs.Comparison for Python via .NET.
keywords: merge code, accept changes, reject changes, apply changes, GroupDocs.Comparison Python
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
    name: How to merge source code files in Python
    description: Learn how to merge source code files in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Compare and get changes
        text: Call compare(), then get_changes().
      - name: Accept/Reject changes
        text: Set comparison_action on each change to Accept or Reject.
      - name: Apply changes
        text: Call apply_changes() with ApplyChangeOptions to produce the merged file.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you control merging by accepting or rejecting individual changes before applying them.

## Merge changes programmatically

Accept or reject changes and apply them into a final document.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare("result.docx")

    changes = comparer.get_changes()
    for index, change in enumerate(changes):
        if index < 10:
            change.comparison_action = gc.ComparisonAction.ACCEPT
        else:
            change.comparison_action = gc.ComparisonAction.REJECT

    apply_options = gc.ApplyChangeOptions()
    apply_options.changes = changes
    with open("result.docx", "wb") as out_stream:
        comparer.apply_changes(out_stream, apply_options)
```

🔹 Use case: Curate diffs in code or text files to retain intended edits and discard noise.


