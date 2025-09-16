---
id: compare-bookmarks-in-word
url: comparison/python-net/compare-bookmarks-in-word
title: Compare bookmarks in Word documents
weight: 12
description: Learn how to compare bookmarks in Word documents using GroupDocs.Comparison for Python via .NET.
keywords: bookmarks, Word, DOCX, compare bookmarks, CompareBookmarks, GroupDocs.Comparison Python
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
    name: How to compare bookmarks in Word documents in Python
    description: Learn how to compare bookmarks in Word documents in Python step by step
    steps:
      - name: Create comparer and load source DOCX
        text: Instantiate Comparer with a Word source path or stream.
      - name: Add target DOCX
        text: Add the target Word document.
      - name: Configure options
        text: Set CompareBookmarks = True in CompareOptions.
      - name: Compare documents
        text: Call compare() with options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) supports bookmark comparison in Word documents.

## Enable bookmark comparison

Turn on bookmark comparison to detect differences in bookmarked ranges.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.compare_bookmarks = True
    comparer.compare("result.docx", options)
```

🔹 Use case: Validate that critical bookmarked sections (e.g., clauses) remain unchanged.

The result is as follows:

![](/comparison/python-net/images/compared-bookmarks.png)


