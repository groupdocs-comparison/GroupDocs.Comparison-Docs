---
id: compare-multiple-documents-with-specific-compare-settings
url: comparison/nodejs-java/compare-multiple-documents-with-specific-compare-settings
title: Compare multiple documents with specific compare settings
weight: 2
description: "Following this guide you will learn how to compare multiple documents with different customizations - style detection, change comparison detalization level and more."
keywords: Compare multiple documents, style change detection, Multi-compare files
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
    name: How to compare multiple documents with specific compare settings in JavaScript
    description: Learn how to compare multiple documents with specific compare settings in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Specify necessary settings
        text: Create a compare options object and specify necessary settings.
      - name: Load the target files
        text: Add the path to the target files using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

{{< alert style="info" >}}This feature is available for Microsoft Word documents, Microsoft PowerPoint, and Open Document presentations only.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare more than two documents and specify specific comparison options like styling for detected changes, comparison sensitivity level, etc.

To compare multiple documents using the specific options, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2. Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method and specify the target document path or stream. Repeat this step for every target document.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object and specify the appropriate options.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-com.groupdocs.comparison.options.CompareOptions-)--> method. Specify the pass `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object from the previous step.

The following code snippets show how to compare multiple documents with the appropriate options:

## Compare multiple documents with specific compare settings from a local disk

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile1);
comparer.add(targetFile2);
comparer.add(targetFile3);

const styleSettings = new groupdocs.comparison.StyleSettings();
styleSettings.setFontColor(Color.YELLOW);

const compareOptions = new groupdocs.comparison.CompareOptions();
compareOptions.setInsertedItemStyle(styleSettings);

const resultPath = comparer.compare(resultFile, compareOptions);
```

The result is as follows:

![](/comparison/nodejs-java/images/compare-multiple-settings.png)

## Compare multiple documents with specific compare settings from a stream

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceInputStream);
comparer.add(targetInputStream1);
comparer.add(targetInputStream2);
comparer.add(targetInputStream3);

const styleSettings = new groupdocs.comparison.StyleSettings();
styleSettings.setFontColor(Color.YELLOW);

const compareOptions = new groupdocs.comparison.CompareOptions();
compareOptions.setInsertedItemStyle(styleSettings);

const resultPath = comparer.compare(resultInputStream, compareOptions);
```
