---
id: load-file-from-local-disk
url: comparison/net/load-file-from-local-disk
title: Load file from local disk
weight: 1
description: "Pass an absolute or relative file path to the Comparer constructor to load the source document from local disk, then use Add() for the target file in GroupDocs.Comparison for .NET."
keywords: load file from local disk, Comparer file path, local document comparison, absolute path, relative path, Comparer constructor C#
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
    name: How Load file from local disk in .NET
    description: Learn how to load file from local disk in .NET step by step
    steps:
      - name: Create a string variable with the path to the file
        text: Create a string variable with the path to the source file. You may specify absolute or relative file path as per your requirements.
      - name: Create an object and load source file
        text: Create an object and load a source file by specifying in the parameter a string variable.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

When the source file is located on the local disk, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to load it using the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) class constructor by specifying absolute or relative path. To load the target file located on the local disk, use the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify absolute or relative path as parameter.

The following code snippet shows how to load files from local disk:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## See also

- [Load file from stream]({{< ref "comparison/net/advanced-usage/loading/load-file-from-stream.md" >}})
- [Load password-protected documents]({{< ref "comparison/net/advanced-usage/loading/load-password-protected-documents.md" >}})
- [Compare documents]({{< ref "comparison/net/comparison-basic/compare-documents.md" >}})
