---
id: compare-documents
url: comparison/nodejs-java/compare-documents
title: Compare documents
weight: 3
description: "This article demonstrates how to compare Word, Excel, PowerPoint, Outlook, OneNote, PDF, Image, HTML, AutoCAD, Visio, OpenDocument, OneNote documents using GroupDocs.Comparison for Node.js via Java."
keywords: Compare documents, document comparison in JavaScript
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
    name: How to compare documents in JavaScriptScript
    description: Learn how to compare documents in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---


Change detection algorithms of [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allow you to detect changes in different document parts and blocks:

*   Text blocks - paragraphs, words and characters
*   Tables
*   Images
*   Shapes etc.

GroupDocs.Comparison highlights detected changes with different colors:

*   Added – <font color="blue">**blue** </font>
*   Modified – <font color="green">**green**</font>
*   Style – <font color="green">**green**</font>
*   Deleted – <font color="red">**red**</font>

You can customize the changes styling scheme using different formatting - italic, bold, underlined, strike-through, etc.

To compare two documents, follow these steps:

1.   Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object with the source document path or stream.
2.   Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method and specify the target document path or stream.
3.   Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.

The following code snippets show how to compare two documents:

## Compare local documents

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePdfPath)
comparer.add(targetPdfPath);
comparer.compare(resultPdfPath);
```

The output file is as follows:

![](/comparison/nodejs-java/images/compare-documents.png)

## Compare documents from a stream

```javascript
const comparer = new groupdocs.comparison.Comparer(new FileInputStream(sourcePdfPath))
comparer.add(new FileInputStream(targetPdfPath));
comparer.compare(resultPdfPath);
```

