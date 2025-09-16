---
id: word-track-changes
url: comparison/python-net/word-track-changes
title: Work with Word Track Changes
weight: 30
description: Learn how to compare Word documents while respecting Track Changes using GroupDocs.Comparison for Python via .NET.
keywords: Track Changes, Word revisions, Compare DOCX with revisions, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
structuredData:
  showOrganization: true
  application:
    name: Compare Word documents with revisions
    description: Compare Word documents that contain Track Changes using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare Word documents with Track Changes in Python
    description: Learn how to compare Word documents with revisions step by step
    steps:
      - name: Create comparer and load source DOCX
        text: Instantiate Comparer and load the source file.
      - name: Add target DOCX
        text: Add the target file to the comparer.
      - name: Configure options
        text: Use CompareOptions to include or ignore revisions.
      - name: Compare and save
        text: Call compare() to produce the result file.
---

By default, GroupDocs.Comparison can include or ignore Word Track Changes (revisions) during comparison. Use `CompareOptions` to control this behavior.

## Example: Include Word revisions during comparison

Enable the comparison engine to detect and include tracked revisions (changes, comments, insertions, deletions) from Word documents when generating the comparison result. This ensures that any previously tracked changes are not lost during the comparison process.

```python
import groupdocs.comparison as gc

with gc.Comparer("source-with-revisions.docx") as comparer:
    comparer.add("target.docx")

    options = gc.CompareOptions()
    options.word_track_changes = True  # include tracked revisions

    comparer.compare("result.docx", options)
```

🔹Enable the comparison engine to detect and include tracked revisions (changes, comments, insertions, deletions) from Word documents when generating the comparison result. This ensures that any previously tracked changes are not lost during the comparison process.

## Example: Ignore Word revisions during comparison

Compare only the final text and ignore previously tracked revisions so historical edits do not affect the diff.

```python
import groupdocs.comparison as gc

with gc.Comparer("source-with-revisions.docx") as comparer:
    comparer.add("target.docx")

    options = gc.CompareOptions()
    options.word_track_changes = False  # ignore tracked revisions

    comparer.compare("result.docx", options)
```

🔹 Use case: Produce a clean diff focused on current content for executive review.

Note: Availability of particular options may depend on the document format and library version.

The result is as follows:

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/python-net/images/word-track-changes-option-true.png) |




|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/python-net/images/word-track-changes-option-false.png) |


