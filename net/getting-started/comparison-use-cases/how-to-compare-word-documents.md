---
id: how-to-compare-word-documents
url: comparison/net/how-to-compare-word-documents
title: How to Compare Word documents
weight: 1
description: "Read this article and find out how you can use the GroupDocs.Comparison for .NET to find differences in Word files. Also, in this article you can find an option to use this product in your production"
keywords: How to compare Word documents,Word documents, Word files, Comparison Use Case, Compare Word documents
productName: GroupDocs.Comparison for .NET
hideChildren: False
---
Often when working with document management, you may encounter a situation where you need to compare large files that are similar to each other, but have slight differences that you would like to know about. And, of course, finding these changes manually is quite a time-consuming process.
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** gives you many options for comparing a wide range of [supported file formats]({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}), including PDF format.

After comparing the two Word files, you will get a resulting document in which the changes are highlighted in three different colors:

*   Elements that were inserted in the first file. – <font color="blue">**blue**</font>, by default
*   Elements wich were deleted from the first file – <font color="red">**red**</font>, by default
*   Elements that have changed their styles (font, color, etc.) – <font color="green">**green**</font>, by default

|  Source / Target / Result Words files |
| --- | --- |
|Source |![](comparison/net/images/how-to-compare-word-1.png) | 
|Target |![](comparison/net/images/how-to-compare-word-2.png)|
|Result |![](comparison/net/images/how-to-compare-word-3.png)|

The code sample to compare two Word files:

```csharp
string sourcePath = @"source.doc"; // NOTE: Path to the source word document 
string targetPath = @"target.doc"; // NOTE: Path to the target word document 
string resultPath = @"result.doc"; // NOTE: Path to the result word document       
            
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
}
```

## More resources
### Advanced Usage Topics
To learn more about document comparison features, please refer to the [advanced usage section]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

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
