---
id: groupdocs-comparison-for-net-18-8-release-notes
url: comparison/net/groupdocs-comparison-for-net-18-8-release-notes
title: "GroupDocs.Comparison für .NET 18.8 Versionshinweise"
weight: 4
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 18.8{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 18.8:

* Neue Einstellungen zur Texthervorhebung für die Anzahl der Vergleichsformate (Html, Slides, Notes, Pdf, Words) implementiert
* Verbessern Sie den PDF-Mapper
* Verbesserte Unterstützung für den Vergleich verschiedener Formate mit Bildern
* Die Anzahl der Probleme beim Vergleich bestimmter PDF-Dokumente wurde behoben

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-1637 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Html | Neue Funktion |
| VERGLEICHNETZ-1636 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Slides | Neue Funktion |
| VERGLEICHNETZ-1635 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Notes | Neue Funktion |
| VERGLEICHNETZ-1634 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Pdf | Neue Funktion |
| VERGLEICHNETZ-1633 | Implementieren Sie die neue Einstellung für die Texthervorhebung Comparison.Words | Neue Funktion |
| VERGLEICHNETZ-1644 | PDF-Mapper verbessern | Verbesserung |
| VERGLEICHNETZ-1640 | Verbesserte Unterstützung für den Vergleich verschiedener Formate mit image | Verbesserung |
| VERGLEICHNETZ-1620 | Ausgabe von PDF mit Diagrammen ist nicht wie erwartet | Fehler |
| VERGLEICHNETZ-1619 | Ausgabe von PDF mit Bildern ist nicht wie erwartet | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 18.8 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. Stileinstellungen für eingefügte, gelöschte und geänderte Elemente, die zum Festlegen von Schriftfarbe, Hervorhebungsfarbe, Stilen (fett, kursiv, unterstrichen, durchgestrichen) und Tags für markierte Änderungen im Ergebnisdokument verwendet werden:
    



```scharf
settings.InsertedItemsStyle.FontColor = System.Drawing.Color.Brown;
settings.InsertedItemsStyle.HighlightColor = System.Drawing.Color.Red;
settings.InsertedItemsStyle.BeginSeparatorString = "<inserted> ";
settings.InsertedItemsStyle.EndSeparatorString = "</inserted> ";
```
    



```scharf
settings.DeletedItemsStyle.FontColor = System.Drawing.Color.Aquamarine;
settings.DeletedItemsStyle.HighlightColor = System.Drawing.Color.Blue;
settings.DeletedItemsStyle.BeginSeparatorString = "<deleted> ";
settings.DeletedItemsStyle.EndSeparatorString = "</deleted> ";
```
    



```scharf
settings.StyleChangedItemsStyle.FontColor = System.Drawing.Color.Aqua;
settings.StyleChangedItemsStyle.HighlightColor = System.Drawing.Color.Green;
settings.StyleChangedItemsStyle.BeginSeparatorString = " <style>";
settings.StyleChangedItemsStyle.EndSeparatorString = "</style> ";
```

