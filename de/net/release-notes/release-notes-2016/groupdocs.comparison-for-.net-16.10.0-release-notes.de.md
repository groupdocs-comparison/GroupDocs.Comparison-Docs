---
id: groupdocs-comparison-for-net-16-10-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-16-10-0-release-notes
title: "GroupDocs.Vergleich für .NET 16.10.0 Versionshinweise"
weight: 3
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 16.10.0{{< /alert >}}

## Hauptmerkmale

Es gibt 10 Verbesserungen und Fehlerbehebungen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Eingeführte Unterstützung für neue Komponenten in Comparison.Slides: Kommentare, Diagramme
* Unterstützung für Wasserzeichen in Comparison.PDF eingeführt
* Eingeführte Unterstützung für neue Komponenten in Comparison.PDF: Medienobjekte, Bildpositionierung
* Verbesserter ComparisonParagraphAbsorber für Fälle mit Tabellen

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-970 | GroupDocs.Comparison.PDF: Unterstützung für neue Komponenten hinzugefügt: Medienobjekte, Bildpositionierung | Neue Funktion |
| VERGLEICHNETZ-961 | GroupDocs.Comparison.PDF: Unterstützung für den Vergleich von Wasserzeichen hinzufügen | Neue Funktion |
| VERGLEICHNETZ-962 | GroupDocs.Comparison.Slides: Unterstützung für den Vergleich von Diagrammen hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-965 | GroupDocs.Comparison.Slides: Unterstützung für den Vergleich von Kommentaren hinzufügen | Neue Funktion |
| VERGLEICHNETZ-949 | GroupDocs.Comparison.PDF: Vergleichstabellen verbessern | Verbesserung |
| VERGLEICHNETZ-903 | GroupDocs.Comparison.PDF: VergleichsparagraphAbsorber für Fälle mit Tabellen verbessern | Verbesserung |
| VERGLEICHNETZ-982 | GroupDocs.Comparison.PDF: Document Builder und Page Mapper verbessern | Verbesserung |
| VERGLEICHNETZ-904 | GroupDocs.Comparison.PDF:Überprüfung und Verbesserung von ComparisonParagraphAbsorber für Fälle mit Klartext | Verbesserung |
| VERGLEICHNETZ-968 | GroupDocs.Comparison.Words: Gleicher Text aus benachbarten Absätzen wird als gelöscht und eingefügt definiert | Fehler |
| VERGLEICHNETZ-964 | GroupDocs.Comparison.Slides: Dateien werden nach dem Vergleich nicht geöffnet | Fehler |

  


## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 16.10.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

#### Word-Dokumente vergleichen

Vergleichen Sie Quelldokument mit zwei Zieldokumenten Methode MultiCompareWith.



```csharp
// Enter documents paths
string sourcePath = @"Groupdocs.Comparison.Samples.data.Words.source.docx";
string target1Path = @"Groupdocs.Comparison.Samples.data.Words.target1.docx";
string target2Path = @"Groupdocs.Comparison.Samples.data.Words.target2.docx";

// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new List<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);

// Add target documents in list
ListOfTargetDocuments.Add(target1);
ListOfTargetDocuments.Add(target2);

// Call method MultiCompareWith.
IWordsCompareResult result = source.MultiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

#### Quelldokument mit drei Zieldokumenten vergleichen Methode MultiCompareWith.



```csharp
 // Enter documents paths
string sourcePath = @"Groupdocs.Comparison.Samples.data.Words.source.docx";
string target1Path = @"Groupdocs.Comparison.Samples.data.Words.target1.docx";
string target2Path = @"Groupdocs.Comparison.Samples.data.Words.target2.docx";
string target3Path = @"Groupdocs.Comparison.Samples.data.Words.target3.docx";

// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new List<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);
ComparisonDocument target3 = new ComparisonDocument(target3Path);

// Add target documents in list
ListOfTargetDocuments.Add(target1);
ListOfTargetDocuments.Add(target2);
ListOfTargetDocuments.Add(target3);

// Call method MultiCompareWith.
IWordsCompareResult result = source.MultiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

