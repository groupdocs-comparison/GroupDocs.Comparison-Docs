---
id: get-extended-information-on-the-summary-page
url: comparison/nodejs-java/get-extended-information-on-the-summary-page
title: Get extended information on the summary page
weight: 10
description: "This article explains how to get extended information about comparison of documents on the summary page with GroupDocs.Comparison for Node.js via Java."
keywords: Compare documents, summary page, SummaryPage, extended information, ExtendedSummaryPage
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
    name: How to get extended information on the summary page in Java
    description: Learn how to get extended information on the summary page in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify ExtendedSummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and compare options parameter.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to detect changes between source and target files and display changes on the separate page - [SummaryPage](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setGenerateSummaryPage-boolean-).
You can also get the extended information about comparison of documents, which is displayed in the [SummaryPage](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setGenerateSummaryPage-boolean-).

To get extended information, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions) object. Set the [ExtendedSummaryPage](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setExtendedSummaryPage-boolean-) property to `true`.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to get extended information:

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);
const options = new groupdocs.comparison.CompareOptions();
options.setExtendedSummaryPage(true);
const resultPath = comparer.compare(outputPath, options);
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/nodejs-java/images/how-to-get-extended-information-image.png)


