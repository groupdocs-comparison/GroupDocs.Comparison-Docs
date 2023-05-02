---
id: compare-folders
url: comparison/net/compare-folders
title: Comparing Folders
weight: 4
description: "By following this guide, you will learn how to compare two folders and find out which files/folders were deleted, added or modified."
keywords: Directories comparison, folders comparison
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare directories(folders) natively with high performance using C# language and GroupDocs.Comparison for .NET
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
        text: Initialize the Compare object, in its parameters specify the path to the first compared folder, the second parameter is the CompareOptions object.
      - name: Add second folder
        text: Call the Add method for the Compare object, specifying the path to the second folder and the CompareOptions object.
      - name: Compare
        text: Call the Compare method for the Compare object, specifying the path to save the Compare results and the CompareOptions object.
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides an opportunity to compare the contents of a folder(directory), process and save the result of processing. The steps for _starting the comparison_ and _configuring_ the display of the processing result in the resulting file are described below.

- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object by specifying the DirectoryCompare option - true;
```csharp
 CompareOptions compareOptions = new CompareOptions
{
  DirectoryCompare = true
};
```
- Initialize the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object, in its parameters specify the path to the first compared folder, the second parameter is the CompareOptions object;
```csharp
  Comparer comparer = new Comparer("C:\\Folder_1", compareOptions);
```
- Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/add/#add_*) method for the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object, specifying the path to the second folder and the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object;
```csharp
  comparer.Add("C:\\Folder_2", compareOptions);
```
- Call the [Compare](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/compare/#compare) method for the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object, specifying the path to save the compare results and the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object.
```csharp
  comparer.Compare("C:\\Folder_to_save_result\\", compareOptions);
```
- You can select the format for saving the result in the FormatFolderComparison option. The default is _txt_.
```csharp
 CompareOptions compareOptions = new CompareOptions
{
  FolderComparisonExtension = FolderComparisonExtension.HTML;
};
```

Also, you can use the ShowOnlyChanged option to display only changed items as a result. This is useful when comparing a large directory.
```csharp
CompareOptions compareOptions = new CompareOptions
{
    ShowOnlyChanged = true
};
```

## Comparing directories on the local disk

```csharp
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
## Result of comparing the two folders

Below is the output file based on the code presented earlier.

| Result in HTML                                                 | Result in TXT                                                 |
| -------------------------------------------------------------- | ------------------------------------------------------------- |
| ![](/comparison/net/images/result-comparison-folders-html.png) | ![](/comparison/net/images/result-comparison-folders-txt.png) |

## More resources

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

### Free Online App

Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
