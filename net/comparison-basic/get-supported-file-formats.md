---
id: get-supported-document-formats
url: comparison/net/get-supported-document-formats
title: Get supported file formats
weight: 1
description: "This article explains how to obtain supported file formats list when viewing documents with GroupDocs.Comparison within your .NET applications."
keywords: Get file info, Get File Type, Page count, File size
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
    name: Get file formats supported by Comparison in .NET
    description: Get file formats supported by Comparison .NET step by step
    steps:
      - name: Get an array supported file types
        text: Call the GetSupportedFileTypes method using the FileType object. Additional OrderBy method can be sorting rezulting array, it using lambda expression as parameter. And assign the result to a collection with a FileType data type, with the possibility of iteration.
      - name: Output supported file types
        text: Using iteration of your collection, you can display the supported data types, for example, to the console.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to get the list of all [supported file formats]({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}). To do this, follow these steps:

1. Call the [GetSupportedFileTypes](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype/methods/getsupportedfiletypes) method of the [FileType](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype) class.
2. Enumerate through the collection of the [FileType](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype) objects.

The following code snippet shows how to get list of supported file formats:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
IEnumerable<FileType> supportedFileTypes = FileType
	.GetSupportedFileTypes()
	.OrderBy(f => f.Extension);

foreach (FileType fileType in supportedFileTypes)
	Console.WriteLine(fileType);
```
{{< /tab >}}
{{< /tabs >}}
