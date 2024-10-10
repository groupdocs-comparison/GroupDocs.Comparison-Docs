---
id: get-list-of-changes
url: comparison/net/get-list-of-changes
title: Get list of changes
weight: 6
description: "This article explains how to get collection of changes between compared documents when using GroupDocs.Comparison for .NET."
keywords: Get file diff, documents diff, compare documents, compare files
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
    name: How to get list of changes in .NET
    description: Learn how to get list of changes in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path or source file stream parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file or tagret file stream using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to get  list of changes between source and target documents.

To get list of changes, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare) method.
4.  Call the [GetChanges](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges) method.

The following code snippets show how to get list of all changes:

## Get list of changes from local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
        Console.WriteLine("Change Type: {0}, Page: {1}, Change ID: {2}, Text: {3}", 
            change.Type, 
            change.PageInfo.PageNumber, 
            change.Id, 
            change.Text
        );
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/get-changes-list.png)

## Get list of changes from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
    comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
        Console.WriteLine("Change Type: {0}, Page: {1}, Change ID: {2}, Text: {3}", 
            change.Type, 
            change.PageInfo.PageNumber, 
            change.Id, 
            change.Text
        );
}
```
{{< /tab >}}
{{< /tabs >}}
