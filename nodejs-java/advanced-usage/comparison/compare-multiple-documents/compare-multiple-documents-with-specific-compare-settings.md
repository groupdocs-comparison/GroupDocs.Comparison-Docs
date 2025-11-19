---
id: compare-multiple-documents-with-specific-compare-settings
url: comparison/nodejs-java/compare-multiple-documents-with-specific-compare-settings
title: Compare multiple documents with specific compare settings
weight: 2
description: "Following this guide you will learn how to compare multiple documents with different customizations - style detection, change comparison detalization level and more."
keywords: Compare multiple documents, style change detection, Multi-compare files
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

{{< alert style="info" >}}This feature is available for Microsoft Word documents, Microsoft PowerPoint, and Open Document presentations only.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare more than two documents and specify specific comparison options like styling for detected changes, comparison sensitivity level, etc.

The following code snippets show how to compare multiple documents with the appropriate options.

## Compare multiple documents with specific compare settings from a local disk

The following example compares four DOCX documents and highlights all inserted content with a custom font color.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java and Java Color utilities
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const Color = java.import('java.awt.Color');

// Define file paths for the source and three target documents
const sourceFile = 'sample-files/source.docx';
const targetFile1 = 'sample-files/target.docx';
const targetFile2 = 'sample-files/target2.docx';
const targetFile3 = 'sample-files/target3.docx';
const resultFile = 'output/result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add multiple target documents to the comparison set
comparer.add(targetFile1);
comparer.add(targetFile2);
comparer.add(targetFile3);

// Configure visual style for inserted items (e.g., new content in targets)
const styleSettings = new groupdocs.StyleSettings();
styleSettings.setFontColor(Color.YELLOW); // render inserted text in yellow

// Attach style settings to comparison options
const compareOptions = new groupdocs.CompareOptions();
compareOptions.setInsertedItemStyle(styleSettings);

// Run the comparison and save the result document with styled changes
comparer.compare(resultFile, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example:

1. Instantiates the `Comparer` with the source document path.
2. Adds several target documents using the `add()` method.
3. Creates a `CompareOptions` instance and configures `StyleSettings` for inserted items (for example, changing font color).
4. Calls `compare()` with the result path and options to produce an output document that highlights changes according to the specified styles.

The result is as follows:

![](/comparison/nodejs-java/images/compare-multiple-settings.png)

## Compare multiple documents with specific compare settings from a stream

The following example performs the same multi-document comparison using Java input streams instead of direct file paths.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java plus Java stream/color classes
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
let InputStream = java.import('java.io.FileInputStream');
let Color = java.import('java.awt.Color');

// Create input streams for the source document and three target documents
const sourceInputStream = new InputStream('sample-files/source.docx');
const targetInputStream1 = new InputStream('sample-files/target.docx');
const targetInputStream2 = new InputStream('sample-files/target2.docx');
const targetInputStream3 = new InputStream('sample-files/target3.docx');

// Initialize the comparer with the source document stream
const comparer = new groupdocs.Comparer(sourceInputStream);

// Add each target document to the comparison list
comparer.add(targetInputStream1);
comparer.add(targetInputStream2);
comparer.add(targetInputStream3);

// Set up style settings for inserted items (e.g., highlight color)
const styleSettings = new groupdocs.StyleSettings();
styleSettings.setFontColor(Color.YELLOW); // use yellow font color for inserted text

// Configure compare options to use the defined style for inserted items
const compareOptions = new groupdocs.CompareOptions();
compareOptions.setInsertedItemStyle(styleSettings);

// Define the output path where the comparison result will be saved
const resultPath = 'result.docx';

// Execute the comparison and generate the result document
comparer.compare(resultPath, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

In the stream-based variant:

1. The `Comparer` is initialized with a source document input stream.
2. Target documents are provided as input streams via multiple calls to `add()`.
3. A `CompareOptions` object is created and linked with `StyleSettings` to format inserted items.
4. The `compare()` method is invoked with the destination path and options to generate a combined comparison result.
