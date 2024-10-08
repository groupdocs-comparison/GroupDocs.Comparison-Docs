---
id: compare-multiple-documents-with-specific-compare-settings
url: comparison/net/compare-multiple-documents-with-specific-compare-settings
title: Compare multiple documents with specific compare settings
weight: 2
description: "Following this guide you will learn how to compare multiple documents with different customisations - style detection, change comparison detalisation level and more."
keywords: Compare multiple documents, style change detection, Multi-compare files
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
    name: How to compare multiple documents with specific compare settings in .NET
    description: Learn how to compare multiple documents with specific compare settings in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Specify necessary settings
        text: Create a compare options object and specify necessary settings.
      - name: Load target files
        text: Add the path to the tagret files using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

{{< alert style="info" >}}This feature available for Microsoft Word documents, Microsoft PowerPoint, and Open Document presentations only.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare more than two documents and specify specific comparison options like styling for detected changes, comparison detalization level, etc.

To compare multiple documents using the specific options, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2. Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method and specify the target document path or stream. Repeat this step for every target document.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object and specify the appropriate options.
4.  Call the [Compare](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/compare#compare_8) method. Specify the pass [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippets show how to compare multiple documents with the appropriate options:

## Compare multiple documents with specific compare settings from local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
    CompareOptions compareOptions = new CompareOptions()
    {
      InsertedItemStyle = new StyleSettings()
      {
        FontColor = System.Drawing.Color.Yellow
      }
    };
    comparer.Compare("result.docx", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/compare-multiple-settings.png)

## Compare multiple documents with specific compare settings from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
        }
    };
    comparer.Compare(File.Create("result.docx"), compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
