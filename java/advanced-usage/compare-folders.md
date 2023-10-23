---
id: compare-folders
url: comparison/java/compare-folders
title: Comparing Folders
weight: 4
description: "This page describes how to compare two folders and find out which files/folders were deleted, added or modified."
keywords: Directories comparison, folders comparison
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare directories(folders) natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to compare directories (folders) in Java
    description: Learn how to compare directories in Java step by step
    steps:
      - name: Create an object CompareOptions
        text: Create a CompareOptions object by specifying the DirectoryCompare option - true.
      - name: Create an object Comparer
        text: Initialize the comparer object of Comparer class, in its parameters specify the path to the first compared folder, the second parameter is the CompareOptions object.
      - name: Add second folder
        text: Call the add method for the comparer object, specifying the path to the second folder and the CompareOptions object.
      - name: Compare
        text: Call the compare method for the comparer object, specifying the path to save the compare results and the CompareOptions object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to compare the contents of a folder (directory), process and save the result of processing. The steps for _starting the comparison_ and _configuring_ the display of the processing result in the resulting file are described below.

1. Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. 
1. Call the `setDirectoryCompare` method to set the `DirectoryCompare` property to `true`.
1. If needed, call the `setFolderComparisonExtension` property to change the output format to `HTML`. By default the format is `TXT`.
1. If needed, call the`setShowOnlyChanged` property to `true` to display only changed items.
2. Initialize the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the path to the first compared folder and the `CompareOptions` object.
3. Call the [add](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-com.groupdocs.comparison.options.CompareOptions-) method of the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify a  path to the second folder and the `CompareOptions` object.
4. Call the [compare](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-com.groupdocs.comparison.options.CompareOptions-) method of the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify a path to save the compare results and the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object.

The following code snippet shows how to compare the `folder1` and `folder2` folders:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
CompareOptions compareOptions = new CompareOptions();
compareOptions.setDirectoryCompare(true);
try (Comparer comparer = new Comparer("C:\\folder1\\", compareOptions)) {
    comparer.add("C:\\folder2\\", compareOptions);
    comparer.compare("C:\\res.html", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following images show the comparison result:

| Result in HTML                                                 | Result in TXT                                                 |
| -------------------------------------------------------------- | ------------------------------------------------------------- |
| ![](/comparison/java/images/result-comparison-folders-html.png) | ![](/comparison/java/images/result-comparison-folders-txt.png) |
