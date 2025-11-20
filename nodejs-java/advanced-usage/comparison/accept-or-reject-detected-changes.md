---
id: accept-or-reject-detected-changes
url: comparison/nodejs-java/accept-or-reject-detected-changes
title: Accept or Reject detected changes
weight: 1
description: "Following this guide you will learn how to apply or discard changes detected during document comparison process using GroupDocs.Comparison for Node.js via Java API."
keywords: Apply changes to the compared document, reject comparison changes, document comparison changes
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to apply or discard specific changes between the source and target documents and save the output document with (or without) the selected changes. 

The `ApplyChangeOptions` class includes the following properties:

- `getChanges` is a list of changes that must be applied (or not) to the output document
- `isSaveOriginalState` is an option to keep the original state of the compared result after applying changes

The following code snippets show how to accept/reject changes:

## Accept or Reject changes for documents stored on a local disk

The following example compares two DOCX files from disk, rejects the first detected change, and saves an updated result document.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Load Java integration and import utility class for working with Java collections
const java = require('java');
let Arrays = java.import('java.util.Arrays');

// Define file paths for source, target, and result documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const resultFile = 'result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to be compared against the source
comparer.add(targetFile);

// Perform the comparison operation (changes are detected but not yet applied)
comparer.compare();

// Retrieve the list of detected changes (array of ChangeInfo objects)
let changes = comparer.getChanges();

// Mark the first change in the list as rejected
changes[0].setComparisonAction(groupdocs.ComparisonAction.REJECT);

// Create options for applying changes
const applyChangeOptions = new groupdocs.ApplyChangeOptions();

// Specify the changes to apply by wrapping the JavaScript array with Arrays.asList
applyChangeOptions.setChanges(Arrays.asList(changes));

// Apply the selected changes and save the result document
comparer.applyChanges(resultFile, applyChangeOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and performs the comparison. It then retrieves all detected changes, marks the first change as rejected using `setComparisonAction()`, wraps the changes array in a Java List, and applies the changes to create a result document where the rejected change is not included.

The result is as follows:

|                            Accepted changes                             |                             Rejected changes                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/accepted-changes.png) | ![](/comparison/nodejs-java/images/rejected-changes.png) |

## Accept or reject changes for documents provided as a stream

The following example loads documents from Java streams, rejects the first change, and writes the result to a new file.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import Java interop and required classes
const java = require('java');
const InputStream = java.import('java.io.FileInputStream');
const Arrays = java.import('java.util.Arrays');

// Create InputStream objects for source and target documents
const sourceInputStream = new InputStream('sample-files/source.docx');
const targetInputStream = new InputStream('sample-files/target.docx');

// Initialize comparer with source document stream
const comparer = new groupdocs.Comparer(sourceInputStream);

// Add target document stream to comparer
comparer.add(targetInputStream);

// Perform comparison and generate a result document on disk
comparer.compare('result.docx');

// Retrieve list of detected changes
let changes = comparer.getChanges();

// Reject the first detected change
changes[0].setComparisonAction(groupdocs.ComparisonAction.REJECT);

// Configure options for applying changes
const applyOptions = new groupdocs.ApplyChangeOptions();

// Convert JavaScript array of changes to a Java List using Arrays.asList
const javaList = Arrays.asList(changes);
applyOptions.setChanges(javaList);

// Apply the selected changes and save them into a separate result file
comparer.applyChanges('result_rejected.docx', applyOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates the same workflow using Java input streams instead of file paths. It creates `InputStream` objects for both source and target documents, initializes the comparer with the source stream, adds the target stream, performs the comparison, retrieves changes, marks the first change as rejected, and applies the changes to save a new result file.

## Accept or reject detected changes using the SaveOriginalState option

The following example shows how to apply different actions to the same comparison result while optionally preserving the original state.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Import Java interop helper for working with Java collections
const java = require('java');
const Arrays = java.import('java.util.Arrays');

// Define file paths for source, target, and multiple result documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const resultFile = 'result.docx';
const resultFileWithRejectedChange = 'rejected.docx';
const resultFileWithAcceptedChange = 'accepted.docx';

// Initialize comparer with the source document and add the target
const comparer = new groupdocs.Comparer(sourceFile);
comparer.add(targetFile);

// Run the comparison and save the initial merged result
comparer.compare(resultFile);

// Reject first change and save result while keeping original state
let changes = comparer.getChanges();
changes[0].setComparisonAction(groupdocs.ComparisonAction.REJECT);
const rejectOptions = new groupdocs.ApplyChangeOptions();
rejectOptions.setSaveOriginalState(true);          // keep original state unchanged
rejectOptions.setChanges(Arrays.asList(changes));  // apply only the updated change list
comparer.applyChanges(resultFileWithRejectedChange, rejectOptions);

// Accept first change and save another variant of the document
changes = comparer.getChanges();
changes[0].setComparisonAction(groupdocs.ComparisonAction.ACCEPT);
const acceptOptions = new groupdocs.ApplyChangeOptions();
acceptOptions.setChanges(Arrays.asList(changes));
comparer.applyChanges(resultFileWithAcceptedChange, acceptOptions);

// Exit the process
process.exit(0);
```

This example shows how to create multiple result documents from the same comparison with different change actions. It first saves the initial comparison result, then creates one result file with the first change rejected (using `setSaveOriginalState(true)` to preserve the original comparison state), and another result file with the first change accepted. This allows you to generate multiple variants of the document with different change selections.
