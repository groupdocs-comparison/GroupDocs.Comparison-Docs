---
id: compare-multiple-documents
url: comparison/net/compare-multiple-documents
title: Compare multiple documents
weight: 3
description: "Learn more about how to compare multiple Word documents or PowerPoint presentations simultaneously with GroupDocs.Comparison for .NET."
keywords: Compare multiple documents, documents multi-comparison, compare more than two documents 
productName: GroupDocs.Comparison for .NET
hideChildren: True
structuredData:
    showOrganization: True
---
{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare more that two documents.

To compare several documents, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify target document path or stream. Repeat this step for every target document.
3.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method.

The following code snippets show how to several documents:

## Compare several documents from a local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/compare-multiple-word.png)

## Compare several documents from a stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    comparer.Compare(File.Create("result.docx"));
}
```
{{< /tab >}}
{{< /tabs >}}


