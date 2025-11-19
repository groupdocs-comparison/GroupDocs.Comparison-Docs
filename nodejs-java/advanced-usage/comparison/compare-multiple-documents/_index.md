---
id: compare-multiple-documents
url: comparison/nodejs-java/compare-multiple-documents
title: Compare multiple documents
weight: 3
description: "Learn more about how to compare multiple Word documents or PowerPoint presentations simultaneously with GroupDocs.Comparison for Node.js via Java."
keywords: Compare multiple documents, documents multi-comparison, compare more than two documents 
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: True
---
{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare more than two documents.

The following code snippets show how to compare several documents:

## Compare several documents from a local disk

```javascript
'use strict';

// Import Java bridge and FileInputStream for handling file streams
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');

 // Create an InputStream for the source document
const source = new InputStream('sample-files/source.docx'); // source document stream

 // Initialize the comparer with the source document stream
const comparer = new groupdocs.Comparer(source);

 // Add the first target document to compare against the source
comparer.add(new InputStream('sample-files/target.docx')); // first target stream

 // Add the second target document
comparer.add(new InputStream('sample-files/target2.docx')); // second target stream

 // Add the third target document
comparer.add(new InputStream('sample-files/target3.docx')); // third target stream

 // Perform comparison and save the result to the specified file
comparer.compare('result.docx'); // output file with comparison result

// Terminate the process with a success exit code
process.exit(0);
```

This example compares multiple documents from disk:

1. A `Comparer` instance is created for the source document stream.
2. Several target document streams are added using the `add()` method.
3. The `compare()` method is called to generate a single result document that aggregates differences across all targets.

The result is as follows:

![](/comparison/nodejs-java/images/compare-multiple-word.png)

## Compare several documents from a stream

```javascript
'use strict';

// Import Java bridge and set up InputStream class for reading files
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
let InputStream = java.import('java.io.FileInputStream');

 // Create InputStream for the source document
const sourceInputStream = new InputStream('sample-files/source.docx');

 // Create InputStream for each target document
const targetInputStream1 = new InputStream('sample-files/target.docx');
const targetInputStream2 = new InputStream('sample-files/target2.docx');
const targetInputStream3 = new InputStream('sample-files/target3.docx');

 // Initialize comparer with the source document stream
const comparer = new groupdocs.Comparer(sourceInputStream);

 // Add each target document to the comparison list
comparer.add(targetInputStream1);
comparer.add(targetInputStream2);
comparer.add(targetInputStream3);

 // Execute comparison and save the merged result
comparer.compare('sample-files/result_multiple.docx');

// Terminate the process with a success exit code
process.exit(0);
```

In the stream-based variant:

1. The `Comparer` is initialized with the source document stream.
2. Input streams for each target document are added sequentially via `add()`.
3. A final call to `compare()` produces a merged result that reflects changes across all compared documents.


