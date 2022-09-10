---
id: load-file-from-stream
url: comparison/net/load-file-from-stream
title: Load file from stream
weight: 2
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from stream when using GroupDocs.Comparison for .NET."
keywords: Load document from stream, Load document with GroupDocs.Comparison
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
    name: How load file from stream in .NET 
    description: Learn how to load file from stream in .NET step by step
    steps:
    - name: Create an object and specify source file stream
      text: Create an object of Comparer class. The constructor takes the source file stream. You may specify absolute or relative file path as per your requirements.
    - name: Load target file
      text: Add the tagret file stream using the Add method.
    - name: Compare documents
      text: Call the Compare method of your object and put the resulting file stream.
---
In case when you have the file in the form of a stream. To avoid the overhead of saving stream as a file on disk, **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides a way to work with file streams directly.

The following are the steps to be followed:
*   Obtain file stream;
*   Pass opened source file stream to [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) class constructor or pass opened target file stream to [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method.
    

Following code snippet describes how to load file from stream.

```csharp
using (Stream sourceStream = File.OpenRead("source.docx"))
using (Stream targetStream = File.OpenRead("target.docx"))
{
	using (Comparer comparer = new Comparer(sourceStream))
	{
	    comparer.Add(targetStream);
    	comparer.Compare(File.Create("result.docx"));
	}
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