---
id: get-source-and-target-text-from-files
url: comparison/net/get-source-and-target-text-from-files
title: Get source and target text from files
weight: 7
description: "This article explains how to get source and target texts of specific changes using GroupDocs.Comparison for .NET."
keywords: Get target txt, Get source txt, documents diff, compare documents, compare files
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
    name: How to get source and target text in .NET
    description: Learn how to get source and target text in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path or source file stream parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file or tagret file stream using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify ExtendedSummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Output the changes text
        text: Display source or target text of the changes using change info array element.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to get source and target texts of specific changes in the output file.

To get a list of changed source and target texts, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare) method.
4.  Call the [GetChanges](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges) method.

The following code snippets show how to get specified texts from a file.

## Get target text from local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
    }
}
```
{{< /tab >}}
{{< /tabs >}}

## Get target text from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
    comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
    }
}
```
{{< /tab >}}
{{< /tabs >}}