---
id: specify-file-type-manually
url: comparison/net/specify-file-type-manually
title: Specify file type for comparison manually
weight: 17
description: "Following this guide you will learn how to specify file type for comparison manually when use GroupDocs.Comparison for .NET."
keywords: File type, Document comparison
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
      - name: Create an object of LoadOption
        text: Create an object of LoadOption wich contains the file type.
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) provides the option to specify file type for comparison manually.

To compare two documents and specify file type for comparison manually follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object. Specify the [FileType](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions/filetype/).
2.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
3.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
4.  Call the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method.

The following code snippets show how to compare documents with a manually specified file type:

## Compare documents from local disk and specify file type for comparison manually

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

string sourcePath = @"source.docx";
string targetPath = @"target.docx";
string resultPath = @"result.docx";

// Create load options and set the file type
LoadOptions loadOptions = new LoadOptions();
loadOptions.FileType = FileType.DOCX;

using (Comparer comparer = new Comparer(sourcePath, loadOptions))
{
    // Add target document
    comparer.Add(targetPath, loadOptions);

    // Compare and save comparison result
    comparer.Compare(resultPath);
}
```
{{< /tab >}}
{{< /tabs >}}
