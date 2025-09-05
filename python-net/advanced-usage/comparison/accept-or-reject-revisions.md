---
id: accept-or-reject-revisions
title: Accept or Reject revisions
toc: true
url: comparison/python-net/accept-or-reject-revisions
weight: 5
draft: true
description: Learn how to apply or discard revisions detected during
  document comparison using GroupDocs.Comparison for Python via .NET.
hideChildren: false
keywords: Revision, revision processing, accept or reject revision,
  apply change for revision, GroupDocs.Comparison for Python via .NET
productName: GroupDocs.Comparison for Python via .NET
structuredData:
  application:
    description: Compare documents natively with high performance using
      Python language and GroupDocs.Comparison for Python via .NET
    name: Document Comparison
    productCode: comparison
    productPlatform: python-net
  howTo:
    description: Learn how to accept or reject revisions in Python step
      by step
    name: How to accept or reject revisions in Python
    steps:
    - name: Create an object
      text: Create an object of RevisionHandler class. The constructor
        takes the revision path or the revision file stream.
    - name: Get revisions
      text: Call the get_revisions method of the RevisionHandler object
        and assign the value to a list of RevisionInfo.
    - name: Accept or Reject revisions
      text: For each revision, set its action property to either Accept
        or Reject depending on your criteria.
    - name: Apply revision changes
      text: To apply changes, call the apply_revision_changes method of
        the RevisionHandler object with the output file path and
        ApplyRevisionOptions containing the changes.
  showOrganization: true
  showVideo: true
---



# Accept or Reject revisions in Python

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) allows you to extract revisions from a DOCX file, process them, and save the updated result.

To accept or reject revisions in a document, follow these steps:

1.  Instantiate the `RevisionHandler` object and provide the source document.
2.  Call the `get_revisions()` method to retrieve a list of revisions.
3.  For each revision, set its `action` property to `Accept` or `Reject`.
4.  Call `apply_revision_changes()` to apply the updates and save the result.


## Example: Accept or Reject revisions from a local file

``` python
import groupdocs.comparison as gc
from groupdocs.comparison.words.revision import RevisionHandler, RevisionAction, ApplyRevisionOptions

source_path = "Document_with_revision.docx"
result_path = "result.docx"

with RevisionHandler(source_path) as revision_handler:
    revisions = revision_handler.get_revisions()

    # Accept insertions, reject others
    for revision in revisions:
        if revision.type == "Insertion":
            revision.action = RevisionAction.Accept
        else:
            revision.action = RevisionAction.Reject

    options = ApplyRevisionOptions()
    options.changes = revisions

    revision_handler.apply_revision_changes(result_path, options)
```

## Example: Accept or Reject revisions from a stream

``` python
import groupdocs.comparison as gc
from groupdocs.comparison.words.revision import RevisionHandler, RevisionAction, ApplyRevisionOptions

source_stream = open("Document_with_revision.docx", "rb")
result_path = "result.docx"

with RevisionHandler(source_stream) as revision_handler:
    revisions = revision_handler.get_revisions()

    for revision in revisions:
        if revision.type == "Insertion":
            revision.action = RevisionAction.Accept

    options = ApplyRevisionOptions()
    options.changes = revisions

    revision_handler.apply_revision_changes(result_path, options)
```



## Example: Accept or Reject all revisions

``` python
import groupdocs.comparison as gc
from groupdocs.comparison.words.revision import RevisionHandler, RevisionAction, ApplyRevisionOptions

source_path = "Document_with_revision.docx"
result_path = "result.docx"

with RevisionHandler(source_path) as revision_handler:
    options = ApplyRevisionOptions()
    options.common_handler = RevisionAction.Accept

    revision_handler.apply_revision_changes(result_path, options)
```