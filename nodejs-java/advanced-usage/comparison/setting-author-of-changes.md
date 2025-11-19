---
id: setting-author-of-changes
url: comparison/nodejs-java/setting-author-of-changes
title: Setting author of changes
weight: 16
description: "This article explains how to set author of changes name in the resulting document in GroupDocs.Comparison for Node.js via Java."
keywords: RevisionAuthorName, author, revision
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to set the changes author name in the resulting document.

The following code snippet shows how to set the changes author:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and result documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const resultPath = 'result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document to the comparison set
comparer.add(targetPath);

// Create comparison options to customize the output
const compareOptions = new groupdocs.CompareOptions();

// Enable revision tracking and set author information
compareOptions.setShowRevisions(true);               // show changes as revisions
compareOptions.setWordTrackChanges(true);           // generate Word track changes
compareOptions.setRevisionAuthorName('New author'); // author name for revisions

// Execute the comparison and save the result to the specified path
comparer.compare(resultPath, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It enables revision tracking by setting both `setShowRevisions(true)` and `setWordTrackChanges(true)`, then sets the author name for revisions using `setRevisionAuthorName('New author')`. When the comparison is performed, all changes will be marked as revisions with the specified author name in the result document.

The result is as follows:

 ![Changes author](/comparison/nodejs-java/images/set-new-author-of-changes-example.png)


