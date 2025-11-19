---
id: compare-folders
url: comparison/nodejs-java/compare-folders
title: Comparing Folders
weight: 4
description: "This page describes how to compare two folders and find out which files/folders were deleted, added or modified."
keywords: Directories comparison, folders comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare the contents of a folder (directory), process and save the result of processing.

The following code snippet shows how to compare the two folders:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Create a CompareOptions instance to configure comparison settings
const compareOptions = new groupdocs.CompareOptions();

// Enable directory comparison mode
compareOptions.setDirectoryCompare(true);

// Initialize the Comparer with the source folder and the configured options
const comparer = new groupdocs.Comparer('sample-files/SourceFolder', compareOptions);

// Add the target folder to compare against
comparer.add('sample-files/TargetFolder', compareOptions);

// Run the comparison for directories and generate the result as an HTML file
comparer.compareDirectory('result.html', compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `CompareOptions` object and enables directory comparison mode by setting `setDirectoryCompare(true)`. It initializes the `Comparer` with the source folder path and the options, adds the target folder using `add()` with the same options, and then calls `compareDirectory()` instead of `compare()` to perform folder comparison. The result is saved as an HTML file that shows which files were added, deleted, or modified between the two folders.

The following images show the comparison result:

| Result in HTML                                                 | Result in TXT                                                 |
| -------------------------------------------------------------- | ------------------------------------------------------------- |
| ![](/comparison/nodejs-java/images/result-comparison-folders-html.png) | ![](/comparison/nodejs-java/images/result-comparison-folders-txt.png) |
