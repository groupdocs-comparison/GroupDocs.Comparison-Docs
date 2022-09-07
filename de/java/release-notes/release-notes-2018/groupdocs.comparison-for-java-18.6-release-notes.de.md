---
id: groupdocs-comparison-for-java-18-6-release-notes
url: comparison/java/groupdocs-comparison-for-java-18-6-release-notes
title: "GroupDocs.Comparison für Java 18.6 Versionshinweise"
weight: 4
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für Java 18.6{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der behobenen Fehler in dieser Version von GroupDocs.Comparsion für Java. Die bemerkenswertesten sind:

* Fügen Sie die Möglichkeit hinzu, DICOM-Dokumente durch Comparison.Imaging zu vergleichen
* Vereinfachte und verbesserte öffentliche API für alle unterstützten Formate
* Einführung des Prozesses zum Aufnehmen von Tabellen mit verbundenen Zellen für GroupDocs.Comparison.PDF
* Der Vergleich gefüllter Tabellen für GroupDocs.Comparison.PDF wurde korrigiert
* Einführung von Multi-Compare-Unterstützung für Formate in der öffentlichen GroupDocs.Comparison-API
* Unterstützung von CAD-Formaten eingeführt
* Verbesserter Vergleich von Bildformaten
* Vereinfachen Sie die API für alle unterstützten Formate
* Der Vergleich mehrspaltiger Tabellen für GroupDocs.Comparison.PDF wurde korrigiert
* GroupDocs.Comparison.PDF: Fehler behoben, wenn der Text aus den Absätzen Tabellen überlappt
* Unterstützung der Formate PNG, BMP und PNG eingeführt
* Durchgestrichene Option für gelöschten/geänderten Text im Wortvergleich hinzugefügt
* Verbesserte Vergleichsleistung für Text- und Bildformate
* Unterstützung von ChangeInfo hinzugefügt
* Unterstützung von E-Mail-Formaten eingeführt
* Verbesserte Vergleichsleistung für Zellen, Folien und HTML-Formate
* Verbesserte Übersichtsseiten mit Informationen zu Vergleichsergebnissen für alle Formate
* Möglichkeit zum Anwenden oder Verwerfen für Kategorien von Änderungen in Words-Formaten hinzugefügt
* Unterstützung von Stileinstellungen für alle Formate eingeführt
* Eingeführte Einstellung zum Klonen von Passwörtern für alle Formate
* Eingeführte Einstellung zum Klonen von Metadaten für alle Foramts
* Klonfunktion für Cell-Formate hinzugefügt
* Vergleich von Notizdokumenten hinzugefügt
* Verbesserter Zellenvergleich
* Eine Reihe von Problemen mit Vergleichsfolien behoben
* Aktualisierter Logger
* Neue Funktionen für das Zellenformat hinzugefügt (Pivot-Tabellen, Kopf- und Fußzeilen)
* Funktion der Übersichtsseite behoben
* Autoren wurden allen Änderungen hinzugefügt
* Fehler mit geänderten Stilen in Note wurde behoben
* SaveImages- und GetImages-Methoden in Note wurden korrigiert
* Der Aligner von Cell wurde verbessert
* Note wurde um einen Zwischenabsatzalgorithmus ergänzt
* Die Stile von Outline wurden hinzugefügt
* AlignWithoutPositioning-Algorithmus wurde Note hinzugefügt
* Die Zusammenfassungsseite von Note wurde korrigiert
* PDF-Vergleich von headerFoters wurde hinzugefügt
* Eine Reihe von Sonderfällen für das Notizformat behoben (Wörtertrennung, Absatzvergleich)
* Mechanismus für Zwischenabsätze hinzugefügt, um das Vergleichen zu vereinfachen (für Wörter und Notizen)
* Stilvergleich in Notizen korrigiert
* Aktualisierung der PDF-Struktur
* Korrekturen für die Arbeit mit Bildern im PDF-Format

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-1156 | Fügen Sie die Möglichkeit hinzu, DICOM-Dokumente mit Comparison.Imaging | zu vergleichen Neue Funktion |
| VERGLEICHNETZ-1163 | Änderungen für das DICOM-Format übernehmen/verwerfen | Neue Funktion |
| VERGLEICHNETZ-1165 | Zusammenfassungsseite zu Bilderstreams hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1143 | Unterstützung für Multi-Vergleich für Formate zur öffentlichen GroupDocs.Comparison-API hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1172 | UpdateChanges-Modell für Imaging hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1175 | Unterstützung des Vergleichs CAD hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1217 | Unterstützung für JPG-, BMP- und PNG-Formate hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1170 | GroupDocs.Comparison.PDF: Vergleich des Seitenkontexts vor dem Erstellen des Objektmodells hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1273 | GroupDocs.Comparison.Words: Unterstützung der Einstellung zum Klonen von Dokumentmetadaten hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1295 | Unterstützung des E-Mail-Formats durch GroupDocs.Comparison für .NET hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1276 | GroupDocs.Vergleich aller Formate: Unterstützung für Checkbox und Seite in Change Info | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-1272 | GroupDocs.Comparison.Words: Hinzufügen der Fähigkeit zum Anwenden oder Verwerfen für die Kategorie von Änderungen | Neue Funktion |
| VERGLEICHNETZ-1274 | GroupDocs.Comparison: Alle Formate: Unterstützung für Stileinstellungen hinzugefügt: fett, kursiv, unterstrichen und durchgestrichen | Neue Funktion |
| VERGLEICHNETZ-1332 | Einstellung zum Klonen von Passwörtern für alle Formate hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1331 | Groupdocs.Comparison: Einstellung zum Klonen von Metadaten hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1339 | Möglichkeit zum Anwenden oder Verwerfen für Änderungskategorien hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1407 | Koordinaten von Bildern als Stile hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1395 | Fügen Sie ParagraphMerger | hinzu Neue Funktion |
| VERGLEICHNETZ-1387 | Festgelegtes Passwort zum Dokument für PDF hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1367 | Vergleich.Zellen: Unterstützung für Kopf- und Fußzeilen hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1365 | Unterstützung für Kopf- und Fußzeilen für Pivot-Tabellen hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1362 | Unterstützung von Pivot-Tabellen in Zellen | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-1305 | Unterstützung des OneNote-Formats durch GroupDocs.Comparison für .NET hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-778 | Implementieren Sie den Prozess zum Aufnehmen von Tabellen mit verbundenen Zellen | Verbesserung |
| VERGLEICHNETZ-1148 | Verbesserte öffentliche API | Verbesserung |
| VERGLEICHNETZ-1161 | Möglichkeit zum Vergleich von Ergebnis- und Originaldateien in Imaging.Tests | hinzugefügt Verbesserung |
| VERGLEICHNETZ-1157 | Fügen Sie Lokalisierungsausnahmen für falsche Passwörter hinzu, während Sie Dokumente in Zellen, Wörtern, Folien und PDF öffnen | Verbesserung |
| VERGLEICHNETZ-1188 | Vergleich von Bildformaten verbessern | Verbesserung |
| VERGLEICHNETZ-1182 | Formatübergreifende API-Vereinfachungen für alle unterstützten Formate | Verbesserung |
| VERGLEICHNETZ-1080 | Comparison.PDF: Verbesserte Erkennung von Vergleichsänderungen für Absätze | Verbesserung |
| VERGLEICHNETZ-1254 | Streichoption für gelöschten/geänderten Text im Wortvergleich | Verbesserung |
| VERGLEICHNETZ-1237 | GroupDocs.Comparison.Imaging: Vergleichsleistung verbessern | Verbesserung |
| VERGLEICHNETZ-1235 | GroupDocs.Comparison.Text: Vergleichsleistung verbessern | Verbesserung |
| VERGLEICHNETZ-1218 | Behebung der Unterstützung neuer Einstellungen für PDF | Verbesserung |
| VERGLEICHNETZ-1245 | Vergleich.Wörter: Fall mit absolut unterschiedlichen Absätzen beheben | Verbesserung |
| VERGLEICHNETZ-1244 | Fügen Sie die Stiländerungserkennung für Comparison.Imaging (Höhe, Breite) | hinzu Verbesserung |
| VERGLEICHNETZ-1263 | Übersichtsseiten mit Informationen zu Vergleichsergebnissen für alle Formate verbessern | Verbesserung |
| VERGLEICHNETZ-1232 | GroupDocs.Comparison.Slides: Verbesserte Vergleichsleistung | Verbesserung |
| VERGLEICHNETZ-1275 | GroupDocs.Comparison.Words: Unterstützung von UpdateChanges für StyleChanged-Änderungen hinzugefügt | Verbesserung |
| VERGLEICHNETZ-1288 | GroupDocs.Comparison.Cells: Zellenkoordinaten für Komponenten definieren | Verbesserung |
| VERGLEICHNETZ-1245 | GroupDocs.Comparison.HTML: Verbesserte Vergleichsleistung | Verbesserung |
| VERGLEICHNETZ-1234 | GroupDocs.Comparison.Cell: Verbesserte Vergleichsleistung | Verbesserung |
| VERGLEICHNETZ-1311 | GroupDocs.Comparison.Cells: IComparisonStyle-Schnittstelle eingeführt | Verbesserung |
| VERGLEICHNETZ-1313 | Vergleich.Zellen: Klonfähigkeit hinzufügen | Verbesserung |
| VERGLEICHNETZ-1378 | Finden Sie die richtige Position der Pivot-Tabelle, wenn ihre Koordinaten bereits verwendet wurden | Verbesserung |
| VERGLEICHNETZ-1372 | Verbesserung des Zellenvergleichs | Verbesserung |
| VERGLEICHNETZ-1358 | GroupDocs.Comparison.Slides: Unterstützung von Hyperlinks auf Shape | hinzugefügt Verbesserung |
| VERGLEICHNETZ-1326 | Logger aktualisieren | Verbesserung |
| VERGLEICHNETZ-1409 | Pdf-Verbesserungen: Vergleichen Sie und fügen Sie HeaderFooter zu Dokument | hinzu Verbesserung |
| VERGLEICHNETZ-1408 | Pdf-Verbesserungen: Seiteneigenschaften aktualisieren | Verbesserung |
| VERGLEICHNETZ-1402 | Verbessern Sie den Vergleich von Kommentaren in Comparison.Cells | Verbesserung |
| VERGLEICHNETZ-1400 | Refactoring für Einstellungscode | Verbesserung |
| VERGLEICHNETZ-1396 | Entfernen Sie die Nullprüfung aus der FeelChild-Methode | Verbesserung |
| VERGLEICHNETZ-1390 | Vergleich verbessern.Hinweis | Verbesserung |
| VERGLEICHNETZ-1431 | Comparison.Pfd: Refactor Document Builder mit neuer Inhaltskarte | Verbesserung |
| VERGLEICHNETZ-1429 | Comparison.Pdf: Seiteninhaltskarte implementieren | Verbesserung |
| VERGLEICHNETZ-1427 | Pdf-Verbesserung: Überprüfen und korrigieren Sie den Spaltenvergleich | Verbesserung |
| VERGLEICHNETZ-1424 | Verbessern Sie den Stil, der für den Vergleich tiefgreifend geändert wurde.Hinweis | Verbesserung |
| VERGLEICHNETZ-1422 | Fügen Sie ParagraphMerger zum Vergleich hinzu.Hinweis | Verbesserung |
| VERGLEICHNETZ-1420 | PDF-Struktur aktualisieren | Verbesserung |
| VERGLEICHNETZ-1418 | IntermediateParagraphComparer zu Wörtern hinzufügen | Verbesserung |
| VERGLEICHNETZ-1160 | PDF-Vergleich – PDF-Dateien mit Tabellen und Fußzeilen erzeugen unerwartete Ausgabe | Fehler |
| VERGLEICHNETZ-1184 | GroupDocs.Comparison.Words: Textdateien mit HTML-Inhalt, verglichen mit der Words-Engine | Fehler |
| VERGLEICHNETZ-1185 | GroupDocs.Comparison.Text: Korrigiert den Vergleich von HTML-Code in TXT-Dateien mit Wortvergleich | Fehler |
| VERGLEICHNETZ-1200 | GroupDocs.Comparison.PDF: Fehler behoben, wenn der Text aus den Absätzen Tabellen überlappt | Fehler |
| VERGLEICHNETZ-1208 | Angeordnete Bilder in Fassade | Fehler |
| VERGLEICHNETZ-1256 | Die neue Version 17.4.0 hat fehlende Eigenschaften für ChangeInfo | Fehler |
| VERGLEICHNETZ-1246 | Vergleich.Folien: Zwei fast identische Kommentare im Vergleich als unterschiedlich | Fehler |
| VERGLEICHNETZ-1292 | Vergleich.Folien: falscher Stil der Tabellenzellen nach Ablehnung oder Annahme der Änderungen | Fehler |
| VERGLEICHNETZ-1300 | Vergleich.Folien: Nach Ablehnung gelöschter SmartNode ging Inhalt verloren | Fehler |
| VERGLEICHNETZ-1284 | Comparison.Words: Falscher Tabellenvergleich mit unterschiedlichen Stilen | Fehler |
| VERGLEICHNETZ-1314 | Comparison.Cells: Korrigiert, dass sich der Stil ändert, wenn der Inhalt der Zelle nicht geändert wird | Fehler |
| VERGLEICHNETZ-1333 | Behebung einer Stiländerung, wenn der Inhalt der Zelle nicht geändert wird | Fehler |
| VERGLEICHNETZ-1315 | Vergleich.Zellen: Verbessertes Akzeptieren und Ablehnen von Komponenten mit Hyperlinks | Fehler |
| VERGLEICHNETZ-1370 | Die Lizenzierung funktioniert nicht | Fehler |
| VERGLEICHNETZ-1315 | Vergleich.Zellen: Verbessertes Akzeptieren und Ablehnen von Komponenten mit Hyperlinks | Fehler |
| VERGLEICHNETZ-1376 | Übersichtsseite funktioniert nicht mit API v 17.7.0 | Fehler |
| VERGLEICHNETZ-1291 | Vergleich.Folien: Akzeptieren\\Fehler ablehnen | Fehler |
| VERGLEICHNETZ-1410 | Stil der Übersichtsseite korrigieren | Fehler |
| VERGLEICHNETZ-1405 | Tief geänderte Knoten reparieren | Fehler |
| VERGLEICHNETZ-1399 | Korrigieren Sie die saveImages- und getImages-Methoden für Comparison.Note | Fehler |
| VERGLEICHNETZ-1394 | Fehler mit demselben Text, der auf verschiedene Absätze aufgeteilt ist | Fehler |
| VERGLEICHNETZ-1392 | Fehler mit übermäßiger Kontur | Fehler |
| VERGLEICHNETZ-1385 | Problem beim Abrufen des Autors für die Änderungen (Changeinfo) | Fehler |
| VERGLEICHNETZ-1433 | Problem mit Zwischenabsätzen in Word | Fehler |
| VERGLEICHNETZ-1432 | Vergleich.Hinweis: Sonderfälle der Worttrennung | behoben Fehler |
| VERGLEICHNETZ-1430 | Vergleich.Hinweis:Zeile in der Mitte eines Wortes umbrechen | Fehler |
| VERGLEICHNETZ-1428 | Endlosschleife im Bildrechteck PDF beheben | Fehler |
| VERGLEICHNETZ-1423 | Vergleich.Hinweis Leeren Absatz einfügen\\Löschen vor Text | Fehler |
| VERGLEICHNETZ-1421 | Tabellen mit ähnlichen Koordinaten überlappen einander | Fehler |
| VERGLEICH JAVA-419 | Beim RTF-Vergleich erkennt die API Stiländerungen, hebt sie jedoch nicht hervor, wie dies bei DOCX der Fall ist. | Fehler |
| VERGLEICH JAVA-418 | Der Vergleich bestimmter PDFs gibt null | zurück Fehler |
| VERGLEICH JAVA-383 | Ungültiger Vergleich für PDF-Dokumente | Fehler |
| VERGLEICH JAVA-380 | Der Vergleich einer Datei mit sich selbst ergibt ein schlechtes Ergebnis | Fehler |
| VERGLEICH JAVA-377 | HTML-Vergleich funktioniert nicht | Fehler |
| VERGLEICHNETZ-1523 | PDF-Vergleich – verschlüsselte/textüberlappte Ausgabe | Fehler |
| VERGLEICH JAVA-226 | Comparer vergleicht kein Format und gibt null in ICompareResult | zurück Fehler |
| VERGLEICH JAVA-421 | Die Ausgabe des PDF-Vergleichs ist nicht wie erwartet, der gesamte Text über die erste Zeile hinaus fehlt | Fehler |
| VERGLEICH JAVA-420 | Beim PDF-Vergleich werden keine Stiländerungen erkannt und PDF wird auch an mehreren Stellen abgeschnitten | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für Java 18.6 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

Keiner.

