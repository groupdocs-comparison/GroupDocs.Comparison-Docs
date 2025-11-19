---
id: load-file-from-stream
url: comparison/nodejs-java/load-file-from-stream
title: Load file from stream
weight: 2
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from a stream when using GroupDocs.Comparison for Node.js via Java."
keywords: Load document from stream, Load document with GroupDocs.Comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

To avoid the saving stream as a file, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to work with file streams directly.

The following code snippet shows how to load a file from a stream:

```javascript
'use strict';

// Load Java bridge and import FileInputStream for reading files
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');

// Create input streams for source and target documents
const sourceStream = new InputStream('sample-files/source.docx'); // source document
const targetStream = new InputStream('sample-files/target.docx'); // target document

// Initialize comparer with the source document stream
const comparer = new groupdocs.Comparer(sourceStream);

// Add the target document to the comparison set
comparer.add(targetStream);

// Execute comparison and save result to a new file
comparer.compare('result.docx');

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates how to compare documents using Java input streams instead of file paths. It creates `InputStream` objects for both the source and target documents using Java's `FileInputStream` class, initializes the `Comparer` with the source stream, adds the target stream using `add()`, and performs the comparison. This approach is useful when working with documents stored in memory or when you want to avoid direct file system access.
