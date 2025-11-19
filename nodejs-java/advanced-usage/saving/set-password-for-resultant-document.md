---
id: set-password-for-output-document
url: comparison/nodejs-java/set-password-for-output-document
title: Set password for output document
weight: 2
description: "This article explains how to set document password after files comparison within your Java applications using GroupDocs.Comparison for Node.js via Java."
keywords: Compare document and protect with password
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to protect the output document with a password.

The following code snippet shows how to compare two documents and protect the output document with a user password.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for the source, target, and password-protected result
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const outputFile = 'result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to the comparison session
comparer.add(targetFile);

// Configure comparison options to indicate that a user password will be set
const compareOptions = new groupdocs.CompareOptions();
compareOptions.setPasswordSaveOption(groupdocs.PasswordSaveOption.USER);

// Configure save options with the desired document password
const saveOptions = new groupdocs.SaveOptions();
saveOptions.setPassword('3333'); // password that will be required to open the result

// Run the comparison, applying both save and comparison options
comparer.compare(outputFile, saveOptions, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates both `CompareOptions` and `SaveOptions` objects. It sets `setPasswordSaveOption(PasswordSaveOption.USER)` in the `CompareOptions` to indicate that a user password will be applied, and sets the actual password using `setPassword('3333')` in the `SaveOptions`. When the comparison is performed with both options, the result document will be password-protected and require the specified password to open.
