---
id: set-password-for-output-document
url: comparison/net/set-password-for-output-document
title: Set password for output document
weight: 2
description: "This article explains how to set document password after files comparison within your .NET applications using GroupDocs.Comparison for .NET."
keywords: Compare document and protect with password
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
      - name: Create an object of CompareOptions
        text: Create an object of CompareOptions class with the PasswordSaveOption parameter initialised by PasswordSaveOption enum value.
      - name: Create an object of SaveOptions
        text: Create an object of SaveOptions class with the Password parameter.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter, SaveObject object and CompareOption object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to protect output document with password.

To protect output document, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object. Set the  [PasswordSaveOption](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/passwordsaveoption) to `PasswordSaveOption.User`.
4.  Instantiate the [SaveOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) object. Use the [Password](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/saveoptions/properties/password) property to specify a password string.
5.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method. Specify the [SaveOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) and [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) objects as parameters.

The following code snippet shows how to compare documents and protect the output document with password:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions cOptions = new CompareOptions
    {
     	PasswordSaveOption = PasswordSaveOption.User
    };
    SaveOptions sOptions = new SaveOptions()
    {
     	Password = "3333"
    };
    comparer.Compare("result.docx", sOptions, cOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
