---
id: compare-documents
url: comparison/net/compare-documents
title: Compare documents
weight: 3
description: "This article demonstrates how to compare Word, Excel, PowerPoint, Outlook, OneNote, PDF, Image, HTML, AutoCAD, Visio, OpenDocument, OneNote documents using GroupDocs.Comparison for .NET."
keywords: Compare documents, document comparison in C#
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
    name: How to compare documets in .NET
    description: Learn how to compare documets in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---


Changes detection algorithms used by [GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to detect changes in different document parts and blocks:

*   Text blocks - paragraphs, words and characters
*   Tables
*   Images
*   Shapes etc.

GroupDocs.Comparison highlights detected changes with different colors:

*   Added – <font color="blue">**blue** </font>
*   Modified – <font color="green">**green**</font>
*   Style – <font color="green">**green**</font>
*   Deleted – <font color="red">**red**</font>

You can customize the changes styling scheme using different formatting - italic, bold, underlined, strike through, etc.

To compare two documents, follow these steps:

1.   Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object with source document path or stream.
2.   Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify target document path or stream.
3.   Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method.

The following code snippets show how to compare two documents:

## Compare local documents

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## Compare documents from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	comparer.Compare(File.Create("result.docx"));
}
```
{{< /tab >}}
{{< /tabs >}}
