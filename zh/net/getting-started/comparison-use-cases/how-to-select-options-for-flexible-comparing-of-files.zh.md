---
id：如何选择选项以进行灵活比较
url: comparison/net/how-to-select-options-for-flexible-comparing
title: "如何选择灵活比较文件的选项"
weight: 4
description: "本文介绍了可在 GroupDocs.Comparison for .NET 中用于灵活文件比较的选项"
keywords: "灵活比较文件，比较样式变化，比较文件，如何选择灵活比较的选项"
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供了许多 CompareOptions 来自定义比较过程，以便您可以根据需要获得结果文件。以下代码示例显示了如何使用选项来比较文件。

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

| |所有比较选项 |
| --- | --- |
|选项 | ![](comparison/net/images/how-to-select-options-for-flexible-comparing-1.png)|


## 更多资源
### 高级用法主题
要了解更多关于文档比较功能的信息，请参阅[高级用法部分]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}})。

### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### 免费在线应用
除了功能齐全的 .NET 库，我们还提供简单但功能强大的免费应用程序。
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

