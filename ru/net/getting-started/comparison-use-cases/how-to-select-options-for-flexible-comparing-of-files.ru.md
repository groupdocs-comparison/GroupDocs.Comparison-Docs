---
id: как-выбрать-варианты-для-гибкого-сравнения
url: comparison/net/how-to-select-options-for-flexible-comparing
title: "Как выбрать опции для гибкого сравнения файлов"
weight: 4
description: "В этой статье описаны параметры, которые вы можете использовать в GroupDocs.Comparison для .NET в своей работе для гибкого сравнения файлов."
keywords: "Гибкое сравнение файлов, сравнение изменений стиля, сравнение файлов, Как выбрать параметры для гибкого сравнения"
productName: GroupDocs.Comparison для .NET
hideChildren: False
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет множество параметров сравнения для настройки процесса сравнения, чтобы вы могли получить результирующие файлы по своему желанию. В следующем примере кода показано, как использовать параметры для сравнения файлов.

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

| | Все варианты сравнения |
| --- | --- |
|Опции | ![](comparison/net/images/how-to-select-options-for-flexible-comparing-1.png)|


## Дополнительные ресурсы
### Темы для продвинутого использования
Чтобы узнать больше о функциях сравнения документов, обратитесь к [разделу расширенного использования]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой .NET мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с помощью бесплатного онлайн-приложения [приложение для сравнения GroupDocs] (https://products.groupdocs.app/comparison). ).

