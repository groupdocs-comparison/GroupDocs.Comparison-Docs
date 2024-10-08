---
id: show-revisions
url: comparison/java/show-revisions
title: Show Revisions
weight: 14
description: "This article explains how to customize the display of revisions in the output document in GroupDocs.Comparison for Java."
keywords: ShowRevisions, revision
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
    name: How to show Revisions in Java
    description: Learn how to show Revisions in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify ShowRevisions of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to compare and customize the display of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the display of revisions is enabled. To turn off the display of revisions, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/) object. Specify the source file path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) object. Set the [ShowRevisions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowRevisions-boolean-) property to `false`.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) object from the previous step.

The following code snippet shows how disable the display of revisions:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");
    CompareOptions options = new CompareOptions();
    options.setShowRevisions(false);
    final Path resultPath = comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                            Closed state                             |                             Open state                             |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/java/images/show-revisions-true-close-revisions.png) | ![](/comparison/java/images/show-revisions-true-open-revisions.png) |


|              Disable display Revisions               |
| :--------------------------------------------------: |
| ![](/comparison/java/images/show-revisions-false.png) |

