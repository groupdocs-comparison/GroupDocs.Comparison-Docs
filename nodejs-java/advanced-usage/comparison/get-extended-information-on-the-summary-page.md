---
id: get-extended-information-on-the-summary-page
url: comparison/nodejs-java/get-extended-information-on-the-summary-page
title: Get extended information on the summary page
weight: 10
description: "This article explains how to get extended information about comparison of documents on the summary page with GroupDocs.Comparison for Node.js via Java."
keywords: Compare documents, summary page, SummaryPage, extended information, ExtendedSummaryPage
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to detect changes between source and target files and display changes on the separate page - `SummaryPage`.
You can also get extended information about the comparison of documents, which is displayed in the `SummaryPage`.

The following code snippet shows how to get extended information:

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

// Add the target document to the comparison set
comparer.add(targetPath);

// Create comparison options
const options = new groupdocs.CompareOptions();

// Enable generation of an extended summary page in the result
options.setExtendedSummaryPage(true);

// Execute the comparison and save the result to the specified output path
const resultPath = comparer.compare(outputPath, options);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It enables extended summary page generation by setting `setExtendedSummaryPage(true)`, then performs the comparison. The result document will include an extended summary page with detailed information about all detected changes, providing more comprehensive statistics than a standard summary page.

The result is as follows:

![](/comparison/nodejs-java/images/how-to-get-extended-information-image.png)


