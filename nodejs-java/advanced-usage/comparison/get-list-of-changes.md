---
id: get-list-of-changes
url: comparison/nodejs-java/get-list-of-changes
title: Get a list of changes
weight: 6
description: "This article explains how to get a collection of changes between compared documents when using GroupDocs.Comparison for Node.js via Java."
keywords: Get file diff, documents diff, compare documents, compare files
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get a list of changes between the source and target documents.

The following code snippets show how to get a list of all changes:

## Get a list of changes from a local disk

The following example compares two local documents and then prints a detailed list of detected changes.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Create a Comparer instance for the source document on disk
const comparer = new groupdocs.Comparer('sample-files/source.docx');

// Add the target document to be compared against the source
comparer.add('sample-files/target.docx');

// Perform the comparison (no result file path is required for retrieving changes)
comparer.compare();

// Retrieve the array of ChangeInfo objects that describe each change
const changes = comparer.getChanges();

// Iterate through the collection and print details of every change
for (let index = 0; index < changes.length; index++) {
  const change = changes[index];

  const page = change.getPageInfo().getPageNumber(); // Page number where the change is located
  const type = change.getType().name();              // Type of change (Inserted, Deleted, etc.)
  const text = (change.getText() || '').trim();      // Normalized change text
  const src = (change.getSourceText() || '').trim(); // Text from the source document
  const tgt = (change.getTargetText() || '').trim(); // Text from the target document

  console.log(`[Page ${page}] ${type} "${text}", "${src}" -> "${tgt}"`);
}

// Exit the process when printing is finished
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and performs the comparison. It then retrieves all detected changes using `getChanges()` and iterates through the collection to extract and display detailed information about each change, including the page number, change type (Inserted, Deleted, etc.), the change text, and the source and target text fragments.

The result is as follows:

![](/comparison/nodejs-java/images/get-changes-list.png)

## Get a list of changes from a stream

The following example loads source and target documents from Java streams, compares them, and prints the list of changes.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import the Java bridge to work with FileInputStream
const java = require('java');
let InputStream = java.import('java.io.FileInputStream');

// Create input streams for the source and target documents
const sourceStream = new InputStream('sample-files/source.docx');
const targetStream = new InputStream('sample-files/target.docx');

// Create a Comparer instance using the source stream
const comparer = new groupdocs.Comparer(sourceStream);

// Add the target stream to be compared against the source
comparer.add(targetStream);

// Run the comparison to populate internal changes collection
comparer.compare();

// Retrieve the list of changes discovered during comparison
const changes = comparer.getChanges();

// Iterate through the collection and print detailed information about each change
for (let index = 0; index < changes.length; index++) {
  const change = changes[index];

  const page = change.getPageInfo().getPageNumber(); // Page number
  const type = change.getType().name();              // Change type
  const text = (change.getText() || '').trim();      // Combined change text
  const src = (change.getSourceText() || '').trim(); // Source text fragment
  const tgt = (change.getTargetText() || '').trim(); // Target text fragment

  console.log(`[Page ${page}] ${type} "${text}", "${src}" -> "${tgt}"`);
}

// Exit the process when all changes are printed
process.exit(0);
```

This example demonstrates the same workflow using Java input streams instead of file paths. It creates `InputStream` objects for both source and target documents, initializes the comparer with the source stream, adds the target stream, performs the comparison, and then retrieves and prints the list of changes with the same detailed information as the previous example.
