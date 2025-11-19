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
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get revisions from a DOCX file format, process, and save the processing result.

The main properties of the `ApplyRevisionOptions` class are as follows:

*   `Changes` is a list of revision changes that need to be applied to the final document
*   `CommonHandler` allows you to define one action to handle all revision

If you do not specify the path or file to the output document for the `applyRevisionChanges` method, the source file is rewritten.

The following code snippets show how to get revisions from a document, accept or reject the detected revisions and save changes to the output document:

## Accept or Reject revisions from a local disk

The following example loads a DOCX file from disk, accepts all insertion revisions, and saves the updated document.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Initialize RevisionHandler for the source document
const revisionHandler = new groupdocs.RevisionHandler('sample-files/revision.docx');

// Retrieve all revisions from the document
const revisionList = revisionHandler.getRevisions();

// Iterate through each revision and accept insertions
for (let i = 0; i < revisionList.length; i++) {
  const revision = revisionList[i];

  // If the revision type is an insertion, set its action to ACCEPT
  if (revision.getType() === groupdocs.RevisionType.INSERTION) {
    // Mark insertion revision for acceptance
    revision.setAction(groupdocs.RevisionAction.ACCEPT);
  }
}

// Prepare options for applying revisions
const revisionOptions = new groupdocs.ApplyRevisionOptions();

// Assign the modified revision list to the options
revisionOptions.setChanges(revisionList);

// Apply the revision changes and save the result to a new file
revisionHandler.applyRevisionChanges('sample-files/result.docx', revisionOptions);

// Exit the process
process.exit(0);
```

This example creates a `RevisionHandler` instance with the source document path, retrieves all revisions using `getRevisions()`, and iterates through them to identify insertion-type revisions. It marks insertion revisions for acceptance using `setAction(RevisionAction.ACCEPT)`, creates an `ApplyRevisionOptions` object with the modified revision list, and applies the changes to save a new document where all insertion revisions have been accepted.

## Accept or Reject revisions from a stream

The following example performs the same operation using a Java input stream as the revision source and writes the result to an output stream.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Load Java integration module for file streams
const java = require('java');
let InputStream = java.import('java.io.FileInputStream');
let OutputStream = java.import('java.io.FileOutputStream');

// Create input stream for the source document that contains revisions
const revisionInputStream = new InputStream('sample-files/revision.docx');

// Initialize RevisionHandler with the source document stream
const revisionHandler = new groupdocs.RevisionHandler(revisionInputStream, groupdocs.FileType.DOCX);

// Retrieve all revisions from the document
const revisionList = revisionHandler.getRevisions();

// Iterate through revisions and accept all insertions
for (let i = 0; i < revisionList.length; i++) {
  const revision = revisionList[i];

  // Check if the revision is an insertion type
  if (revision.getType() === groupdocs.RevisionType.Insertion) {
    // Mark the insertion revision to be accepted
    revision.setAction(groupdocs.RevisionAction.Accept);
  }
}

// Prepare output stream for the document after applying revisions
const resultOutputStream = new OutputStream('result-document.docx');

// Configure options with the modified revision list
const revisionOptions = new groupdocs.ApplyRevisionOptions(revisionList);

// Apply the revision changes and write the result to the output stream
revisionHandler.applyRevisionChanges(resultOutputStream, revisionOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates the same workflow using Java input and output streams instead of file paths. It creates a `RevisionHandler` with an input stream and the document file type, retrieves revisions, marks insertion revisions for acceptance, and creates an `ApplyRevisionOptions` object initialized directly with the revision list. The `applyRevisionChanges()` method is then called with an output stream to write the processed document directly to a stream without intermediate file operations.

## Accept or Reject all revisions

The following example shows how to accept all revisions in a document using a single common handler action.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import Java classes for file input stream handling
const java = require('java');
const InputStream = java.import('java.io.FileInputStream');

// Define file paths for input revision document and output result document
const revisionFile = 'sample-files/revision.docx';
const resultFile = 'sample-files/result.docx';

// Create a file input stream from the revision document
const revisionStream = new InputStream(revisionFile);

// Initialize RevisionHandler with the revision file stream and document type
const revisionHandler = new groupdocs.RevisionHandler(revisionStream, groupdocs.FileType.DOCX);

// Create ApplyRevisionOptions instance
const ApplyRevisionOptions = groupdocs.ApplyRevisionOptions;
const applyOptions = new ApplyRevisionOptions();

// Set the common handler to Accept all revisions
// This applies the Accept action to all revisions in the document
applyOptions.setCommonHandler(groupdocs.RevisionAction.Accept);

// Apply the revision changes to the result file using the configured options
revisionHandler.applyRevisionChanges(resultFile, applyOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example shows a simplified approach for processing all revisions at once. It creates a `RevisionHandler` with a revision document stream and file type, creates an `ApplyRevisionOptions` object, and uses `setCommonHandler(RevisionAction.Accept)` to apply a single action to all revisions without needing to iterate through them individually. This is more efficient when you want to accept or reject all revisions uniformly.

## Result of revision processing

Below are the source and output files based on the code presented earlier.

| Source file                                   | Result file                                          |
| --------------------------------------------- | ---------------------------------------------------- |
| ![](/comparison/nodejs-java/images/revision-file.png) | ![](/comparison/nodejs-java/images/result-revision-file.png) |
