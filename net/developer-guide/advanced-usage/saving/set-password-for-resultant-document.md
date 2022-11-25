---
id: set-password-for-resultant-document
url: comparison/net/set-password-for-resultant-document
title: Set password for resultant document
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

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** allows to protect resultant document with password.

The following are the steps to protect resultant document:

- Instantiate [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object with source document path or stream;
- Call [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify target document path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object with [PasswordSaveOption](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/passwordsaveoption) = [PasswordSaveOption](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/passwordsaveoption).User;
- Instantiate [SaveOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) object and set to [Password](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/saveoptions/properties/password) property desired password for resultant document;
- Call [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) method and pass [SaveOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) and [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions)  objects to a method.

The following code snippet demonstrates how to compare documents and protect resultant document with password.

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

## More resources

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

### Free Online App

Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
