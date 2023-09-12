---
id: compare-multiple-documents-protected-by-password
url: comparison/java/compare-multiple-documents-protected-by-password
title: Compare multiple documents protected by password
weight: 1
description: "This article describes how to compare multiple Word documents or PowerPoint presentations protected by password using GroupDocs.Comparison for Java API."
keywords: Compare multiple password protected documents, compare multiple protected documents
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to Compare multiple documents in Java
    description: Learn how to compare multiple documents in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path or source file stream by first parameter and a LoadOption object by second parameter that contains password. You may specify absolute or relative file path as per your requirements.
      - name: Load target files
        text: Add the path to the target files using the Add method. Second parameter is a LoadOption object that contains password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---

{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint, and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to compare more that two password-protected documents.

To compare several password-protected documents, follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions) object. Specify source document password.
2.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream and the [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions) object created in the previous step.
3.  Instantiate another [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions) object and specify target document password.
4.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-com.groupdocs.comparison.options.load.LoadOptions-) method and specify the target document path or stream and the [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions) object created at previous step. Repeat steps 3-4 for every target document.
5.  Call the [compare](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method.

The following code snippets shows how to compare several password-protected documents:

## Compare several password-protected documents from local disk

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceFile, new LoadOptions("source-password"))) {
    comparer.add(targetFile1, new LoadOptions("target-password"));
    comparer.add(targetFile2, new LoadOptions("target-password"));
    comparer.add(targetFile3, new LoadOptions("target-password"));
    final Path resultPath = comparer.compare(resultFile);
}
```
{{< /tab >}}
{{< /tabs >}}

## Compare several password-protected documents from stream

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceInputStream, new LoadOptions("source-password"))) {
    comparer.add(targetInputStream1, new LoadOptions("target-password"));
    comparer.add(targetInputStream2, new LoadOptions("target-password"));
    comparer.add(targetInputStream3, new LoadOptions("target-password"));
    final Path resultPath = comparer.compare(resultInputStream);
}
```
{{< /tab >}}
{{< /tabs >}}