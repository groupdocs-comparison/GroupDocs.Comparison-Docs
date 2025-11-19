---
id: compare-of-variables-and-document-properties
url: comparison/nodejs-java/compare-of-variables-and-document-properties
title: Compare of Variables and Document properties
weight: 11
description: "This article explains how to activate the comparison of document properties in GroupDocs.Comparison for Node.js via Java."
keywords: variables properties, built properties, custom properties, compare document properties, CompareVariableProperty, CompareDocumentProperty
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare various properties of a Word document such as _Variable_, _Built_, and _Custom_ properties.

Use the following methods of the `CompareOptions` class to enable comparison functions for document properties:

- `setCompareVariableProperty()` allows the comparison of _variable_ properties
- `setCompareDocumentProperty()` allows the comparison of _built_ and _custom_ properties

The following code snippet shows how to activate the comparison of the _variable_, _built_ and _custom_ properties:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

 // Enable strict mode for better error handling
 // Define file paths for source, target, and output documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const outputPath = 'result.docx';

 // Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

 // Add the target document to be compared against the source
comparer.add(targetPath);

 // Create a CompareOptions instance to customize comparison settings
const options = new groupdocs.CompareOptions();

 // Enable comparison of variable (custom) properties
options.setCompareVariableProperty(true);

 // Enable comparison of built-in document properties
options.setCompareDocumentProperty(true);

 // Execute the comparison and save the result to the output path
comparer.compare(outputPath, options);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It enables comparison of both variable properties (using `setCompareVariableProperty(true)`) and document properties including built-in and custom properties (using `setCompareDocumentProperty(true)`), then performs the comparison with these options. Any differences in document properties will be highlighted in the result document.

The result is as follows:

![](/comparison/nodejs-java/images/properties-summary-page.png)
