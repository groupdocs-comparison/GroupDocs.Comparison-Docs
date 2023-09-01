---
id: get-file-info
url: comparison/net/get-file-info
title: Get file info
weight: 2
description: "This article explains how to detect document file type, size and calculate pages count when annotate documents or images with GroupDocs.Comparison."
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
    name: Get Comparer file info in .NET
    description: Get Comparer file info in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Create a file info object
        text: Call the GetDocumentInfo method on the Source field of the comparer object and assign the result to file info object of IDocumentInfo class.
      - name: Get file information
        text: To get general information about a file, access the required field using the file info object. To get information about a particular page, use the PagesInfo field with the required page index and access the required field after that.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to get the following file information:

*   [FileType](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/filetype) represents the document file type (PDF, Word document, Excel spreadsheet, PowerPoint presentation or image etc.).
*   [PageCount](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/pagecount) represents count of document pages.
*   [FileSize](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/size) represents the document file size.
*   [PagesInfo](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.result/pageinfo) represents the page information.

The following code samples show how to get file information:

## Get file info for the file from local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ",
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/get-file-info.png)

## Get file for the file from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ",
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
}
```
{{< /tab >}}
{{< /tabs >}}
