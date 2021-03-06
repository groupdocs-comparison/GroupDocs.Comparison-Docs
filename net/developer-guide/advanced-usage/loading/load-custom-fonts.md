---
id: load-custom-fonts
url: comparison/net/load-custom-fonts
title: Load custom fonts
weight: 4
description: "This article explains how to load custom fonts PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for .NET."
keywords: Custom fonts, fonts
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
    name: How to load custom fonts in .NET 
    description: Learn how to load custom fonts in .NET step by step
    steps:
    - name: Create an object and load font.
      text: Create an object of LoadOptions class. Access the object field using the Add method with the path to the font file parameter.
    - name: Create an object and load source file with Options
      text: Create an object of Comparer class. The constructor takes the source file path parameter and object of LoadOptions. You may specify absolute or relative file path as per your requirements.
    - name: Load target file
      text: Add the path to the tagret file using the Add method.
    - name: Compare documents
      text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) allows you to compare documents whose content has non-standard fonts.

The following are the steps to connect custom fonts and compare documents:

*   Instantiate [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object and provide a list of directories for custom fonts;
*   Instantiate [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object with source document path or stream and [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created at previous step;
*   Call [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify target document path or stream;
*   Call [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method.

The following code sample shows how to connect custom fonts and compare documents.

```csharp
// Instantiate the LoadOptions object and create a list of custom font directories.
LoadOptions loadOptions = new LoadOptions();
loadOptions.FontDirectories.Add("./fontPath/");
 
using (Comparer comparer = new Comparer("source.docx", loadOptions))
{
    comparer.Add("target.docx");
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
