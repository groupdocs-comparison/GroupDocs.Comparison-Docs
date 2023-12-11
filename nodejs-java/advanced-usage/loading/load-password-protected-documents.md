---
id: load-password-protected-documents
url: comparison/nodejs-java/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "This article explains how to load password-protected PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Node.js via Java."
keywords: Load password-protected document, Load protected document with GroupDocs.Comparison
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
    name: How load file from stream in Java
    description: Learn how to load file from stream in Java step by step
    steps:
      - name: Create an object of LoadOption
        text: Create an object of LoadOption wich contains the password parameters.
      - name: Load target file
        text: Add the path to the target files using the Add method. Second parameter is a LoadOption object that contains password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare documents that are protected with a password.  

To compare password-protected documents, follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions) object. Specify source document password;
2.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream and [LoadOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions) object created in the previous step.
3.  Instantiate another [LoadOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions) object. Specify target document password.
4.  Call the [add()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream and the [LoadOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions) object created in the previous step.
5.  Call the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) method.

The following code snippet shows how to compare password protected documents:

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceExcelDocument, new groupdocs.comparison.LoadOptions("password"));
comparer.add(targetExcelDocument, new groupdocs.comparison.LoadOptions("password"));
comparer.compare(resultExcelDocument);
```
{{< /tab >}}
{{< /tabs >}}