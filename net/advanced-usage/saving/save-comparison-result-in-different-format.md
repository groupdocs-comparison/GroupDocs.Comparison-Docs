---
id: save-comparison-result-in-different-format
url: comparison/net/save-comparison-result-in-different-format
title: Save comparison result in different format
weight: 3
description: "This article explains how to save comparison result in different format after files comparison within your .NET applications using GroupDocs.Comparison for .NET."
keywords: Compare document and save comparison result in different format
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
    name: How save comparison result in different format in .NET
    description: Learn how to save comparison result in different format in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to save output document in different formats.

To save output document in different format, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method. Specify the result document path with the required format.

The following code snippet shows how to save comparison result in different format:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.txt"))
{
    // Add target document
    comparer.Add("target.txt");

    // Compare and save comparison result
    comparer.Compare("result.pdf");
}
```
{{< /tab >}}
{{< /tabs >}}
