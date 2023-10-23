---
id: compare-folders
url: comparison/net/compare-folders
title: Comparing Folders
weight: 4
description: "This page describes how to compare two folders and find out which files/folders were deleted, added or modified."
keywords: Directories comparison, folders comparison
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare directories(folders) natively with high performance using .NET language and GroupDocs.Comparison for .NET
    productCode: comparison
    productPlatform: net
  showVideo: True
  howTo:
    name: How to compare directories (folders) in .NET
    description: Learn how to compare directories in .NET step by step
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

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare the contents of a folder (directory), process and save the result of processing. The steps for _starting the comparison_ and _configuring_ the display of the processing result in the resulting file are described below.

1. Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. 
1. Set the `DirectoryCompare` property to `true`.
1. If needed, set the `setFolderComparisonExtension` property to change the output format to `HTML`. By default the format is `TXT`.
1. If needed, set the`ShowOnlyChanged` property to `true` to display only changed items.
2. Initialize the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the path to the first compared folder and the `CompareOptions` object.
3. Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/add/#add_*) method of the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify a  path to the second folder and the `CompareOptions` object.
4. Call the [Compare](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/compare/#compare) method of the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify a path to save the compare results and the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object.

The following code snippet shows how to compare the `folder1` and `folder2` folders:

{{< tabs "example1">}}
{{< tab ".NET" >}}
```cs
using System;
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
class YoursProgram
{
  static void Main(string[] args)
  {
      CompareOptions compareOptions = new CompareOptions
      {
          DirectoryCompare = true,
      };
      Comparer comparer = new Comparer("C:\\Folder_1", compareOptions);
      comparer.Add("C:\\Folder_2", compareOptions);
      comparer.Compare("C:\\Folder_to_save_result\\", compareOptions);
  }
}
```
{{< /tab >}}
{{< /tabs >}}

The following images show the comparison result:

| Result in HTML                                                 | Result in TXT                                                 |
| -------------------------------------------------------------- | ------------------------------------------------------------- |
| ![](/comparison/net/images/result-comparison-folders-html.png) | ![](/comparison/net/images/result-comparison-folders-txt.png) |
