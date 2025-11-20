---
id: get-changes-coordinates
url: comparison/nodejs-java/get-changes-coordinates
title: Get changes coordinates
weight: 5
description: "This article explains how to obtain coordinates for detected changes at a document pages preview when comparing documents with GroupDocs.Comparison for Node.js via Java"
keywords: Compare documents, get changes coordinates
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to detect changes between the source and target documents and get coordinates of the changes in the document preview images. These coordinates can be useful to highlight changes in the document preview images.

The following code snippet shows how to compare documents and obtain coordinates for each detected change:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for the source, target, and result documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const resultFile = 'result.docx';

// Create a comparer instance for the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to the comparer
comparer.add(targetFile);

// Initialize comparison options
const compareOptions = new groupdocs.CompareOptions();
compareOptions.setCalculateCoordinates(true);

// Execute the comparison and save the result to the specified file
comparer.compare(resultFile, compareOptions);

// Retrieve the list of detected changes
const changes = comparer.getChanges();

// Iterate through each change and output its details
for (let i = 0; i < changes.length; i++) {
    const change = changes[i];
    console.log(`Change Type: ${change.getType()}, X: ${change.getBox().getX()}, Y: ${change.getBox().getY()}, Text: ${change.getText()}`);
}

// Exit the process
process.exit(0);
```

This example creates a `Comparer` instance, adds the target document, and configures comparison options to calculate coordinates by setting `setCalculateCoordinates(true)`. After performing the comparison, it retrieves all detected changes using `getChanges()` and iterates through them to extract and display coordinate information (X, Y positions) from each change's `Box` object, along with the change type and text content.

The result is as follows:

![](/comparison/nodejs-java/images/get-changes-coordinates.png)
