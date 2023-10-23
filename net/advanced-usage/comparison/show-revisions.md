---
id: show-revisions
url: comparison/net/show-revisions
title: Show Revisions
weight: 14
description: "This article explains how to customize the display of revisions in the output document in GroupDocs.Comparison for .NET."
keywords: ShowRevisions, revision
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
    name: How to show Revisions in .NET
    description: Learn how to show Revisions in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify ShowRevisions of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare and customize the display of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the display of revisions is enabled. To turn off the display of revisions, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. Set the [ShowRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showrevisions) property to `false`.
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how disable the display of revisions:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {ShowRevisions = false};
    comparer.Compare(resultPath, options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                            Closed state                             |                             Open state                             |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/net/images/show-revisions-true-close-revisions.png) | ![](/comparison/net/images/show-revisions-true-open-revisions.png) |


|              Disable display Revisions               |
| :--------------------------------------------------: |
| ![](/comparison/net/images/show-revisions-false.png) |

