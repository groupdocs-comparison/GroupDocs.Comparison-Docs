---
id: groupdocs-comparison-for-java-3-2-2-release-notes
url: comparison/java/groupdocs-comparison-for-java-3-2-2-release-notes
title: "GroupDocs.Comparison für Java 3.2.2 Versionshinweise"
weight: 2
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für Java 3.2.2{{< /alert >}}

## Hauptmerkmale

Es gibt Verbesserungen und Korrekturen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Vergleichsmaschinen für alle Formate wurden komplett von Grund auf neu geschrieben.
* Vereinfachte und sehr flexible API.
* Besser organisierte und vereinfachte Produktstruktur.
* Code-Optimierung.
* Unterstützung für Änderungen übernehmen/verwerfen für alle Formate
* Als native Bibliothek konzipiert, die die Verwendung in allen möglichen Projekttypen ermöglicht.
* Unterstützung verschlüsselter Dateien eingeführt
* Automatische Erkennung von Dateitypen eingeführt
* Verbesserte Vergleichsleistung von Wörtern bis zu 8-mal eingeführt
* Verbesserte Words-Vergleichsqualität für Text und Tabellen eingeführt
* Verbesserte PDF-Vergleichsqualität für Text, Tabellen und Bilder eingeführt
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
| VERGLEICHNETZ-445 | GroupDocs.Comparison.Cells: Das ursprüngliche Excel-Tabellenlayout wird nicht unterstützt. | Fehler |
| VERGLEICHNETZ-533 | Implementierung des Vergleichs von PDF mit den Bildern | Verbesserung |
| VERGLEICHNETZ-588 | Implementieren Sie die Lokalisierung für die Behandlung von Ausnahmen | Verbesserung |
| VERGLEICHNETZ-605 | Unterstützung der Dateityperkennung von Stream | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-616 | Implementieren Sie den Formelvergleich für das Words-Format | Verbesserung |
| VERGLEICHNETZ-638 | Wenn der Inhalt der Folie eindeutig ist, sollte die Folie als Eingefügt oder Gelöscht | markiert werden Verbesserung |
| VERGLEICHNETZ-663 | Fügen Sie Unterstützung für passwortgeschützte Dateien für Wörter, Zellen, Folien und PDF hinzu | Neue Funktion |
| VERGLEICHNETZ-664 | Implementieren Sie Vergleichswörter mit Ausrichtung nach identisch und Bildung Ergebnisdokument mit Zieldokument und Einfügung gelöschter Komponenten aus Quelldokument | Verbesserung |
| VERGLEICHNETZ-681 | Prüfer für Ergebnisdokument nach dem Zusammenführen von Vergleichsergebnissen hinzufügen | Verbesserung |
| VERGLEICHNETZ-682 | Hinzufügen des Zurücksetzens von Stream-Positionen in Dokumentkonstruktoren | Verbesserung |
| VERGLEICHNETZ-683 | Vergleichseinstellungen ändern, um Kulturinformationen zu unterstützen | Verbesserung |
| VERGLEICHNETZ-684 | Ändern Sie den Unterschied in CommonAligner, um die Vergleichsleistung zu verbessern | Verbesserung |
| VERGLEICHNETZ-697 | Der Vergleich angehängter Dokumente dauert je nach Hardware zwischen 8-13 Minuten und endet dann mit 0 Byte Ergebnis. | Fehler |
| VERGLEICHNETZ-700 | Erweitern Sie die PDF-Vergleichsfunktion, um Änderungen zu erhalten oder zu bestätigen, dass Dokumente identisch sind | Neue Funktion |
| VERGLEICHNETZ-719 | Vergleichsergebnisse Erstellen einer leeren Seite und zusätzlicher Leerzeichen für DOCX/PDF | Fehler |
| VERGLEICHNETZ-722 | Der Update-Vergleich unterscheidet sich je nach Leistungsverbesserung für Words. | Verbesserung |
| VERGLEICHNETZ-726 | Funktion zur Korrektur von Position und Größe Image nach ImagePlacementAbsorber für Bilder aus XForms implementieren | Verbesserung |
| VERGLEICHNETZ-728 | Verbessern Sie die Anzeige von Bildern und Text nach dem Vergleich | Verbesserung |
| VERGLEICHNETZ-730 | PDF: Eigenen Absorber von Tabellen implementieren | Neue Funktion |
| VERGLEICHNETZ-737 | Ergebnisdatei kann nicht geöffnet werden, wenn Grafikobjekte verwendet werden | Fehler |
| VERGLEICHNETZ-742 | Implementieren Sie das Speichern des Ergebnisvergleichs als Bilder | Neue Funktion |
| VERGLEICHNETZ-750 | GroupDocs.Comparison.Words signifikante Leistungsverbesserungen mit neuen Alignern | Verbesserung |
| VERGLEICHNETZ-769 | Fügen Sie GetChanges- und UpdateChanges-Methoden für Comparison.Text | hinzu Neue Funktion |
| VERGLEICHNETZ-780 | Nicht genügend Arbeitsspeicher-Ausnahme in ComparisonText | Fehler |
| VERGLEICHNETZ-787 | Speichern Sie HTML-Dateien im Word-Dokument, wenn Sie Comparison.Text für den Vergleich verwenden | Neue Funktion |
| VERGLEICHNETZ-794 | GroupDocs.Comparison.Words: Nicht übereinstimmende Ausrichtung von Absätzen für den Fall, dass Absätze durch Seitenumbruch | verschoben werden Fehler |
| VERGLEICHNETZ-801 | Geschwindigkeitsvergleich Zellen verbessern | Verbesserung |

## Öffentliche API und rückwärtsinkompatible Änderungen

Dies ist die erste Version der neuen Generation von GroupDocs.Comparison für Java.

