---
id: compare-multiple-documents-protected-by-password
url: comparison/nodejs-java/compare-multiple-documents-protected-by-password
title: Compare multiple documents protected by password
weight: 1
description: "This article describes how to compare multiple Word documents or PowerPoint presentations protected by password using GroupDocs.Comparison for Node.js via Java API."
keywords: Compare multiple password-protected documents, compare multiple protected documents
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint, and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare more than two password-protected documents.

The following code snippets show how to compare several password-protected documents:

## Compare several password-protected documents from a local disk

The following example compares a password-protected source document with three password-protected target documents from disk and saves a combined result.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for the source document, three target documents, and the output result
const sourceFile = 'sample-files/source_protected.docx';
const targetFile1 = 'sample-files/target_protected.docx';
const targetFile2 = 'sample-files/target2_protected.docx';
const targetFile3 = 'sample-files/target3_protected.docx';
const resultFile = 'result.docx';

// Create a Comparer instance for the source file, providing its password via LoadOptions
const comparer = new groupdocs.Comparer(sourceFile, new groupdocs.LoadOptions('1234'));

// Add the target documents with their passwords
comparer.add(targetFile1, new groupdocs.LoadOptions('5678'));
comparer.add(targetFile2, new groupdocs.LoadOptions('5678'));
comparer.add(targetFile3, new groupdocs.LoadOptions('5678'));

// Perform the comparison and save the merged result to the specified output file
comparer.compare(resultFile);

// Terminate the process with a success exit code
process.exit(0);
```

This disk-based example:

1. Creates a `Comparer` instance for the password-protected source document using `LoadOptions`.
2. Adds each protected target document with its corresponding `LoadOptions` (containing the password) via `add()`.
3. Calls `compare()` to generate a single result that merges changes across all password-protected documents.

## Compare several password-protected documents from a stream

The following example performs the same operation using Java input streams instead of file paths.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import Java bridge and FileInputStream class
const java = require('java');
const InputStream = java.import('java.io.FileInputStream');

// Define file paths for the protected documents and the result
const sourcePath = 'sample-files/source_protected.docx';
const targetPath1 = 'sample-files/target_protected.docx';
const targetPath2 = 'sample-files/target2_protected.docx';
const targetPath3 = 'sample-files/target3_protected.docx';
const resultPath = 'result_multiple_protected.docx';

// Create input streams for source and targets
const sourceStream = new InputStream(sourcePath);
const targetStream1 = new InputStream(targetPath1);
const targetStream2 = new InputStream(targetPath2);
const targetStream3 = new InputStream(targetPath3);

// Initialize comparer for the protected source document
const comparer = new groupdocs.Comparer(sourceStream, new groupdocs.LoadOptions('1234'));

// Add protected target documents using their passwords
comparer.add(targetStream1, new groupdocs.LoadOptions('5678'));
comparer.add(targetStream2, new groupdocs.LoadOptions('5678'));
comparer.add(targetStream3, new groupdocs.LoadOptions('5678'));

// Compare all documents and save the combined result
comparer.compare(resultPath);

// Terminate the process with a success exit code
process.exit(0);
```

In the stream-based scenario:

1. Input streams are opened for the source and each protected target document.
2. The `Comparer` is initialized with the source stream and its password through `LoadOptions`.
3. Target streams are added with their own `LoadOptions` instances that specify passwords.
4. The `compare()` method runs the multi-document comparison and outputs the merged result file.
