---
id: setting-author-of-changes
url: comparison/python-net/setting-author-of-changes
title: Setting author of changes
weight: 16
description: Learn how to set the author name for revisions in the result using GroupDocs.Comparison for Python via .NET.
keywords: RevisionAuthorName, author, revisions, GroupDocs.Comparison Python
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
    name: How to set author of changes in Python
    description: Step-by-step to set revision author name in Python
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Configure options
        text: Enable WordTrackChanges and ShowRevisions and set RevisionAuthorName.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) allows you to set the revision author name for changes in the result.

## Set revision author name

Enable revisions, track Word changes, and set the author name to appear in the result.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.show_revisions = True
    options.word_track_changes = True
    options.revision_author_name = "New author"
    comparer.compare("result.docx", options)
```

🔹 Use case: Attribute changes to a specific reviewer or automated system in audit trails.


