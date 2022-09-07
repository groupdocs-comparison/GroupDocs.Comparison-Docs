---
id: groupdocs-comparison-for-net-20-2-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-2-release-notes
title: "GroupDocs.Comparison für .NET 20.2 Versionshinweise"
weight: 19
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 20.2{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der Änderungen in der Version von GroupDocs.Comparison für .NET 20.2:

* Möglichkeit hinzugefügt, die gängigsten Skripte und Programmiersprachendateien zu vergleichen
* Implementierte Fähigkeit, mehr als zwei SpreadSheet-Dokumente zu vergleichen
* Implementierte Möglichkeit, mehr als zwei Notizdokumente zu vergleichen
* Alle unterstützten Dateiformate enthalten
* Verbesserte Berechnung der Änderungskoordinaten für PDF
* Die Erkennung von Elementbewegungsänderungen für Präsentationsdokumente (Folien) wurde korrigiert
    










| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2188 | Implementieren Sie Groovy-Dateien, die | vergleichen Merkmal |
| VERGLEICHNETZ-2187 | Implementieren Sie JSON-Dateien, die | vergleichen Merkmal |
| VERGLEICHNETZ-2186 | Implementieren Sie den Vergleich von ActionScript-Dateien | Merkmal |
| VERGLEICHNETZ-2185 | Implementieren Sie den Vergleich von Perl-Dateien | Merkmal |
| VERGLEICHNETZ-2184 | Implementieren Sie den Vergleich von Objective C\\C++-Dateien | Merkmal |
| VERGLEICHNETZ-2180 | Vergleichen von Ruby-Dateien implementieren | Merkmal |
| VERGLEICHNETZ-2179 | Implementieren Sie Shell\\Batch-Skript, Log, Diff, Config, LESS-Dateien, die | vergleichen Merkmal |
| VERGLEICHNETZ-2178 | Implementieren Sie den Vergleich von PHP-Dateien | Merkmal |
| VERGLEICHNETZ-2177 | Implementieren Sie den Vergleich von SQL-Dateien | Merkmal |
| VERGLEICHNETZ-2176 | Implementieren Sie den Vergleich von C-basierten Dateien | Merkmal |
| VERGLEICHNETZ-2175 | Implementieren Sie den Vergleich von Scala-Dateien | Merkmal |
| VERGLEICHNETZ-2174 | Implementieren Sie den Vergleich von Javascript-Dateien | Merkmal |
| VERGLEICHNETZ-2173 | Implementieren Sie den Vergleich von Assembler-Dateien | Merkmal |
| VERGLEICHNETZ-2172 | Implementieren Sie den Vergleich von Python-Dateien | Merkmal |
| VERGLEICHNETZ-2171 | Implementieren Sie den Vergleich von Java-Dateien | Merkmal |
| VERGLEICHNETZ-2169 | Implementieren Sie den Vergleich von CSharp-Dateien | Merkmal |
| VERGLEICHNETZ-2165 | Multicomparer für Zellen implementieren | Merkmal |
| VERGLEICHNETZ-2103 | Implementieren Sie Multi Comparer für Note | Merkmal |
| VERGLEICHNETZ-2183 | Verbesserte Berechnung der Änderungskoordinaten für PDF | Verbesserung |
| VERGLEICHNETZ-2168 | Aktualisieren Sie die GetSupportedFileTypes-Methode, sodass sie alle unterstützten Formate aus der Dokumentation | enthält Verbesserung |
| VERGLEICHNETZ-2181 | Vergleichen Sie PPT/PPTX-Dokumente mit der Erkennung von Elementbewegungsänderungen | Fehler |
| VERGLEICHNETZ-2097 | PDF-Vergleich, Titel des Ausgabedokuments wird verzerrt | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 20.1 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. **Mehr als zwei Note-Dokumente vergleichen**
    









Ab Version 20.2 ermöglicht GroupDocs.Comparison den Vergleich von mehr als zwei OneNote-Dokumenten (Microsoft OneNote-Dokumente zum Erstellen und Austauschen von Notizen). Diese Funktionalität funktioniert für .one-Dateien.
    









Das folgende Code-Snippet zeigt, wie das geht, hier vergleichen wir 3 Note-Dateien
    









```scharf
string sourcePath = "source.one";
string target1Path = "target1.one";
string target2Path = "target2.one";
string target3Path = "target3.one";
string resultPath = "result.one";
 
Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Ziel1Pfad);
Vergleicher.Hinzufügen (Ziel2Pfad);
Vergleicher.Hinzufügen (Ziel3Pfad);
 
Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), neue CompareOptions());
```
    









2. **Mehr als zwei SpreadSheet-Dokumente vergleichen**
    









Ab Version 20.2 ermöglicht GroupDocs.Comparison den Vergleich von mehr als zwei SpreadSheed-Dokumenten (einschließlich des von Microsoft für die Verwendung mit Microsoft Excel erstellten Tabellenkalkulationsdateiformats und des von OpenOffice/StarOffice verwendeten ODS-Kalkulationstabellendateiformats).
    









Diese Funktionalität funktioniert für „xls“, „xlsx“, „xlsb“, „csv“, „ods“, „xls2003“, „xlsm“ Dateien
    









Das folgende Code-Snippet zeigt, wie das geht, hier vergleichen wir 3 Excel-Dateien
    









```scharf
string sourcePath = "source.xlsx";
string target1Path = "target1.xlsx";
string target2Path = "target2.xlsx";
string target3Path = "target3.xlsx";
string resultPath = "result.pdf";
 
Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Ziel1Pfad);
Vergleicher.Hinzufügen (Ziel2Pfad);
Vergleicher.Hinzufügen (Ziel3Pfad);
 
Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), neue CompareOptions());
```

