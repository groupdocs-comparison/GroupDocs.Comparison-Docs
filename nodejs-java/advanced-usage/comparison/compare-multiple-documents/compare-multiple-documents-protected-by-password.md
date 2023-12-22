---
id: compare-multiple-documents-protected-by-password
url: comparison/nodejs-java/compare-multiple-documents-protected-by-password
title: Compare multiple documents protected by password
weight: 1
description: "This article describes how to compare multiple Word documents or PowerPoint presentations protected by password using GroupDocs.Comparison for Node.js via Java API."
keywords: Compare multiple password-protected documents, compare multiple protected documents
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
    name: How to Compare multiple documents in JavaScript
    description: Learn how to compare multiple documents in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of the Comparer class. The constructor accepts the source file path or source file stream as the first parameter and a LoadOption object as a second parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target files
        text: Add the path to the target files using the Add method. The second parameter is a LoadOption object that contains the password.
      - name: Compare documents
        text: Call the Compare method of your object and pass the resulting file path as the parameter.
---

{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint, and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare more than two password-protected documents.

To compare several password-protected documents, follow these steps:

1.  Instantiate the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object. Specify the password for the source document.
2.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
3.  Instantiate another `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object and specify the password for the target document.
4.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-com.groupdocs.comparison.options.load.LoadOptions-)--> method and specify the target document path or stream and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object created in step 3. Repeat steps 3 and 4 for every target document.
5.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.

The following code snippets show how to compare several password-protected documents:

## Compare several password-protected documents from a local disk

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile, new groupdocs.comparison.LoadOptions("source-password"));
comparer.add(targetFile1, new groupdocs.comparison.LoadOptions("target-password"));
comparer.add(targetFile2, new groupdocs.comparison.LoadOptions("target-password"));
comparer.add(targetFile3, new groupdocs.comparison.LoadOptions("target-password"));
const resultPath = comparer.compare(resultFile);
```

## Compare several password-protected documents from a stream

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceInputStream, new groupdocs.comparison.LoadOptions("source-password"));
comparer.add(targetInputStream1, new groupdocs.comparison.LoadOptions("target-password"));
comparer.add(targetInputStream2, new groupdocs.comparison.LoadOptions("target-password"));
comparer.add(targetInputStream3, new groupdocs.comparison.LoadOptions("target-password"));
const resultPath = comparer.compare(resultInputStream);
```