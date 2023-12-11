---
id: accept-or-reject-revisions
url: comparison/nodejs-java/accept-or-reject-revisions
title: Accept or Reject revisions
weight: 5
description: "Following this guide, you will learn how to apply or discard revisions found during document comparison using built-in Microsoft Word functionality."
keywords: Revision, revision processing, accept or reject revision, apply change for revision
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: How to accept or Reject revisions  in Java
    description: Learn how to accept or Reject revisions in Java step by step
    steps:
      - name: Create an object
        text: Create an object of RevisionHandler class. The constructor takes the revision path or the revision file stream.
      - name: Get revision
        text: Call the GetRevisions method of the RevisionHandler object and asign the value to RevisionInfo list.
      - name: Accept or Reject revision
        text: If list element type equals Insertion value of RevisionType enum then Accept value of the RevisionAction enum asign to Action field of the element.
      - name: Apply revision changes
        text: To apply changes call the method ApplyRevisionChanges of the RevisionHandler object. The method takes a file path parameter of the resulting file and object of ApplyRevisionOptions class which should contains a Changes field initialised by RevisionInfo list.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get revisions from a Docx file format, process, and save the processing result.
To take revisions from a document, accept / reject revisions, and write the processing result to the output file, follow these steps:

1.  Instantiate the [RevisionHandler](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionhandler/) object. Specify the source document path or stream.
2.  Call the [getRevisions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionhandler/#getRevisions--) method to get the revision list.
3.  Call the [setAction](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisioninfo/#getAction--) property of the object to be changed. Specify the [RevisionAction.ACCEPT](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionaction/#ACCEPT) or [RevisionAction.REJECT](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionaction/#REJECT) value.
4.  Call the [applyRevisionChanges](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionhandler/#applyRevisionChanges-com.groupdocs.comparison.words.revision.ApplyRevisionOptions-) method. Specify the created instance of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/applyrevisionoptions/) class and path or stream of the output document, collecting changes in the revisions.

You can process all changes together within one action.To handle all changes at once, follow these steps:

1.  Instantiate the [RevisionHandler](https://reference.groupdocs.com/comparison/nodejs-java/groupdocs.comparison.words.revision/revisionhandler) object. Specify the source document path or stream.
2.  Call the [applyRevisionChanges](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionhandler/#applyRevisionChanges-com.groupdocs.comparison.words.revision.ApplyRevisionOptions-) method. Specify the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/applyrevisionoptions/) object and one of the ([RevisionAction.Accept](https://reference.groupdocs.com/comparison/nodejs-java/groupdocs.comparison.words.revision/revisionaction), [RevisionAction.Reject](https://reference.groupdocs.com/comparison/nodejs-java/groupdocs.comparison.words.revision/revisionaction) or [RevisionAction.NONE](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionaction/#NONE)) values.

The main properties of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/applyrevisionoptions/) class are as follows:

*   [Changes](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/applyrevisionoptions/#getChanges--) is a list of revision changes that need to be applied to the final document
*   [CommonHandler](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/applyrevisionoptions/#getCommonHandler--) allows you to define one action to handle all revision

If you do not specify the path or file to the output document for the [applyRevisionChanges](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.words.revision/revisionhandler/#applyRevisionChanges-com.groupdocs.comparison.words.revision.ApplyRevisionOptions-) method, the source file is rewritten.

The following code snippets show how to get revisions from a document, accept / reject detected revisions and save changes to the output document:

## Accept or Reject revisions from local disk

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
try {
  const revisionHandler = new groupdocs.comparison.RevisionHandler(withRevisionFile)
  List<RevisionInfo> revisionList = revisionHandler.getRevisions();
  for (RevisionInfo revision : revisionList) {
      if (revision.getType() == groupdocs.comparison.RevisionType.INSERTION) {
          revision.setAction(groupdocs.comparison.RevisionAction.Accept);
      }
  }
  const revisionOptions = new groupdocs.comparison.ApplyRevisionOptions();
  revisionOptions.setChanges(revisionList);
  revisionHandler.applyRevisionChanges(resultFile, revisionOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Accept or Reject revisions from stream

{{< tabs "example2">}}
{{< tab "Javascript" >}}
```javascript
try {
  const revisionHandler = new groupdocs.comparison.RevisionHandler(withRevisionInputStream)
  List<RevisionInfo> revisionList = revisionHandler.getRevisions();
  for (RevisionInfo revision : revisionList) {
      if (revision.getType() == groupdocs.comparison.RevisionType.Insertion) {
          revision.setAction(groupdocs.comparison.RevisionAction.Accept);
      }
  }
  const revisionOptions = new groupdocs.comparison.ApplyRevisionOptions(revisionList);
  revisionHandler.applyRevisionChanges(resultOutputStream, revisionOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Accept or Reject all revisions

{{< tabs "example3">}}
{{< tab "Javascript" >}}
```javascript
try {
  const revisionHandler = new groupdocs.comparison.RevisionHandler(withRevisionFile)
  const revisionOptions = new groupdocs.comparison.ApplyRevisionOptions();
  revisionOptions.setCommonHandler(groupdocs.comparison.RevisionAction.Accept);
  revisionHandler.applyRevisionChanges(resultFile, revisionOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Result of revision processing

Below are the source and output files based on the code presented earlier.

| Source file                                   | Result file                                          |
| --------------------------------------------- | ---------------------------------------------------- |
| ![](/comparison/nodejs-java/images/revision-file.png) | ![](/comparison/nodejs-java/images/result-revision-file.png) |
