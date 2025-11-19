---
id: show-gap-lines
url: comparison/nodejs-java/show-gap-lines
title: Show gap lines instead of changes
weight: 15
description: "This article explains how to adjust the display of the output document so that the changed content is replaced with empty lines in GroupDocs.Comparison for Node.js via Java."
keywords: LeaveGaps, gap lines, empty lines
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to adjust the appearance of the output document.

By default, changes from the two input files (source and target files) are added to the output document and highlighted. Use the `ShowInsertedContent` and `ShowDeletedContent` properties to configure the content of the output file.

Use the `LeaveGaps` property to adjust the display of the output document, which replaces the changed content with empty lines. To use this property, activate the `ShowInsertedContent` and `ShowDeletedContent` properties.

The following code snippet shows how to get the desired result

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and result documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const resultPath = 'result.docx';

// Initialize comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document to be compared
comparer.add(targetPath);

// Create comparison options object
const options = new groupdocs.CompareOptions();

// Do not display inserted content in the result
options.setShowInsertedContent(false);

// Do not display deleted content in the result
options.setShowDeletedContent(false);

// Keep gaps where deletions occurred
options.setLeaveGaps(true);

// Execute comparison and save the result to the specified path
comparer.compare(resultPath, options);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It configures the output to hide both inserted and deleted content by setting `setShowInsertedContent(false)` and `setShowDeletedContent(false)`, then enables gap lines by setting `setLeaveGaps(true)`. When the comparison is performed, instead of showing the actual changed content, empty lines (gaps) will be inserted where changes occurred, providing a cleaner view of the document structure.

The result is as follows:

|                        Default result                         |                Result without LeaveGaps property                 |
| :-----------------------------------------------------------: | :--------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-gap-lines-default-result.png) | ![](/comparison/nodejs-java/images/show-gap-lines-without-leavegaps.png) |

|                        Default result                         |                Result with LeaveGaps property                 |
| :-----------------------------------------------------------: | :-----------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-gap-lines-default-result.png) | ![](/comparison/nodejs-java/images/show-gap-lines-with-leavegaps.png) |
