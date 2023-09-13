---
id: word-track-changes
url: comparison/java/word-track-changes
title: Show results of comparison as a Word Track Changes
weight: 12
description: "This article explains how to use the Microsoft Word Track Changes comparing as a built in feature in GroupDocs.Comparison for Java."
keywords: WordTrackChanges, revisions
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
    name: How to show results of comparison as a Word Track Changes
    description: Learn how to use Word Track Changes in comparison result
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify WordTrackChanges of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to customize the display of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the Word Track Changes option is `false`. Follow these steps to turn on the Word Track Changes:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.options/compareoptions) object. Set the [WordTrackChanges](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.options/compareoptions/properties/wordtrackchanges) property to `true`;
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to disable the display of revisions:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    CompareOptions options = new CompareOptions();
    options.setWordTrackChanges(true);
    comparer.compare(resultPath, options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/java/images/word-track-changes-option-true.png) |




|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/java/images/word-track-changes-option-false.png) |

