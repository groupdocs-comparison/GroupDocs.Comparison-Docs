---
id: load-password-protected-documents
url: comparison/net/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "This article explains how to load password-protected PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for .NET."
keywords: Load password-protected document, Load protected document with GroupDocs.Comparison
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
    name: How load file from stream in .NET
    description: Learn how to load file from stream in .NET step by step
    steps:
      - name: Create an object of LoadOption
        text: Create an object of LoadOption wich contains the password parameters.
      - name: Load target file
        text: Add the path to the tagret files using the Add method. Second parameter is a LoadOption object that contains password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare documents that are protected with a password.  

To compare password-protected documents, follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object. Specify source document password;
2.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream and [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created in the previous step.
3.  Instantiate another [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object. Specify target document password.
4.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream and the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created in the previous step.
5.  Call the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method.

The following code snippet shows how to compare password protected documents:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

LoadOptions sourceLoadOptions = new LoadOptions(){ Password = "1234" };

using (Comparer comparer = new Comparer("source.docx", sourceLoadOptions))
{
    LoadOptions targetLoadOptions =	new LoadOptions() { Password = "5678" };
    comparer.Add("target.docx", targetLoadOptions);
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}