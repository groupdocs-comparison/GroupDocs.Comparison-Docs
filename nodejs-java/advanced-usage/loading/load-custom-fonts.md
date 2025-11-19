---
id: load-custom-fonts
url: comparison/nodejs-java/load-custom-fonts
title: Load custom fonts
weight: 4
description: "This article explains how to load custom fonts PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Node.js via Java."
keywords: Custom fonts, fonts
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare documents that contain non-standard fonts.

The following code snippet shows how to connect custom fonts and compare documents:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Enable strict mode for safer JavaScript
// Create LoadOptions and add a custom font directory
const loadOptions = new groupdocs.LoadOptions();
loadOptions.getFontDirectories().add('sample-files/font.otf'); // Register custom font for accurate rendering

// Define the path to the source document
const sourcePath = 'sample-files/source.docx';

// Initialize the Comparer with the source file and the load options
const comparer = new groupdocs.Comparer(sourcePath, loadOptions);

// Add the target document to the comparison set
comparer.add('sample-files/target.docx');

// Perform the comparison and save the result document
comparer.compare('result.docx');

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `LoadOptions` instance and adds a custom font directory using `getFontDirectories().add()`. It then initializes the `Comparer` with the source document path and the `LoadOptions` object, which ensures that custom fonts are available during comparison. The target document is added, and the comparison is performed. This allows documents with non-standard fonts to be compared accurately, as the custom fonts are registered and used for rendering.
