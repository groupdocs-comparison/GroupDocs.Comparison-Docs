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
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: How to customize changes styles in JavaScript
    description: Learn how to customize changes styles in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and initialize InsertedItemStyle, DeletedItemStyle, ChangedItemStyle parameters by object with required parameters.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) provides the compare options collection to set up the appropriate comparison speed and quality.

To compare two documents with custom change style settings, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object. Specify the appropriate parameters.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object.

The following code snippets show how to compare documents with specific options:

## Compare documents from a local disk with custom change styles

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);

const compareOptions = new groupdocs.comparison.CompareOptions();

const insertedStyleSettings = new groupdocs.comparison.StyleSettings();
insertedStyleSettings.setHighlightColor(Color.RED);
insertedStyleSettings.setFontColor(Color.GREEN);
insertedStyleSettings.setUnderline(true);
insertedStyleSettings.setBold(true);
insertedStyleSettings.setStrikethrough(true);
insertedStyleSettings.setItalic(true);
compareOptions.setInsertedItemStyle(insertedStyleSettings);

const deletedStyleSettings = new groupdocs.comparison.StyleSettings();
deletedStyleSettings.setHighlightColor(Color.PINK);
deletedStyleSettings.setFontColor(Color.CYAN);
deletedStyleSettings.setUnderline(true);
deletedStyleSettings.setBold(true);
deletedStyleSettings.setStrikethrough(true);
deletedStyleSettings.setItalic(true);
compareOptions.setDeletedItemStyle(deletedStyleSettings);

const changedStyleSettings = new groupdocs.comparison.StyleSettings();
changedStyleSettings.setHighlightColor(Color.LIGHT_GRAY);
changedStyleSettings.setFontColor(Color.GRAY);
changedStyleSettings.setUnderline(true);
changedStyleSettings.setBold(true);
changedStyleSettings.setStrikethrough(true);
changedStyleSettings.setItalic(true);
compareOptions.setChangedItemStyle(changedStyleSettings);

const resultPath = comparer.compare(resultFile, compareOptions);
```

The result is as follows:

![](/comparison/nodejs-java/images/customize-changes-styles.png)

## Compare documents from a stream with custom change styles

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceInputStream);
comparer.add(targetInputStream);

const compareOptions = new groupdocs.comparison.CompareOptions();

const insertedStyleSettings = new groupdocs.comparison.StyleSettings();
insertedStyleSettings.setHighlightColor(Color.RED);
insertedStyleSettings.setFontColor(Color.GREEN);
insertedStyleSettings.setUnderline(true);
insertedStyleSettings.setBold(true);
insertedStyleSettings.setStrikethrough(true);
insertedStyleSettings.setItalic(true);
compareOptions.setInsertedItemStyle(insertedStyleSettings);

const deletedStyleSettings = new groupdocs.comparison.StyleSettings();
deletedStyleSettings.setHighlightColor(Color.PINK);
deletedStyleSettings.setFontColor(Color.CYAN);
deletedStyleSettings.setUnderline(true);
deletedStyleSettings.setBold(true);
deletedStyleSettings.setStrikethrough(true);
deletedStyleSettings.setItalic(true);
compareOptions.setDeletedItemStyle(deletedStyleSettings);

const changedStyleSettings = new groupdocs.comparison.StyleSettings();
changedStyleSettings.setHighlightColor(Color.LIGHT_GRAY);
changedStyleSettings.setFontColor(Color.GRAY);
changedStyleSettings.setUnderline(true);
changedStyleSettings.setBold(true);
changedStyleSettings.setStrikethrough(true);
changedStyleSettings.setItalic(true);
compareOptions.setChangedItemStyle(changedStyleSettings);

const resultPath = comparer.compare(resultInputStream, compareOptions);
```
