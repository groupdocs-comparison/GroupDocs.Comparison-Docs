---
id: compare-documents
url: comparison/java/compare-documents
title: Compare documents
weight: 3
description: "This article demonstrates how to compare Word, Excel, PowerPoint, Outlook, OneNote, PDF, Image, HTML, AutoCAD, Visio, OpenDocument, OneNote documents using GroupDocs.Comparison for Java."
keywords: Compare documents, document comparison in Java
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
    name: How to compare documets in Java
    description: Learn how to compare documets in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---


Changes detection algorithms used by [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to detect changes in different document parts and blocks:

*   Text blocks - paragraphs, words and characters
*   Tables
*   Images
*   Shapes etc.

GroupDocs.Comparison highlights detected changes with different colors:

*   Added – <font color="blue">**blue** </font>
*   Modified – <font color="green">**green**</font>
*   Style – <font color="green">**green**</font>
*   Deleted – <font color="red">**red**</font>

You can customize the changes styling scheme using different formatting - italic, bold, underlined, strike through, etc.

To compare two documents, follow these steps:

1.   Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object with source document path or stream.
2.   Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method and specify target document path or stream.
3.   Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method.

The following code snippets show how to compare two documents:

## Compare local documents

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourcePdfPath)) {
    comparer.add(targetPdfPath);
    final Path resultPath = comparer.compare(resultPdfPath);
}
```
{{< /tab >}}
{{< /tabs >}}

The output file is as follows:

![](/comparison/java/images/compare-documents.png)

## Compare documents from stream

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceInputStream)) {
    comparer.add(targetInputStream);
    final Path resultPath = comparer.compare(resultOutputStream);
}
```
{{< /tab >}}
{{< /tabs >}}
