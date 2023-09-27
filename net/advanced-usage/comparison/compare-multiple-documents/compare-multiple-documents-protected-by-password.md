---
id: compare-multiple-documents-protected-by-password
url: comparison/net/compare-multiple-documents-protected-by-password
title: Compare multiple documents protected by password
weight: 1
description: "This article describes how to compare multiple Word documents or PowerPoint presentations protected by password using GroupDocs.Comparison for .NET API."
keywords: Compare multiple password protected documents, compare multiple protected documents
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
    name: How to Compare multiple documents in .NET
    description: Learn how to compare multiple documents in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path or source file stream by first parameter and a LoadOption object by second parameter that contains password. You may specify absolute or relative file path as per your requirements.
      - name: Load target files
        text: Add the path to the tagret files using the Add method. Second parameter is a LoadOption object that contains password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---

{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint, and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare more that two password-protected documents.

To compare several password-protected documents, follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object. Specify source document password.
2.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream and the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created in the previous step.
3.  Instantiate another [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object and specify target document password.
4.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify the target document path or stream and the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created at previous step. Repeat steps 3-4 for every target document.
5.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method.

The following code snippets shows how to compare several password-protected documents:

## Compare several password-protected documents from local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx", new LoadOptions() { Password = "1234" }))
{
	comparer.Add("target1.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target2.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target3.docx", new LoadOptions() { Password = "5678" });
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## Compare several password-protected documents from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"), new LoadOptions() { Password = "1234" }))
{
	comparer.Add(File.OpenRead("target1.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target2.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target3.docx"), new LoadOptions() { Password = "5678" });
    comparer.Compare(File.Create("result.docx"));
}
```
{{< /tab >}}
{{< /tabs >}}