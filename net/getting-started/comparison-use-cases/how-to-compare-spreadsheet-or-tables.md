---
id: how-to-compare-spreadsheet-or-tables
url: comparison/net/how-to-compare-spreadsheet-or-tables
title: How to Compare Excel files
weight: 1
description: "Read this article and find out how you can use the GroupDocs.Comparison for .NET to find differences in Excel files."
keywords: How to compare Excel files, Spreadsheet or tables, Compare tables, Compare Excel files
productName: GroupDocs.Comparison for .NET
hideChildren: False
---
So when you have two similar Excel workbooks or two versions of the same spreadsheet, what is the best thing to do first? That's right, compare these files for differences, and then perhaps merge them into one file. Also, comparing workbooks will help you detect possible problems, such as incorrect tables, extra entries, inconsistent formulas, or improper formatting.**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** gives you many options for comparing a wide range of [supported file formats]({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}), including Excel formats.

After the comparison, there are three colors on the resulting file that highlight the differences. You can also specify the colors yourself to identify the next difference:

*   Elements that were inserted in the first file. – <font color="blue">**blue**</font>, by default
*   Elements wich were deleted from the first file – <font color="red">**red**</font>, by default
*   Elements that have changed their styles (font, color, etc.) – <font color="green">**green**</font>, by default

The code sample to compare two Excel files:

```csharp
string sourcePath = @"source.xlsx"; // NOTE: Path to the source Excel document 
string targetPath = @"target.xlsx"; // NOTE: Path to the target Excel document 
string resultPath = @"result.xlsx"; // NOTE: Path to the result Excel document       
            
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

|  Source / Target / Result Excel files |
| --- | --- |
|Source |![](/comparison/net/images/how-to-compare-spreadsheet-or-tables-1.png) | 
|Target |![](/comparison/net/images/how-to-compare-spreadsheet-or-tables-2.png)|
|Result |![](/comparison/net/images/how-to-compare-spreadsheet-or-tables-3.png)|

As a result, you have an Excel file with highlighted changes, in which the deleted elements are marked with a font <font color="red">**red**</font>, the added – in <font color="blue">**blue**</font>, and the modified – in <font color="yellow">**green**</font>.

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
