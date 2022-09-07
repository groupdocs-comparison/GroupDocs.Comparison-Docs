---
id: groupdocs-comparsion-for-net-17-2-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-2-0-release-notes
title: "GroupDocs.Comparsion für .NET 17.2.0 Versionshinweise"
weight: 10
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 17.2.0{{< /alert >}}

## Hauptmerkmale

Es gibt 8 neue Funktionen und 2 Verbesserungen und 5 Fehlerbehebungen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Unterstützung von Imaging DjVu hinzugefügt
* Eingeführte Unterstützung der Unterstützung für Textfont in Watermark in Comparison.PDF
* Eingeführte Unterstützung der Unterstützung für Bilder, Diagramme, Smart Art, VBA-Steuerelemente, Formeln im Vergleich. Zellen
* Verbesserte Vergleichseffizienz von GroupDocs.Comparison.PDF

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-1123 | Integrieren Sie die gebührenpflichtige Lizenzierung | Neue Funktion |
| VERGLEICHNETZ-1122 | GroupDocs.Comparison.PDF: Unterstützung für den Vergleich von Textschriften in Wasserzeichen hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1068 | GroupDocs.Comparison.Cells: Unterstützung für Formeln hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1065 | GroupDocs.Comparison.Cells: Unterstützung für Bilder hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1070 | GroupDocs.Comparison.Cells: Unterstützung für Chart | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-1066 | GroupDocs.Comparison.Cells: Unterstützung für Smart Art hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1067 | GroupDocs.Comparison.Cells: Unterstützung für VBA-Steuerelemente hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1108 | Unterstützung des Mobi-Formats hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1112 | Unterstützung von Imaging DjVu | hinzugefügt Verbesserung |
| VERGLEICHNETZ-1080 | GroupDocs.Comparison.PDF: Verbesserte Erkennung von Vergleichsänderungen für Absätze | Verbesserung |
| VERGLEICHNETZ-1129 | GroupDocs.Comparison.PDF: Fehler behoben, wenn einige Zeilen gelöscht oder eingefügt wurden, wo nicht | sein sollte Fehler |
| VERGLEICHNETZ-1130 | GroupDocs.Comparison.PDF: Fehler behoben, wenn die erste Absatzzeile keinen Einzug hat, aber | haben sollte Fehler |
| VERGLEICHNETZ-1131 | GroupDocs.Comparison.PDF: Fehler behoben, wenn Komponente ihre Seite ändert, aber nicht ihre Position ändert, sondern | sein sollte Fehler |
| VERGLEICHNETZ-1128 | GroupDocs.Comparison.PDF: Fehler behoben, wenn die erste Absatzzeile nicht als Absatzzeile | verwendet wird Fehler |
| VERGLEICHNETZ-1132 | GroupDocs.Comparison.PDF: Fehler behoben, wenn Text aus Tabellen doppelt mit einfachen Absätzen verwendet wird | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 17.2.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

### Gemessene Lizenzierung



```csharp
// Create new instance of GroupDocs.Comparison.Metered classs
GroupDocs.Comparison.Metered metered = new GroupDocs.Comparison.Metered();
 
// Set public and private key to metered instance
metered.SetMeteredKey("***", "***");
 
// Get metered value before usage of the comparison
decimal amountBefore = GroupDocs.Comparison.Metered.GetConsumptionQuantity();
 
Console.WriteLine("Amount consumed  before: " + amountBefore);
 
// compare files
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";
 
GroupDocs.Comparison comparison = new GroupDocs.Comparison();
Stream result = comparison.Compare(sourcePath, targetPath);
 
// Get metered value after usage of the comparison
decimal amountAfter = GroupDocs.Comparison.GetConsumptionQuantity();

Console.WriteLine("Amount consumed  after: " + amountAfter);
```

