---
id: show-gap-lines
url: comparison/net/show-gap-lines
title: Show gap lines instead of changes
weight: 15
description: "This article explains how to adjust the display of the output document so that the changed content is replaced with empty lines in GroupDocs.Comparison for .NET."
keywords: LeaveGaps, gap lines, empty lines
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using C# language and GroupDocs.Comparison for .NET
    productCode: comparison
    productPlatform: net
  showVideo: True
  howTo:
    name: How to show gap lines instead of changes in .NET
    description: How to show gap lines instead of changes in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify ShowInsertedContent and ShowDeletedContent of false value and LeaveGaps of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to adjust appearance of the output document.

By default, changes from the two input files (source and target files) are added to the output document and highlighted. Use the [ShowInsertedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) and [ShowDeletedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) properties to configure the content of the output file.

Use the [LeaveGaps](https://reference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) property to adjust the display of the output document, which allows to replace changed content with empty lines. To use this property, activate the [ShowInsertedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) and [ShowDeletedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) properties.

Follow these steps to adjust appearance of the output document:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. Sets the [ShowInsertedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent), [ShowDeletedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent), and/or [LeaveGaps](https://reference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) properties.
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how get the desired result

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    CompareOptions options = new CompareOptions();
    options.ShowInsertedContent = false;
    options.ShowDeletedContent = false;
    options.LeaveGaps = true;

    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                        Default result                         |                Result without LeaveGaps property                 |
| :-----------------------------------------------------------: | :--------------------------------------------------------------: |
| ![](/comparison/net/images/show-gap-lines-default-result.png) | ![](/comparison/net/images/show-gap-lines-without-leavegaps.png) |

|                        Default result                         |                Result with LeaveGaps property                 |
| :-----------------------------------------------------------: | :-----------------------------------------------------------: |
| ![](/comparison/net/images/show-gap-lines-default-result.png) | ![](/comparison/net/images/show-gap-lines-with-leavegaps.png) |
