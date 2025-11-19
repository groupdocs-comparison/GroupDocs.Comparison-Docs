---
id: get-only-summary-page
url: comparison/nodejs-java/get-only-summary-page
title: Get only summary page
weight: 9
description: "This article explains how to get only a summary page when comparing documents with GroupDocs.Comparison for Node.js via Java."
keywords: Compare documents, summary page, SummaryPage, ShowOnlySummaryPage
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to detect changes between source and target files and create the summary page only.

The following code snippet shows how to get only a summary page.

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and output documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const outputPath = 'result.docx';

// Initialize comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document to be compared with the source
comparer.add(targetPath);

// Create comparison options and configure to show only summary page
const options = new groupdocs.CompareOptions();
options.setShowOnlySummaryPage(true); // enable summary-only view

// Execute comparison and save result to output path
comparer.compare(outputPath, options);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It sets `setShowOnlySummaryPage(true)` to generate only the summary page without the full document content. When the comparison is performed, the result document will contain only the summary page with statistics about detected changes, making it useful for quick overviews without the full document content.

The result is as follows:

![](/comparison/nodejs-java/images/get-only-summary-page.png)