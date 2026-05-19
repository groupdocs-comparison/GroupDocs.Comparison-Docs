---
id: load-password-protected-documents
url: comparison/net/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "Compare password-protected PDF, Word, Excel, or PowerPoint files by passing LoadOptions.Password for both source and target documents in GroupDocs.Comparison for .NET."
keywords: LoadOptions.Password, protected PDF C#, protected DOCX, encrypted document comparison, password-protected file comparison, compare locked documents
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
    name: How to load a password-protected document in .NET
    description: Learn how to load a password-protected document in .NET step by step
    steps:
      - name: Create an object of LoadOption
        text: Create an object of LoadOption which contains the password parameters.
      - name: Load target file
        text: Add the path to the target files using the Add method. Second parameter is a LoadOption object that contains password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare documents that are protected with a password.  

To compare password-protected documents, follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions) object. Specify source document password;
2.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source document path or stream and [LoadOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions) object created in the previous step.
3.  Instantiate another [LoadOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions) object. Specify target document password.
4.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream and the [LoadOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions) object created in the previous step.
5.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method.

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

## See also

- [Specify file type manually]({{< ref "comparison/net/advanced-usage/loading/specify-file-type-manually.md" >}})
- [Load custom fonts]({{< ref "comparison/net/advanced-usage/loading/load-custom-fonts.md" >}})
- [Compare documents]({{< ref "comparison/net/comparison-basic/compare-documents.md" >}})
- [Set password for output document]({{< ref "comparison/net/advanced-usage/saving/set-password-for-resultant-document.md" >}})
