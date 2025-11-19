---
id: load-file-from-local-disk
url: comparison/nodejs-java/load-file-from-local-disk
title: Load file from local disk
weight: 1
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from local disk when using GroupDocs.Comparison for Node.js via Java."
keywords: Load document from local disk, Load document from file path, Load document with GroupDocs.Comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

When the source file is located on the local disk, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to load it using the `Comparer` class constructor by specifying an absolute or relative path. To load the target file located on the local disk, use the `add()` method. Specify an absolute or relative path as the parameter.

The following code snippet shows how to load files from a local disk:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for the source, target, and result DOCX files
const sourceDocxPath = 'sample-files/source.docx';
const targetDocxPath = 'sample-files/target.docx';
const resultDocxPath = 'result.docx';

// Create a Comparer instance using the source document
const comparer = new groupdocs.Comparer(sourceDocxPath);

// Add the target document to the comparison set
comparer.add(targetDocxPath);

// Perform the comparison and write the merged result to the output file
comparer.compare(resultDocxPath);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates the simplest way to compare documents from local disk storage. It creates a `Comparer` instance by passing the source document path directly to the constructor, adds the target document using the `add()` method with its file path, and then performs the comparison by calling `compare()` with the result file path. The result document will contain all detected differences between the source and target documents.
