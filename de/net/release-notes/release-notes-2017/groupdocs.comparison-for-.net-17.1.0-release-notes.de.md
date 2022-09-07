---
id: groupdocs-comparison-for-net-17-1-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-17-1-0-release-notes
title: "GroupDocs.Vergleich für .NET 17.1.0 Versionshinweise"
weight: 11
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 17.1.0{{< /alert >}}

## Hauptmerkmale

Es gibt 7 neue Funktionen und 7 Verbesserungen und Fehlerbehebungen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Eingeführte Unterstützung für Apply/Discard-Änderungen in Comparison.Cells
* Einführung der Unterstützung für Apply/Discard-Änderungen in Comparison.PDF
* Eingeführte Unterstützung der Unterstützung für Wasserzeichen, Hyperlinks, Kommentare, Textfelder, Formen in Vergleichszellen
* Verbesserte Vergleichseffizienz von GroupDocs.Comparison.PDF

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-1053 | GroupDocs.Comparison.PDF: Unterstützung für Änderungen übernehmen/verwerfen | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-975 | GroupDocs.Comparison.PDF: Unterstützung für Wasserzeichen hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1065 | GroupDocs.Comparison.Cells: Unterstützung für Hyperlinks hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1069 | GroupDocs.Comparison.Cells: Unterstützung für Kommentare | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-1072 | GroupDocs.Comparison.Cells: Unterstützung für Textfeld | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-1063 | GroupDocs.Comparison.Cells: Unterstützung für Änderungen übernehmen/verwerfen hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1073 | GroupDocs.Comparison.Cells: Unterstützung für Formen hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1075 | GroupDocs.Comparison.Cells: Rahmen für gelöschte und eingefügte Zellen hinzufügen und Zellbereich | Verbesserung |
| VERGLEICHNETZ-679 | Behebung des Problems beim Verschieben einer geänderten Tabelle auf eine neue Seite und nicht beim Löschen der vorherigen Version der hinzugefügten Tabelle | Verbesserung |
| VERGLEICHNETZ-1055 | Verbessern Absätze seitenweise kürzen nach einigen Änderungen in absorbierenden Absätzen | Verbesserung |
| VERGLEICHNETZ-1080 | GroupDocs.Comparison.PDF: Verbesserte Erkennung von Vergleichsänderungen für Absätze | Verbesserung |
| VERGLEICHNETZ-1056 | GroupDocs.Comparison.PDF-Vergleichsqualität für Bilder in Kopf- und Fußzeile verbessern, Koordinaten für Komponenten und Absätze seitenweise festlegen | Verbesserung |
| VERGLEICHNETZ-1074 | GroupDocs.Comparison: PDF: Satzwechsel für Absatzläufe nach Seitenumbruch | Fehler |
| VERGLEICHNETZ-1077 | Comparison.Cells: Korrigieren Sie das Erscheinungsbild von Zellen nach einem kritischen Update für Aligner-Vergleich und Document Builder | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 17.1.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

#### Tabellendateiformate mit Einstellungen vergleichen

Aktualisieren Sie die Methode zur Verwendung von Vergleichseinstellungen für Tabellenkalkulationsdateiformate



```csharp
// Enter presentations paths
string sourcePath = "./source.otp";
string targetPath = "./target.otp";

// Create two streams of presentations

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
CellsComparisonSettings settings = new CellsComparisonSettings();
settings.ShowDeletedContent = false;
settings.GenerateSummaryPage = true;

Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### Words-Dateiformate mit Einstellungen vergleichen

Aktualisieren Sie die Methode zur Verwendung von Vergleichseinstellungen für Word-Dateiformate



```csharp
// Enter Words document paths
string sourcePath = "./source.odt";
string targetPath = "./target.odt";

// Create two streams of Words docuemnt

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
WordsComparisonSettings settings = new WordsComparisonSettings();
Settings.ProcessHyperLinksAsAText = true;

Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### Vergleichsbeispiel für Dateiformate von Open Documents



```csharp
// Enter presentations paths
string sourcePath = "./source.otp";
string targetPath = "./target.otp";

// Create two streams of presentations

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### COMPARISONNET-1080 Vergleichen Sie zwei Absätze mit der Methode CompareWith.



```csharp
// Creating Paragraphs
ComparisonParagraphBase sourceParagraph = new ComparisonParagraph();
sourceParagraph.Text = "This is source Paragraph.";
 
ComparisonParagraphBase targetParagraph = new ComparisonParagraph();
targetParagraph.Text = "This is target Paragraph.";
 
// Creating settings for comparison of Paragraphs
SlidesComparisonSettings settings = new SlidesComparisonSettings();
// Comparing Paragraphs
ISlidesCompareResult compareResult = sourceParagraph.CompareWith(targetParagraph, settings);


```

#### Präsentation über Bildordner in Bild speichern



```csharp
/using GroupDocs.Comparison.Slides;
using GroupDocs.Comparison.Slides.Contracts;
using GroupDocs.Comparison.Slides.Contracts.Comparison;
using GroupDocs.Comparison.Slides.Contracts.Enums;
using GroupDocs.Comparison.Common.Images;

//path to file
string filePath = "./presentation.pptx";
  
//path to image folder
string imageFolderPath = "./FolderForImage/";
  
//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentationBase(filePath);
  
//Set settings
var settings = new ComparsionSlidesImageSettings();
  
//Save as Image
presentation.SaveAsImages(imageFolderPath, settings);



```

