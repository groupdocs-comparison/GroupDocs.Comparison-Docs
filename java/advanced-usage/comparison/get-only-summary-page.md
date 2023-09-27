---
id: get-only-summary-page
url: comparison/java/get-only-summary-page
title: Get only summary page
weight: 9
description: "This article explains how to get only summary page when comparing documents with GroupDocs.Comparison for Java."
keywords: Compare documents, summary page, SummaryPage, ShowOnlySummaryPage
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
    name: How to get only summary page in Java
    description: Learn how to get only summary page in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify ShowOnlySummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object.
      - name: Create an array for file changes
        text: Call the Compare method of your object and put the resulting file path parameter and compare options parameter.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to detect changes between source and target files and create the summary page only.

To get only summary page, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. Set the [ShowOnlySummaryPage](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowOnlySummaryPage-boolean-) property to `true`;
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to get only summary page.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourcePath)) {
	comparer.add(targetPath);
	CompareOptions options = new CompareOptions();
    options.setShowOnlySummaryPage(true);
    final Path resultPath = comparer.compare(outputPath, options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/get-only-summary-page.png)