---
id: load-file-from-stream
url: comparison/nodejs-java/load-file-from-stream
title: Load file from stream
weight: 2
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from a stream when using GroupDocs.Comparison for Node.js via Java."
keywords: Load document from stream, Load document with GroupDocs.Comparison
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
    name: How to load a file from a stream in JavaScript
    description: Learn how to load a file from a stream in JavaScript step by step
    steps:
      - name: Create an object and specify source file stream
        text: Create an object of Comparer class. The constructor takes the source file stream. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the target file stream using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

To avoid the saving stream as a file, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to work with file streams directly.

To work with a stream, follow these steps:

1.  Obtain a file stream.
2.  Pass the opened source file stream to the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> class constructor or pass the opened target file stream to the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method.

The following code snippet shows how to load a file from a stream:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceInputStream);
comparer.add(targetInputStream);
const resultPath = comparer.compare(resultOutputStream);
```
