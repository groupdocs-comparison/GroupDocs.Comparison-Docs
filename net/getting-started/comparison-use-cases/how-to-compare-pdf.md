---
id: how-to-compare-pdf-files
url: comparison/net/how-to-compare-pdf-files
title: How to Compare PDF files
weight: 1
description: "Read this article and find out how you can use the GroupDocs.Comparison for .NET to find differences in PDF files. Also, in this article you can find an option to use this product in your production"
keywords: How to compare PDF files, PDF files, Comparison Use Case, Compare PDF files
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---

When working with similar documents, it becomes increasingly difficult to find the difference between what was changed in one of the versions, especially when working with large-volume documents.Such functionality as PDF document comparison can significantly improve your work efficiency and, most importantly, speed it up.**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** gives you many options for comparing a wide range of [supported file formats]({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}), including PDF format.

After the comparison, there are three colors on the resulting file that highlight the differences. You can also specify the colors yourself to identify the next difference:

- Elements that were inserted in the first file. – <font color="blue">**blue**</font>, by default
- Elements wich were deleted from the first file – <font color="red">**red**</font>, by default
- Elements that have changed their styles (font, color, etc.) – <font color="green">**green**</font>, by default

| Source / Target / Result PDF files |
| ---------------------------------- | ---------------------------------------------------- |
| Source                             | ![](/comparison/net/images/how-to-compare-pdf-1.png) |
| Target                             | ![](/comparison/net/images/how-to-compare-pdf-2.png) |
| Result                             | ![](/comparison/net/images/how-to-compare-pdf-3.png) |

The code sample to compare two PDF files:

```csharp
string sourcePath = @"source.pdf"; // NOTE: Path to the source pdf document
string targetPath = @"target.pdf"; // NOTE: Path to the target pdf document
string resultPath = @"result.pdf"; // NOTE: Path to the result pdf document

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

As a result, we get a PDF file with highlighted changes, in which the deleted elements are marked with a font <font color="red">**red**</font>, the added – in <font color="blue">**blue**</font>, and the modified – in <font color="yellow">**green**</font>.

## More resources

### Advanced Usage Topics

To learn more about document comparison features, please refer to the [advanced usage section]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

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
