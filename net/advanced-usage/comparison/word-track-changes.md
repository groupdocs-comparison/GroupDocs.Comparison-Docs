---
id: word-track-changes
url: comparison/net/word-track-changes
title: Show results of comparison as a Word Track Changes
weight: 13
description: "This article explains how to use the Microsoft Word Track Changes comparing as a built in feature in GroupDocs.Comparison for .NET."
keywords: WordTrackChanges, revisions
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

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to customize the display of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the Word Track Changes option is `false`. Follow these steps to turn on the Word Track Changes:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. Set the [WordTrackChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/wordtrackchanges) property to `true`;
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to disable the display of revisions:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    CompareOptions options = new CompareOptions() { WordTrackChanges = true };
    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/net/images/word-track-changes-option-true.png) |




|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/word-track-changes-option-false.png) |

