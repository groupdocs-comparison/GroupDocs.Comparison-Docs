---
id: setting-author-of-changes
url: comparison/java/setting-author-of-changes
title: Setting author of changes
weight: 16
description: "This article explains how to set author of changes name in the resulting document in GroupDocs.Comparison for Java."
keywords: RevisionAuthorName, author, revision
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
    name: How to set author of changes in Java
    description: How to set author of changes in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the add method.
      - name: Specify necessary settings
        text: Create an options object and specify WordTrackChanges and ShowRevisions of true value and set name in RevisionAuthorName.
      - name: Compare documents
        text: Call the compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to set author of changes name in the resulting document. To do this, follow these steps:
1. Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify a source file path or an input stream.
2. Call the [add](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify a target file path or an input stream.
3. Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. Set the [WordTrackChanges](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setWordTrackChanges-boolean-) and [ShowRevisions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowRevisions-boolean-) properties to `true`.
4. Set author of changes by changing the [RevisionAuthorName](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setRevisionAuthorName-java.lang.String-) property.
5. Call the [compare](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object from previous step.

The following code snippet shows how to change author of changes:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);

        CompareOptions compareOptions = new CompareOptions();
        compareOptions.setShowRevisions(true);
        compareOptions.setWordTrackChanges(true);
        compareOptions.setRevisionAuthorName("New author");

        comparer.compare(resultPath, compareOptions);
    }
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

 ![Change author](/comparison/java/images/set-new-author-of-changes-example.png)


