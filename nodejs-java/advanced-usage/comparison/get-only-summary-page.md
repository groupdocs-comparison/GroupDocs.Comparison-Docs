---
id: get-only-summary-page
url: comparison/nodejs-java/get-only-summary-page
title: Get only summary page
weight: 9
description: "This article explains how to get only a summary page when comparing documents with GroupDocs.Comparison for Node.js via Java."
keywords: Compare documents, summary page, SummaryPage, ShowOnlySummaryPage
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
    name: How to get only a summary page in JavaScript
    description: Learn how to get only a summary page in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify ShowOnlySummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object.
      - name: Create an array for file changes
        text: Call the Compare method of your object and put the resulting file path parameter and compare options parameter.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to detect changes between source and target files and create the summary page only.

To get only a summary page, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object. Set the `ShowOnlySummaryPage`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowOnlySummaryPage-boolean-)--> property to `true`;
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object from the previous step.

The following code snippet shows how to get only a summary page.

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);
const options = new groupdocs.comparison.CompareOptions();
options.setShowOnlySummaryPage(true);
const resultPath = comparer.compare(outputPath, options);
```

The result is as follows:

![](/comparison/nodejs-java/images/get-only-summary-page.png)