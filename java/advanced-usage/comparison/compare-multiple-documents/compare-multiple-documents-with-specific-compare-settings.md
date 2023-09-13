---
id: compare-multiple-documents-with-specific-compare-settings
url: comparison/java/compare-multiple-documents-with-specific-compare-settings
title: Compare multiple documents with specific compare settings
weight: 2
description: "Following this guide you will learn how to compare multiple documents with different customizations - style detection, change comparison detalization level and more."
keywords: Compare multiple documents, style change detection, Multi-compare files
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
    name: How to compare multiple documents with specific compare settings in Java
    description: Learn how to compare multiple documents with specific compare settings in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Specify necessary settings
        text: Create a compare options object and specify necessary settings.
      - name: Load target files
        text: Add the path to the target files using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

{{< alert style="info" >}}This feature available for Microsoft Word documents, Microsoft PowerPoint, and Open Document presentations only.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to compare more than two documents and specify specific comparison options like styling for detected changes, comparison detalization level, etc.

To compare multiple documents using the specific options, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2. Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method and specify the target document path or stream. Repeat this step for every target document.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object and specify the appropriate options.
4.  Call the [compare](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-com.groupdocs.comparison.options.CompareOptions-) method. Specify the pass [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippets show how to compare multiple documents with the appropriate options:

## Compare multiple documents with specific compare settings from local disk

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceFile)) {
    comparer.add(targetFile1);
    comparer.add(targetFile2);
    comparer.add(targetFile3);

    final StyleSettings styleSettings = new StyleSettings();
    styleSettings.setFontColor(Color.YELLOW);

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setInsertedItemStyle(styleSettings);

    final Path resultPath = comparer.compare(resultFile, compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/compare-multiple-settings.png)

## Compare multiple documents with specific compare settings from stream

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceInputStream)) {
    comparer.add(targetInputStream1);
    comparer.add(targetInputStream2);
    comparer.add(targetInputStream3);

    final StyleSettings styleSettings = new StyleSettings();
    styleSettings.setFontColor(Color.YELLOW);

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setInsertedItemStyle(styleSettings);

    final Path resultPath = comparer.compare(resultInputStream, compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
