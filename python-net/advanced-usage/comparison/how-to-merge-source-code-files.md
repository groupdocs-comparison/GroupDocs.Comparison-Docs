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

# Merging Source Code Files in Python

GroupDocs.Comparison allows you to merge source code files by using the `ComparisonAction`property:

- `ComparisonAction.Accept` accepts the found changes and adds them to the file without highlighting
- `ComparisonAction.Reject` rejects the found changes and removes them from the output file

---

## Steps to apply or reject changes

1. Instantiate the `Comparer` object. Specify the source document path or stream.  
2. Call the `add` method. Specify the target document path or stream.  
3. Call the `compare` method.  
4. Call the `get_changes`) method to get the list of changes.  
5. Set the `comparison_action` property of the appropriate change object to either `ComparisonAction.ACCEPT` or `ComparisonAction.REJECT`.  
6. Call the `apply_changes` method. Pass the collection of changes to apply.  

---

## Example scenario

You need to compare and merge several versions of source code files and selectively accept or discard changes made by different authors.

**Before comparison:**  
![Source file](/comparison/python-net/images/how-to-merge-source-code-file-source.png)  
![Target file](/comparison/python-net/images/how-to-merge-source-code-file-target.png)

The differences show that two methods are in the **source.cs** file: `AddNumbers` and `Sum`.

If you do not use the `comparison_action` property, all changes are automatically applied to the output file, and these methods are removed. If you need to control the merging process, the `comparison_action` property helps you do that.

---

## Python example: merge two source code files

```python
import groupdocs.comparison as gc
from groupdocs.comparison.result import ComparisonAction
from groupdocs.comparison.options import ApplyChangeOptions

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare("result.docx")

    changes = comparer.get_changes()

    # Accept first 10 changes
    for i in range(min(10, len(changes))):
        changes[i].comparison_action = ComparisonAction.ACCEPT

    # Reject the rest
    for i in range(10, len(changes)):
        changes[i].comparison_action = ComparisonAction.REJECT

    options = ApplyChangeOptions()
    options.changes = changes
    with open("result.docx", "wb") as result_file:
        comparer.apply_changes(result_file, options)
```

---

## Result

As a result, you get a merged source code file where:  
- Deleted elements are marked in **red**
- Added elements are marked in **blue**
- Modified elements are marked in **green**

Also, you receive an HTML file that highlights all the changed places in the code.

| Result source code file                                                 | Result HTML file                                                          |
| ----------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| ![](/comparison/python-net/images/how-to-merge-source-code-file-result-CS.png) | ![](/comparison/python-net/images/how-to-merge-source-code-file-result-HTML.png) |

As you can see from the resulting files, only one of the two methods was removed.
