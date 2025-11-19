---
id: load-text-from-string
url: comparison/nodejs-java/load-text-from-string
title: Load text from string
weight: 5
description: "This article explains how to load values from variables of string type when using GroupDocs.Comparison for Node.js via Java."
keywords: Load values from variables of string type, Load text with GroupDocs.Comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare values from the `String` type variables.

The following code snippet shows how to load plain text from variables and compare it as if it were document content.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Enable text mode so passed strings are treated as content, not file paths
const loadOptions = new groupdocs.LoadOptions();
loadOptions.setLoadText(true);

// Create a comparer using a source string value
const comparer = new groupdocs.Comparer('This is the original text.', loadOptions);

// Add a target string to compare against the source
comparer.add('This is the changed text.', loadOptions);

// Run the comparison and write the result to a text file
comparer.compare('result.txt');

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates how to compare plain text strings directly without using files. It creates a `LoadOptions` object and sets `setLoadText(true)` to indicate that the strings passed are text content, not file paths. The `Comparer` is initialized with a source string and the `LoadOptions`, and the target string is added with the same `LoadOptions`. The comparison is then performed and saved to a file, treating the strings as document content.

The result is as follows:

![](/comparison/nodejs-java/images/load-text-from-string.png)

The following code snippet shows how to mix a document loaded from disk with text provided directly as a string.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Configure LoadOptions to indicate that the target value is raw text
const loadOptions = new groupdocs.LoadOptions();
loadOptions.setLoadText(true);

// Load the source content from a physical text file
const comparer = new groupdocs.Comparer('sample-files/source.txt');

// Add the target content as plain text (not as a file path)
comparer.add('This is the target text to compare with the file content.', loadOptions);

// Perform comparison without saving to disk and get the result as a string
comparer.compare();
const result = comparer.getResultString();

// Print the comparison result to the console
console.log(result);

// Terminate the process with a success exit code
process.exit(0);
```

This example shows how to mix a document loaded from disk with text provided as a string. The source document is loaded from a file path (without `LoadOptions`), while the target is provided as a plain text string with `LoadOptions` that has `setLoadText(true)`. After performing the comparison, it calls `getResultString()` to retrieve the comparison result as a string instead of saving it to a file, which is useful when you need to process the result programmatically.
