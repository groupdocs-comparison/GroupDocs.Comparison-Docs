---
id: get-file-info
url: comparison/nodejs-java/get-file-info
title: Get file info
weight: 2
description: "This article explains how to detect document file type, size and calculate pages count with GroupDocs.Comparison."
keywords: Get file info, Get File Type, Page count, File size
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

With [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) you can retrieve the following information about a file:

*   `FileType` represents the document file type (PDF, Word document, Excel spreadsheet, PowerPoint presentation, image etc.).
*   `PageCount` represents the number of pages in a document.
*   `FileSize` represents the document file size.
*   `PagesInfo` represents the page information.

The following code samples show how to get file information:

## Get file info for the file from a local disk

The following example opens a local document and prints its basic metadata such as type, page count, and size.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Create a Comparer instance for the source document (loaded from disk)
const comparer = new groupdocs.Comparer('sample-files/source.docx');

// Retrieve document information (type, pages, size, etc.) from the source
const info = comparer.getSource().getDocumentInfo();

// Output file type, page count, and size to the console
console.log(`\nFile type: ${info.getFileType().getFileFormat()}`);
console.log(`Number of pages: ${info.getPageCount()}`);
console.log(`Document size: ${info.getSize()} bytes`);

// Terminate the process with a success exit code
process.exit(0);
```

The result is as follows:

![](/comparison/nodejs-java/images/get-file-info.png)

## Get file info for the file from a stream

The following example loads a document from a Java input stream and then reads its metadata.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import Java bridge to work with input streams
const java = require('java');

// Get a reference to the Java FileInputStream class
let InputStream = java.import('java.io.FileInputStream');

// Create a Comparer instance using a Java input stream as the source document
const comparer = new groupdocs.Comparer(new InputStream('sample-files/source.docx'));

// Retrieve document information from the source stream
const info = comparer.getSource().getDocumentInfo();

// Print document type, page count, and size to the console
console.log(`\nFile type: ${info.getFileType().getFileFormat()}`);
console.log(`Number of pages: ${info.getPageCount()}`);
console.log(`Document size: ${info.getSize()} bytes`);

// Terminate the process with a success exit code
process.exit(0);
```

