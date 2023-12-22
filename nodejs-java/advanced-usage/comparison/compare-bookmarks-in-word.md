---
id: compare-bookmarks-in-word
url: comparison/nodejs-java/compare-bookmarks-in-word
title: Compare bookmarks in Word documents
weight: 12
description: "This article explains how to activate the comparison of bookmarks for Word format in GroupDocs.Comparison for Node.js via Java."
keywords: bookmarks, Word, word, docx, doc, compare bookmarks, word bookmarks, CompareBookmarks, bookmarks comparison
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
    name: How to compare bookmarks in Word documents in JavaScript
    description: Learn how to compare bookmarks in Word documents in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CompareBookmarks of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare bookmarks in Word documents.

To compare bookmarks in the Word documents, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/)--> object. Specify the source file path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target file path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/)--> object. Set the `CompareBookmarks`<!--](https://reference.groupdocs.com/comparison/nodejs-java/groupdocs.comparison.options/compareoptions/properties/comparebookmarks)--> property to `true`.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/)--> object from the previous step.

The following code snippet shows how to demonstrate how to compare bookmarks:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);

const compareOptions = new groupdocs.comparison.CompareOptions();
compareOptions.setCompareBookmarks(true);
const resultPath = comparer.compare(outputPath, compareOptions);
```

The result of compared bookmarks is as follows:

![](/comparison/nodejs-java/images/compared-bookmarks.png)
