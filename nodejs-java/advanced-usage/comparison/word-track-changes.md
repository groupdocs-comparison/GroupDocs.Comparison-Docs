---
id: word-track-changes
url: comparison/nodejs-java/word-track-changes
title: Show results of comparison as a Word Track Changes
weight: 13
description: "This article explains how to use the Microsoft Word Track Changes comparing as a built-in feature in GroupDocs.Comparison for Node.js via Java."
keywords: WordTrackChanges, revisions
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to customize the display of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the Word Track Changes option is `false`. The following code snippet shows how to enable Word Track Changes:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and result documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const resultPath = 'sample-files/result_word_track.docx';

// Create a comparer instance using the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document to the comparison set
comparer.add(targetPath);

// Initialize comparison options
const options = new groupdocs.CompareOptions();

// Enable Word Track Changes in the output document
options.setWordTrackChanges(true);

// Perform the comparison and save the result to the specified path
comparer.compare(resultPath, options);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It enables Word Track Changes by setting `setWordTrackChanges(true)`. When the comparison is performed, the result document will use Microsoft Word's built-in Track Changes feature to display revisions, making it compatible with Word's revision tracking system and allowing users to accept or reject changes directly in Word.

The result is as follows:

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/word-track-changes-option-true.png) |




|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/word-track-changes-option-false.png) |

