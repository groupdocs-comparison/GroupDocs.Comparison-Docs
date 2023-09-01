---
id: set-document-metadata-on-save
url: comparison/net/set-document-metadata-on-save
title: Set document metadata on save
weight: 1
description: "Follow this guide and learn how to set document metadata when saving output document after files comparison within your .NET applications."
keywords: Save document metadata,  Compare documents, Document comparison, File diff
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
    name: How set document metadata on save in .NET
    description: Learn how to set document metadata on save in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the SaveOtions object with the required metadata parameter initialised by MetadataType enum.
---

Document can contain some metadata information, such as author, organization, etc. [GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to select metadata source when saving output document.  

Possible metadata sources are as follows:

- Source document metadata
- Target document metadata
- User-defined metadata

To set output document metadata, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Instantiate the [SaveOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) object. Set the [CloneMetadataType](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions/properties/clonemetadatatype) property to the appropriate [MetadataType](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/metadatatype) variant.
4.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method. Specify the [SaveOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) object as a parameter.

The following code snippets show how to set output document metadata:

## Set metadata from source file

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Source });
}
```
{{< /tab >}}
{{< /tabs >}}

## Set metadata from target file

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Target });
}
```
{{< /tab >}}
{{< /tabs >}}

## Set user-defined metadata 

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    SaveOptions saveOptions = new SaveOptions()
    {
    	CloneMetadataType = MetadataType.FileAuthor,
        FileAuthorMetadata = new FileAuthorMetadata
        {
            Author = "Tom",
            Company = "GroupDocs",
            LastSaveBy = "Jack"
        }
    };
    comparer.Compare("result.docx", saveOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
