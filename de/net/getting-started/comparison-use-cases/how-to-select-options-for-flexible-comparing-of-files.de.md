---
id: wie-man-optionen-zum-flexiblen-vergleich-auswählt
url: comparison/net/how-to-select-options-for-flexible-comparing
title: "So wählen Sie Optionen zum flexiblen Vergleichen von Dateien aus"
weight: 4
description: "Dieser Artikel beschreibt Optionen, die Sie in GroupDocs.Comparison für .NET in Ihrer Arbeit zum flexiblen Dateivergleich verwenden können"
keywords: "Flexibles Vergleichen von Dateien, Vergleichen von Stiländerungen, Vergleichen von Dateien, Auswählen von Optionen für flexibles Vergleichen"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet viele Vergleichsoptionen, um den Vergleichsprozess anzupassen, sodass Sie die resultierenden Dateien nach Ihren Wünschen erhalten können. Das folgende Codebeispiel zeigt, wie Optionen zum Vergleichen von Dateien verwendet werden.

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

| | Alle Vergleichsoptionen |
| --- | --- |
|Optionen | ![](/comparison/net/images/how-to-select-options-for-flexible-comparing-1.png)|


## Mehr Ressourcen
### Erweiterte Nutzungsthemen
Weitere Informationen zu Dokumentvergleichsfunktionen finden Sie im [Abschnitt zur erweiterten Verwendung]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Dokumentenvergleich für ein modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Kostenlose Online-App
Zusammen mit der voll ausgestatteten .NET-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

