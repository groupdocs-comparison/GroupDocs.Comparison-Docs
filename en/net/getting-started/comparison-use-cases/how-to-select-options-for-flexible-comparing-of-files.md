---
id: how-to-select-options-for-flexible-comparing
url: comparison/net/how-to-select-options-for-flexible-comparing
title: How to select options for flexible comparing of files
weight: 4
description: "This article describes options that you can use in GroupDocs.Comparison for .NET in your work for flexible file comparison"
keywords: Flexible Comparing of files, compare style changes, compare files, How to select options for flexible comparing
productName: GroupDocs.Comparison for .NET
hideChildren: False
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides many CompareOptions to customize the comparison process so that you can get the resulting files on your wish. The following code example shows how to use options for comparing files. 

```csharp
string sourceDocumentPath = @"source"; 
string targetDocumentPath = @"target"; 
string outputPath = @"result";     
            
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true, // Indicates whether to detect style changes or not.       
        DetalisationLevel = DetalisationLevel.High,  // Specifies the level of comparison details.
                                                     // Low level. Provides the best speed comparison sacrificing comparison quality. 
                                                     // Comparison is perfromed per-word.
                                                     // Middle level. A reasonable compromise between comparison speed and quality. 
                                                     // Comparison is perfromed per-character, but ignoring character case and spaces count.
                                                     // High level. The best comparison quality, but the lowest speed.
                                                     // Comparison is perfromed per-character considering character case and spaces count.
        GenerateSummaryPage = true,  // Indicates whether to add summary page with detected changes statistics to resultant document or not.
        PaperSize = Options.PaperSize.Default // The option to set the Paper size of the result document after comparison.
                                                // A0, A1, A2, A3, A4, A5, A6, A7, A8
        ShowDeletedContent = true, // Indicates whether to show deleted components in resultant document or not.

        ShowInsertedContent = true, // Indicates whether to show inserted components in resultant document or not.
        
        ExtendedSummaryPage = false, // Indicates whether to add extended file comparison information to the summary page or not.
        
        ShowOnlySummaryPage = false, // Indicates whether to leave in the resulting document only a page with statistics of detected changes in the resultindocument or not.
        
        MarkNestedContent = false, // Sets a value indicating whether to mark the children of the deleted or inserted element as deleted or inserted.
        
        CalculateCoordinates = true, // Indicates whether to calculate coordinates for changed components.
        
        HeaderFootersComparison = true, // Control to turn on comparison of header/footer contents.
        
        MarkChangedContent = false, // Indicates whether to use frames for shapes in Word Processing and for rectangles in Image documents. 
        
        InsertedItemStyle = new new Options.StyleSettings(),// Describes style for inserted components.
        
        DeletedItemStyle = new new Options.StyleSettings(), // Describes style for deleted components.
        
        ChangedItemStyle = new Options.StyleSettings(), // Describes style for changed components.
        
        CompareBookmarks = true, // Control to turn on comparison of bookmarks in Word format.
        
        CompareVariableProperty = false, // Control to turn on comparison of variables properties in Word format.
        
        CompareDocumentProperty = false, // Control to turn on comparison of built and custom properties in Word format.
        
        SensitivityOfComparison = 75; // Gets or sets a sensitivity of comparison.
                                      // The percentage of deleted and inserted elements of two compared objects in relation to all elements of these objects.
                                      // if this percentage if exceeded, the object aren't compared but are considered completely inserted and deleted.
                                      //
                                      // Min value - 0% => The comparison doesn't occur for any length of the common subsequence of two compared object.
                                      //
                                      // Default value - 75% => Comparison occurs
                                      //     if the percentage of deleted and inserted elements of two compared object with respect to all elements of these objects isn't more then 75.
                                      //
                                      // Max value - 100% => The comparison occurs at any length of the common subsequence of two compared objects.
   };
    comparer.Compare(outputPath, compareOptions);
}


```

|   |  All Compare Options |
| --- | --- |
|Options | ![](/comparison/net/images/how-to-select-options-for-flexible-comparing-1.png)|


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
