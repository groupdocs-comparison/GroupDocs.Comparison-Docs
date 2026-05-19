---
id: specify-file-type-manually
url: comparison/net/specify-file-type-manually
title: Specify file type for comparison manually
weight: 6
description: "Specify a document file type manually in GroupDocs.Comparison for .NET via LoadOptions.FileType to skip auto-detection and speed up loading of large files."
keywords: File type, LoadOptions, FileType, auto-detection, FromFileNameOrExtension, document comparison performance
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
    name: How to specify file type for comparison manually in .NET
    description: Learn how to specify file type for comparison manually in .NET step by step
    steps:
      - name: Create an object of LoadOptions
        text: Create a LoadOptions object and set the FileType property to the known document format.
      - name: Create an object and load source file
        text: Create a Comparer object, passing the source file path and the LoadOptions object to the constructor.
      - name: Load target file
        text: Add the target file using the Add method, passing the same LoadOptions object as the second argument.
      - name: Compare documents
        text: Call the Compare method of your Comparer object and pass the resulting file path.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) lets you specify the document file type explicitly via [LoadOptions.FileType](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions/filetype/) instead of relying on automatic format detection.

## Why specify the file type

When no file type is provided, GroupDocs.Comparison inspects the file's contents to determine its format. This detection is reliable but adds processing time, which can be noticeable for **large files**.

If you already know the format — for example, because the input is constrained by your application — passing it explicitly skips detection and lets the library go straight to loading. For high-throughput pipelines or batch jobs over large documents, this can produce a measurable speedup.

## Specify the file type explicitly

Use this approach when the document format is known at compile time.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

LoadOptions loadOptions = new LoadOptions
{
    FileType = FileType.DOCX
};

using (Comparer comparer = new Comparer("source.docx", loadOptions))
{
    comparer.Add("target.docx", loadOptions);
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## Derive the file type from a file path

When the file path is available and its extension is reliable, use [FileType.FromFileNameOrExtension](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype/) to resolve the `FileType` from the extension. This still skips content-based auto-detection, but keeps the calling code generic.

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using GroupDocs.Comparison.Result;
// ...

string sourcePath = "source.docx";
string targetPath = "target.docx";

LoadOptions sourceLoadOptions = new LoadOptions
{
    FileType = FileType.FromFileNameOrExtension(sourcePath)
};

LoadOptions targetLoadOptions = new LoadOptions
{
    FileType = FileType.FromFileNameOrExtension(targetPath)
};

using (Comparer comparer = new Comparer(sourcePath, sourceLoadOptions))
{
    comparer.Add(targetPath, targetLoadOptions);
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## See also

- [LoadOptions API reference](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions/)
- [Supported document formats]({{< ref "/comparison/net/getting-started/supported-document-formats.md" >}})
- [Load password-protected documents]({{< ref "/comparison/net/advanced-usage/loading/load-password-protected-documents.md" >}})
- [Load custom fonts]({{< ref "/comparison/net/advanced-usage/loading/load-custom-fonts.md" >}})
