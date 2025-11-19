---
id: compare-bookmarks-in-word
url: comparison/nodejs-java/compare-bookmarks-in-word
title: Compare bookmarks in Word documents
weight: 12
description: "This article explains how to activate the comparison of bookmarks for Word format in GroupDocs.Comparison for Node.js via Java."
keywords: bookmarks, Word, word, docx, doc, compare bookmarks, word bookmarks, CompareBookmarks, bookmarks comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare bookmarks in Word documents.

The following code snippet shows how to demonstrate how to compare bookmarks:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target and output documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const outputPath = 'result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document that will be compared against the source
comparer.add(targetPath);

// Create comparison options object to customize the comparison behavior
const compareOptions = new groupdocs.CompareOptions();

// Enable comparison of bookmarks during the process
compareOptions.setCompareBookmarks(true);

// Execute the comparison and save the result to the specified output file
comparer.compare(outputPath, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example initializes a `Comparer` with the source document, adds the target document, and creates a `CompareOptions` object. It enables bookmark comparison by setting `setCompareBookmarks(true)`, then performs the comparison with these options. This ensures that bookmarks in both documents are compared and any differences are highlighted in the result document.

The result of compared bookmarks is as follows:

![](/comparison/nodejs-java/images/compared-bookmarks.png)
