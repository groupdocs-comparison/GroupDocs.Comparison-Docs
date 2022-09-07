---
id: groupdocs-comparison-for-net-3-5-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-5-0-release-notes
title: "GroupDocs.Vergleich für .NET 3.5.0 Versionshinweise"
weight: 4
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 3.5.0{{< /alert >}}

## Hauptmerkmale

Es gibt 9 Verbesserungen und Fehlerbehebungen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Unterstützung für Mehrfachvergleiche für Comparison.Words eingeführt
* Eingeführte Apply/Discart-Unterstützung für Mehrfachvergleiche für Comparison.Words
* Textabsorber für Seitenkopf- und -fußzeilen für Vergleich.PDF eingeführt
* Verbesserter Absatzabsorber für Comparison.PDF

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-877 | GroupDocs.Comparison.Words: Option hinzugefügt, um mehrere Ergebnislisten aus Ergebnislisten jedes Dokuments zusammenzustellen | Neue Funktion |
| VERGLEICHNETZ-876 | GroupDocs.Comparison.Words: Unterstützt den Vergleich mehrerer Dokumente mit Nachverfolgung von Änderungen | Neue Funktion |
| VERGLEICHNETZ-909 | GroupDocs.Comparison.PDF: Unterstützung der Aufnahme des Seitenfußes hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-910 | GroupDocs.Comparison.PDF: Unterstützung der Aufnahme des Seitenkopfs hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-880 | GroupDocs.Comparison.Words: Unterstützung zum Anwenden/Verwerfen von Änderungen für die Liste mit mehreren Ergebnisänderungen hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-880 | GroupDocs.Comparison.Words: Verbesserung der Dokumentverarbeitungsleistung | Verbesserung |
| VERGLEICHNETZ-886 | GroupDocs.Comparison.PDF: Unterteilen Sie Text in Absätze, indem Sie prüfen, ob die Textfragmente in verschiedenen übergeordneten Objekten enthalten sind | Verbesserung |
| VERGLEICHNETZ-904 | GroupDocs.Comparison.PDF: Verbesserter Absorber für Vergleichsabsätze für Fälle mit Klartext | Verbesserung |
| VERGLEICHNETZ-873 | GroupDocs.Comparison.PDF: Verbesserte Textvergleichsunterstützung für alle Adobe Acrobat-Formate | Verbesserung |

  


## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 3.5.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

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

