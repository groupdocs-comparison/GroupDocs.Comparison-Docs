---
id: get-source-and-target-text-from-files
url: comparison/nodejs-java/get-source-and-target-text-from-files
title: Get source and target text from files
weight: 7
description: "This article explains how to get source and target texts of specific changes using GroupDocs.Comparison for Node.js via Java."
keywords: Get target txt, Get source txt, documents diff, compare documents, compare files
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get source and target texts of specific changes in the output file.

The following code snippets show how to get specified texts from a file.

## Get source and target text from a local disk

The following example compares two DOCX files from disk and prints the source and target text for each detected change.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and output documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const outputPath = 'result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document to the comparison set
comparer.add(targetPath);

// Execute the comparison and write the result to the output file
comparer.compare(outputPath);

// Retrieve the list of detected changes after comparison
const changes = comparer.getChanges();

// Iterate over each change and display its source/target text fragments
for (let i = 0; i < changes.length; i++) {
  const change = changes[i];

  // Blank line for readability between changes
  console.log();

  // Output text from the source and target documents for this change
  console.log('Source text: ', change.getSourceText());
  console.log('Target text: ', change.getTargetText());
}

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and performs the comparison. After the comparison, it retrieves all detected changes using `getChanges()` and iterates through them to extract and display the source text (original text from the source document) and target text (modified text from the target document) for each change. This allows you to see exactly what text was changed between the documents.

The result is as follows:

![](/comparison/nodejs-java/images/get-source-and-target-text-from-files.png)

## Get source and target text from a stream

The following example performs the same operation using Java input streams instead of file paths.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import Java bridge to work with FileInputStream
const java = require('java');
const InputStream = java.import('java.io.FileInputStream');

// Create input streams for source and target documents
const sourceInputStream = new InputStream('sample-files/source.docx');
const targetInputStream = new InputStream('sample-files/target.docx');

// Define the output file path for the comparison result
const outputPath = 'result.docx';

// Initialize the comparer with the source document stream
const comparer = new groupdocs.Comparer(sourceInputStream);

// Add the target document stream to the comparer
comparer.add(targetInputStream);

// Perform the comparison and generate the result file
comparer.compare(outputPath);

// Retrieve the list of detected changes
const changes = comparer.getChanges();

// Iterate over each change and output its source/target text portions
for (let i = 0; i < changes.length; i++) {
  const change = changes[i];
  console.log('Source text: ', change.getSourceText());
  console.log('Target text: ', change.getTargetText());
}

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates the same workflow using Java input streams instead of file paths. It creates `InputStream` objects for both source and target documents, initializes the comparer with the source stream, adds the target stream, performs the comparison, and then retrieves and displays the source and target text for each detected change, just like the previous example but using streams.
