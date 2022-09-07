---
id: groupdocs-comparison-for-net-3-2-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-2-0-release-notes
title: "GroupDocs.Vergleich für .NET 3.2.0 Versionshinweise"
weight: 7
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 3.2.0{{< /alert >}}

## Hauptmerkmale

Es gibt 14 Verbesserungen und Fehlerbehebungen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Unterstützung für das Speichern von Vergleichsergebnissen als Bilder eingeführt
* Unterstützung des HTML-Formats eingeführt
* Verbesserte Wortvergleichsleistung eingeführt
* Verbesserte Wortvergleichsqualität für Tabellen eingeführt
* Verbesserte PDF-Vergleichsqualität für Tabellen und Bilder eingeführt
* Verbesserte allgemeine Vergleichsqualität von Zellen eingeführt
* Eingeführte Unterstützung zum Anwenden/Verwerfen von Änderungen für das Textformat

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-787 | Speichern Sie HTML-Dateien im Word-Dokument, wenn Sie Comparison.Text für den Vergleich verwenden | Neue Funktion |
| VERGLEICHNETZ-769 | Fügen Sie GetChanges- und UpdateChanges-Methoden für Comparison.Text | hinzu Neue Funktion |
| VERGLEICHNETZ-742 | Implementieren Sie das Speichern des Ergebnisvergleichs als Bilder | Neue Funktion |
| VERGLEICHNETZ-730 | PDF: Eigenen Absorber von Tabellen implementieren | Neue Funktion |
| VERGLEICHNETZ-801 | Geschwindigkeitsvergleich Zellen verbessern | Verbesserung |
| VERGLEICHNETZ-750 | Vergleich.Worte deutliche Leistungsverbesserungen mit neuen Alignern | Verbesserung |
| VERGLEICHNETZ-728 | Verbessern Sie die Anzeige von Bildern und Text nach dem Vergleich | Verbesserung |
| VERGLEICHNETZ-726 | Funktion zur Korrektur von Position und Größe Image nach ImagePlacementAbsorber für Bilder aus XForms implementieren | Verbesserung |
| VERGLEICHNETZ-616 | Implementieren Sie den Formelvergleich für das Words-Format | Verbesserung |
| VERGLEICHNETZ-533 | Implementierung des Vergleichs von PDF mit den Bildern | Verbesserung |
| VERGLEICHNETZ-794 | GroupDocs.Comparison.Words: Nicht übereinstimmende Ausrichtung von Absätzen für den Fall, dass Absätze durch Seitenumbruch | verschoben werden Fehler |
| VERGLEICHNETZ-780 | Nicht genügend Arbeitsspeicher-Ausnahme in ComparisonText | Fehler |
| VERGLEICHNETZ-737 | Ergebnisdatei kann nicht geöffnet werden, wenn Grafikobjekte verwendet werden | Fehler |
| VERGLEICHNETZ-445 | Zellen: Das ursprüngliche Excel-Tabellenlayout wird nicht unterstützt. | Fehler |

  


  



## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 3.2.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

