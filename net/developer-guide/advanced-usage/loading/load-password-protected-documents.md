---
id: load-password-protected-documents
url: comparison/net/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "This article explains how to load password-protected PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for .NET."
keywords: Load password-protected document, Load protected document with GroupDocs.Comparison
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
    name: How load file from stream in .NET
    description: Learn how to load file from stream in .NET step by step
    steps:
      - name: Create an object of LoadOption
        text: Create an object of LoadOption wich contains the password parameters.
      - name: Load target file
        text: Add the path to the tagret files using the Add method. Second parameter is a LoadOption object that contains password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) allows to compare documents that are protected with a password.  
The following are the steps to compare password-protected documents.

- Instantiate [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object and specify source document password;
- Instantiate [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object with source document path or stream and [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created at previous step;
- Instantiate another [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object and specify target document password;
- Call [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify target document path or stream and [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created at previous step;
- Call [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method.

The following code sample shows how to compare password protected documents.

```csharp
LoadOptions sourceLoadOptions = new LoadOptions(){ Password = "1234" };
 
using (Comparer comparer = new Comparer("source.docx", sourceLoadOptions))
{
	LoadOptions targetLoadOptions =	new LoadOptions() { Password = "5678" };
    comparer.Add("target.docx", targetLoadOptions);
    comparer.Compare("result.docx");
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
