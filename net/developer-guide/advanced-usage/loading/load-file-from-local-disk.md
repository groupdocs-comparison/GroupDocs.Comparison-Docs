---
id: load-file-from-local-disk
url: comparison/net/load-file-from-local-disk
title: Load file from local disk
weight: 1
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from local disk when using GroupDocs.Comparison for .NET."
keywords: Load document from local disk, Load document from file path, Load document with GroupDocs.Comparison
productName: GroupDocs.Comparison for .NET
hideChildren: False
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
        text: Add the path to the tagret file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---
When the source file is located on the local disk **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** allows you to load it via [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) class constructor specifying absolute or relative path to it. For loading target file located on the local disk you should use [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method that accepts absolute or relative path as parameter.  

Following code snippet shows how to load files from local disk.

```csharp
string sourcePath = "source.docx";
using (Comparer comparer = new Comparer(sourcePath))
{
	string targetPath = "target.docx";
    comparer.Add("targetPath");
    comparer.Compare("result.docx");
}
```

## More resources
### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    
### Free Online App
Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).