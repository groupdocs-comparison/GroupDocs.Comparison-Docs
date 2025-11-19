---
id: load-password-protected-documents
url: comparison/nodejs-java/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "This article explains how to load password-protected PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Node.js via Java."
keywords: Load password-protected document, Load protected document with GroupDocs.Comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare documents that are protected with a password.

The following code snippet shows how to load and compare password-protected Excel documents.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for the source, target, and result Excel documents
const sourceExcelDocument = 'sample-files/source.xlsx';
const targetExcelDocument = 'sample-files/target.xlsx';
const resultExcelDocument = 'result.xlsx';

// Initialize the comparer with the source document and its password
const comparer = new groupdocs.Comparer(
  sourceExcelDocument,
  new groupdocs.LoadOptions('password') // password required to open the source file
);

// Add the target document to the comparison session with its own password
comparer.add(
  targetExcelDocument,
  new groupdocs.LoadOptions('password') // password required to open the target file
);

// Execute the comparison and save the result to the specified output file
comparer.compare(resultExcelDocument);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates how to compare password-protected documents. It creates `LoadOptions` objects with passwords for both the source and target documents. The `Comparer` is initialized with the source document path and a `LoadOptions` object containing the source document's password. Similarly, when adding the target document, another `LoadOptions` object with the target document's password is provided. The comparison then proceeds normally, with both documents being decrypted using their respective passwords.
