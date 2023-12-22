---
id: load-file-from-local-disk
url: comparison/nodejs-java/load-file-from-local-disk
title: Load file from local disk
weight: 1
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from local disk when using GroupDocs.Comparison for Node.js via Java."
keywords: Load document from local disk, Load document from file path, Load document with GroupDocs.Comparison
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
    name: How Load file from local disk in JavaScript
    description: Learn how to load a file from a local disk in JavaScript step by step
    steps:
      - name: Create a string variable with the path to the file
        text: Create a string variable with the path to the source file. You may specify absolute or relative file paths as per your requirements.
      - name: Create an object and load the source file
        text: Create an object and load a source file by specifying in the parameter a string variable.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

When the source file is located on the local disk, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to load it using the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> class constructor by specifying an absolute or relative path. To load the target file located on the local disk, use the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify an absolute or relative path as the parameter.

The following code snippet shows how to load files from a local disk:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePdfPath);
comparer.add(targetPdfPath);
const resultPath = comparer.compare(resultPdfPath);
```