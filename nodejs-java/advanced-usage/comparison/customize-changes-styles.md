---
id: customize-changes-styles
url: comparison/nodejs-java/customize-changes-styles
title: Customize changes styles
weight: 4
description: "Following this guide you will learn how to customize document comparison report and modify the appearance of detected changes when using GroupDocs.Comparison for Node.js via Java."
keywords: Style change detection, Compare document styles, Document comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) provides the compare options collection to set up the appropriate comparison speed and quality.

The following code snippets show how to compare documents with specific options.

## Compare documents from a local disk with custom change styles

The following example compares two DOCX files from disk and applies custom styles to inserted, deleted, and changed content in the result.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and output documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const resultFile = 'output/result.docx';

// Initialize the comparer with the source document and add the target
const comparer = new groupdocs.Comparer(sourceFile);
comparer.add(targetFile);

// Create comparison options to configure visual styling of changes
const compareOptions = new groupdocs.CompareOptions();

// Configure style for inserted items (text added in the target document)
const insertedStyleSettings = new groupdocs.StyleSettings();
insertedStyleSettings.setUnderline(true);
insertedStyleSettings.setBold(true);
insertedStyleSettings.setStrikethrough(true);
insertedStyleSettings.setItalic(true);
compareOptions.setInsertedItemStyle(insertedStyleSettings);

// Configure style for deleted items (text removed from the source document)
const deletedStyleSettings = new groupdocs.StyleSettings();
deletedStyleSettings.setUnderline(true);
deletedStyleSettings.setBold(true);
deletedStyleSettings.setStrikethrough(true);
deletedStyleSettings.setItalic(true);
compareOptions.setDeletedItemStyle(deletedStyleSettings);

// Configure style for changed items (text modified between documents)
const changedStyleSettings = new groupdocs.StyleSettings();
changedStyleSettings.setUnderline(true);
changedStyleSettings.setBold(true);
changedStyleSettings.setStrikethrough(true);
changedStyleSettings.setItalic(true);
compareOptions.setChangedItemStyle(changedStyleSettings);

// Run the comparison using the configured styling options
comparer.compare(resultFile, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It then creates separate `StyleSettings` objects for inserted, deleted, and changed items, configuring each with underline, bold, strikethrough, and italic formatting. These style settings are applied to the comparison options, and when the comparison is performed, all detected changes will be styled according to these custom settings in the result document.

The result is as follows:

![](/comparison/nodejs-java/images/customize-changes-styles.png)

## Compare documents from a stream with custom change styles

The following example performs the same comparison using document streams and applies color-based styles for each type of change.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java and Java interop utilities
const groupdocs = require('@groupdocs/groupdocs.comparison');

//----------------------------------------------------
//----------------------------------------------------
const java = require('java');
let InputStream = java.import('java.io.FileInputStream');
let Color = java.import('java.awt.Color');

//----------------------------------------------------
// Create input streams for the source and target documents
const sourceInputStream = new InputStream('sample-files/source.docx');
const targetInputStream = new InputStream('sample-files/target.docx');

//----------------------------------------------------
// Initialize the comparer with the source document stream
const comparer = new groupdocs.Comparer(sourceInputStream);

//----------------------------------------------------
// Add the target document stream to the comparer
comparer.add(targetInputStream);

//----------------------------------------------------
// Prepare comparison options to customize visual styles
const compareOptions = new groupdocs.CompareOptions();

//----------------------------------------------------
// Configure style for inserted items (e.g., text added in the target)
const insertedStyleSettings = new groupdocs.StyleSettings();
insertedStyleSettings.setHighlightColor(Color.RED);      // Highlight inserted text in red
insertedStyleSettings.setFontColor(Color.GREEN);        // Set font color to green
insertedStyleSettings.setUnderline(true);               // Underline inserted text
insertedStyleSettings.setBold(true);                    // Make inserted text bold
insertedStyleSettings.setStrikethrough(true);           // Apply strikethrough (optional visual cue)
insertedStyleSettings.setItalic(true);                  // Italicize inserted text
compareOptions.setInsertedItemStyle(insertedStyleSettings); // Apply inserted style to options

//----------------------------------------------------
// Configure style for deleted items (e.g., text removed from the source)
const deletedStyleSettings = new groupdocs.StyleSettings();
deletedStyleSettings.setHighlightColor(Color.PINK);      // Highlight deleted text in pink
deletedStyleSettings.setFontColor(Color.CYAN);          // Set font color to cyan
deletedStyleSettings.setUnderline(true);                // Underline deleted text
deletedStyleSettings.setBold(true);                     // Make deleted text bold
deletedStyleSettings.setStrikethrough(true);            // Strike through deleted text
deletedStyleSettings.setItalic(true);                   // Italicize deleted text
compareOptions.setDeletedItemStyle(deletedStyleSettings); // Apply deleted style to options

//----------------------------------------------------
// Configure style for changed items (e.g., text modified between documents)
const changedStyleSettings = new groupdocs.StyleSettings();
changedStyleSettings.setHighlightColor(Color.LIGHT_GRAY); // Highlight changes in light gray
changedStyleSettings.setFontColor(Color.GRAY);            // Set font color to gray
changedStyleSettings.setUnderline(true);                 // Underline changed text
changedStyleSettings.setBold(true);                      // Make changed text bold
changedStyleSettings.setStrikethrough(true);             // Strikethrough changed text
changedStyleSettings.setItalic(true);                    // Italicize changed text
compareOptions.setChangedItemStyle(changedStyleSettings); // Apply changed style to options

//----------------------------------------------------
// Define the output path for the comparison result document
const resultPath = 'result.docx';

//----------------------------------------------------
// Execute the comparison and save the result using the defined options
comparer.compare(resultPath, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates the same workflow using Java input streams instead of file paths. It creates `InputStream` objects for both documents, initializes the comparer with the source stream, adds the target stream, and creates `CompareOptions` with custom `StyleSettings`. In this case, the styles include color settings: inserted items are highlighted in red with green font, deleted items are highlighted in pink with cyan font, and changed items are highlighted in light gray with gray font. All items also have underline, bold, strikethrough, and italic formatting applied.
