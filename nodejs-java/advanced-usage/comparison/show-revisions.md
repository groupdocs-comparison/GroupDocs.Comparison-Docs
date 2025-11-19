---
id: show-revisions
url: comparison/nodejs-java/show-revisions
title: Show Revisions
weight: 14
description: "This article explains how to customize the display of revisions in the output document in GroupDocs.Comparison for Node.js via Java."
keywords: ShowRevisions, revision
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare and customize the visibility of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the visibility of revisions is enabled. The following code snippet shows how to disable the visibility of revisions:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and result documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const outputPath = 'result.docx';

// Initialize comparer with the source document
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target document that will be compared against the source
comparer.add(targetPath);

// Set up comparison options
const options = new groupdocs.CompareOptions();

// Disable revision marks in the output document
options.setShowRevisions(false);

// Perform the comparison and write the result to the output file
comparer.compare(outputPath, options);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It disables the display of revision marks by setting `setShowRevisions(false)`. When the comparison is performed, the result document will not show revision marks, displaying the final content directly without revision tracking indicators.

The result is as follows:

|                            Closed state                             |                             Open state                             |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-revisions-true-close-revisions.png) | ![](/comparison/nodejs-java/images/show-revisions-true-open-revisions.png) |


|              Disable display Revisions               |
| :--------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-revisions-false.png) |

