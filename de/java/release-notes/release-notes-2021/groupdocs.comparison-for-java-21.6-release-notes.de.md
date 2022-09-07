---
id: groupdocs-comparison-for-java-21-6-release-notes
url: comparison/java/groupdocs-comparison-for-java-21-6-release-notes
title: "GroupDocs.Comparison für Java 21.6 Versionshinweise"
weight: 20
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für Java 21.6{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für Java 21.6:

* Refaktorieren Sie die getDocumentInfo-Methode für Zellen
* Verbessertes Vergleichen von DocumentTags Word
* Verbessertes Blatt-Rendering für Zellen
* Ungültige Seitenhöhe und -breite in der getChanges-Methode behoben
* Problem mit dem Vergleichsproblem mit Tabellen in PDF behoben
* Möglichkeit zum Zusammenführen von Quellcodedateien hinzugefügt
* Weitere Optionen für SummaryPage hinzugefügt
* Problem mit Stilvergleich in der Typen-Mathematikformel in Word behoben
* Problem beim Vergleich von PDF-geschützten mit passwortgeschützten Dokumenten behoben
* Fehlerhaftes Zählen von Änderungen in SummaryPage behoben
* Der Vergleich von span-Tags im HTML-Dokument wurde korrigiert
* Anzahl der Probleme beim Vergleich von HTML-Dokumenten behoben
* Erweiterte Übersichtsseite
* Problem beim Vergleich komplexer PDF-Dokumente behoben
* Behoben: PDF-Vergleich ohne Lizenz
* Falsches Vergleichen von Hyperlinks in Word-Dokumenten behoben
* Verbesserter Vergleich von Tabellen mit mehreren Spalten unterschiedlicher Größe in einem Word-Dokument
* Verbessertes Word-Dokument zum Akzeptieren/Ablehnen von Änderungen
* SaveOriginalState-Option für applyChanges-Methode hinzugefügt
* Verbesserte Bildausgabe
* Problem beim Vergleichen von Tabellen in Word-Dokumenten behoben
* Problem mit nummerierter Liste im Ausgabedokument behoben
* Problem behoben, bei dem Anker- und Reichweiteninformationen für alle Kommentare verloren gingen
* Vergleich von Lesezeichen für das Word-Format hinzugefügt
* Vergleich von Variablen und Dokumenteigenschaften für das Word-Format hinzugefügt
* Möglichkeit hinzugefügt, benutzerdefinierte Schriftarten für Dokumente zu laden
* Verbesserter Bildvergleich und Bildpositionierung nach dem Vergleich für das Zellenformat
* Der Vergleich von Stiftbildern für das Word-Format wurde korrigiert
* Vergleichsabstürze für bestimmte Word-Dateien behoben
* Das Abrufen spezieller Revisionen aus dem Dokument wurde korrigiert
* Verbesserung der Handhabung von Überarbeitungen in Word-Dokumenten
* Problem mit Textduplizierung in Word behoben
* Problem mit falscher Anzeige von Tabellen ohne Anzeige hinzugefügter oder gelöschter Zellen behoben
* Verbesserte Darstellung von Elementen mit Rahmen im Pdf-Format
* Verbesserte Textanzeige im PDF-Format
* Vergleich von Fußnotentypen im Word-Format hinzugefügt
* SourceText-Eigenschaft zur ChangeInfo-Klasse hinzugefügt und TargetText-Eigenschaft für Zellen, Wörter und PDF-Formate verbessert
* Das Schließen des Streams nach dem Generieren einer Vorschau im PDF-Format wurde korrigiert
* Das Generieren von Vorschauen im Diagrammformat wurde korrigiert
* Das Generieren von Vorschauen im HTML-Format wurde korrigiert
* Das Speichern des Vergleichsergebnisses im HTML-Format über den Dateistream wurde korrigiert
* Verbesserter Vergleich im Excel-Format mit Bildern und Diagrammen
* Verbesserte TargetText-Eigenschaft für Diagramm-, Folien-, Txt- und Notizformate

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2416 | Fügen Sie weitere SummaryPage-Optionen hinzu | Merkmal |
| VERGLEICHNETZ-2425 | ExtendedSummaryPage-Option hinzufügen | Merkmal |
| VERGLEICHNETZ-2483 | Akzeptieren oder verwerfen Sie alle Änderungen in einem einzigen Word-Dokument | Merkmal |
| VERGLEICHNETZ-2427 | SaveOriginalState-Option für ApplyChanges-Methode hinzugefügt | Merkmal |
| VERGLEICHNETZ-2133 | Vergleich von Lesezeichen für das Word-Format | Merkmal |
| VERGLEICHNETZ-2145 | Möglichkeit, benutzerdefinierte Schriftarten für Dokumente zu laden | Merkmal |
| VERGLEICHNETZ-2585 | Verbesserung der Fähigkeit, Quelltext für Word-Dokumente zu erhalten | Merkmal |
| VERGLEICHNETZ-2586 | Verbessern Sie die Fähigkeit, Quelltext für PDF-Dokumente zu erhalten | Merkmal |
| VERGLEICHNETZ-2587 | Verbessern Sie die Fähigkeit, Quelltext für Cells-Dokumente zu erhalten | Merkmal |
| VERGLEICHNETZ-2134 | Vergleich von Variablen und Dokumenteigenschaften für das Word-Format | Merkmal |
| VERGLEICH JAVA-822 | Implementieren Sie die ShowInsertedContent-Funktion | Merkmal |
| VERGLEICH JAVA-882 | Kommentarvergleich in Präsentationsfolien | Verbesserung |
| VERGLEICHNETZ-2383 | Comparison.Cells Vergleicht leere Zellen mit einem geänderten Stil | Verbesserung |
| VERGLEICHNETZ-2380 | GetDocumentInfo-Methode für Zellen umgestalten | Verbesserung |
| VERGLEICHNETZ-2388 | Verbesserung der Blattwiedergabe für Zellen | Verbesserung |
| VERGLEICHNETZ-2384 | Verbesserung des Vergleichs von DocumentTags Word | Verbesserung |
| VERGLEICHNETZ-2458 | Verbesserte Bildausgabe | Verbesserung |
| VERGLEICHNETZ-2140 | Problem beim Vergleichen von Bildern und ihrer Position nach dem Vergleich im Zellformat | Verbesserung |
| VERGLEICHNETZ-2557 | Verbesserung der Handhabung von Überarbeitungen in Word-Dokumenten | Verbesserung |
| VERGLEICHNETZ-2563 | Fußnoten werden nicht verglichen | Verbesserung |
| VERGLEICHNETZ-2595 | Verbesserung der Fähigkeit, Quelltext für Diagrammdokumente zu erhalten | Verbesserung |
| VERGLEICHNETZ-2594 | Verbessern Sie die Fähigkeit, Quelltext für Slides-Dokumente zu erhalten | Verbesserung |
| VERGLEICHNETZ-2589 | Verbessern Sie die Fähigkeit, Quelltext für Textdokumente zu erhalten | Verbesserung |
| VERGLEICHNETZ-2598 | Verbesserung der Möglichkeit, Quelltext für Notes-Dokumente zu erhalten | Verbesserung |
| VERGLEICHNETZ-2387 | Ungültige Seitenhöhe und -breite in getChanges-Methode | Fehler |
| VERGLEICHNETZ-2385 | Zellenfehler beim Vergleich mit Tabellenwerkzeugen | Fehler |
| VERGLEICHNETZ-2412 | Falscher Stilvergleich in der mathematischen Formel des Typs in Wort | Fehler |
| VERGLEICHNETZ-2421 | Vergleich zweier PDF-Dateien, Ausnahmefehler bei falschem Passwort | Fehler |
| VERGLEICHNETZ-2420 | Falsche Zählung von Änderungen in SummaryPage | Fehler |
| VERGLEICHNETZ-2418 | HTML-Fix Vergleich von Span-Tags | Fehler |
| VERGLEICHNETZ-2351 | Problem beim HTML-Vergleich | Fehler |
| VERGLEICHNETZ-2422 | Das Problem beim Vergleich von Tabellen mit mehreren Spalten unterschiedlicher Größe in einem Word-Dokument | Fehler |
| VERGLEICHNETZ-2419 | Beim Vergleich zweier Word-Dateien wird kein gelöschter Kommentar angezeigt | Fehler |
| VERGLEICHNETZ-2455 | Falsches Vergleichen von Hyperlinks in Wort | Fehler |
| VERGLEICHNETZ-2456 | Problem beim Vergleich komplexer PDF-Dateien | Fehler |
| VERGLEICHNETZ-2457 | Einfacher PDF-Vergleich ohne Lizenz bringt nichts zurück | Fehler |
| VERGLEICHNETZ-2487 | Ausgabe der nummerierten Liste im Ausgabedokument | Fehler |
| VERGLEICHNETZ-2482 | Wortvergleich zeigt eingefügte/gelöschte Tabelle nicht an | Fehler |
| VERGLEICHNETZ-2481 | Das Ergebnis des Vergleichs verliert Anker- und Bereichsinformationen für alle Kommentare | Fehler |
| VERGLEICHNETZ-2477 | Dieselben Bilder werden in Word Vergleich | als eingefügt oder gelöscht angezeigt Fehler |
| VERGLEICHNETZ-2100 | Problem mit dem Vergleich von Pen-Ergebnissen | Fehler |
| VERGLEICHNETZ-2146 | Vergleich stürzt bei bestimmten Word-Dateien ab | Fehler |
| VERGLEICHNETZ-2151 | Fehler beim Abrufen von Überarbeitungen | Fehler |
| VERGLEICHNETZ-2513 | Vergleich stürzt bei bestimmten Word-Dateien ab| Fehler |
| VERGLEICHNETZ-2537 | Vergleich von DOCX-Dateien Text wird nach dem Vergleich dupliziert, anstatt in der Ausgabe | als ersetzt erkannt zu werden Fehler |
| VERGLEICHNETZ-2533 | Vergleichsproblem in Word-Dokumenten mit Tabellen (Falsche Dokumenterstellung mit deaktivierter Anzeige von Änderungen in Tabellen im Word-Format) | Fehler |
| VERGLEICHNETZ-2451 | Ausgabe des Textfeldvergleichs in PDF | Fehler |
| VERGLEICHNETZ-2454 | Ein Teil der Symbole wird beim Vergleich von PDF-Dateien nicht angezeigt | Fehler |
| VERGLEICHNETZ-2592 | Kann bestimmte Excel-Tabellen nicht vergleichen | Fehler |
| VERGLEICHNETZ-2599 | Vorschaugenerator schließt Stream für PDF | Fehler |
| VERGLEICHNETZ-2600 | Die Diagrammvorschau fügt keinen Text in Formen ein | Fehler |
| VERGLEICHNETZ-2603 | Falsche Anzeige des Excel-Dokuments | Fehler |
| VERGLEICHNETZ-2602 | Diagramme werden nicht im Excel-Format angezeigt | Fehler |
| VERGLEICHNETZ-2601 | HTML-Vorschau rendert nur ein Bild | Fehler |
| VERGLEICH JAVA-870 | Inhaltsverzeichnis Vergleich falsche Ergebnisse | Fehler |
| VERGLEICH JAVA-869 | Ausgabe der Stiftvergleichsergebnisse | Fehler |
| VERGLEICH JAVA-876 | Problem beim Vergleichen von Excel-Dateien mit Tabellentools | Fehler |
| VERGLEICH JAVA-928 | Ausgabe des Textfeldvergleichs in PDF | Fehler |
| VERGLEICH JAVA-937 | Diagrammvergleichsproblem in Excel | Fehler |
| VERGLEICH JAVA-975 | Der Dokumentenvergleich zeigt keinen Unterschied und eine Warnmeldung in der Ausgabe | Fehler |
| VERGLEICH JAVA-978 | Erwartete Tabellenkalkulationen mit Bildvergleichsausgabe | Fehler |
| VERGLEICH JAVA-977 | Zeichenkette vor und nach dem Unterschied suchen | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

* [So führen Sie Quellcodedateien zusammen] (https://docs.groupdocs.com/comparison/java/how-to-merge-source-code-files/)
* [Nur Zusammenfassungsseite abrufen](https://docs.groupdocs.com/comparison/java/get-only-summary-page/)
* [So erhalten Sie erweiterte Informationen auf der Zusammenfassungsseite](https://docs.groupdocs.com/comparison/java/get-extended-information-on-the-summary-page/)
* [SaveOriginalState-Option für ApplyChanges-Methode](https://docs.groupdocs.com/comparison/java/accept-or-reject-detected-changes/)
* [Überarbeitungen annehmen oder ablehnen﻿](https://docs.groupdocs.com/comparison/java/accept-or-reject-revisions/)
* [Vergleich von Lesezeichen für das Word-Format](https://docs.groupdocs.com/comparison/java/compare-bookmarks-in-word/)
* [Vergleich von Variablen und Dokumenteigenschaften für das Word-Format](https://docs.groupdocs.com/comparison/java/compare-of-variables-and-document-properties/)
* [Fähigkeit, benutzerdefinierte Schriftarten zu laden](https://docs.groupdocs.com/comparison/java/load-custom-fonts/)
* [Verbesserte Funktion zum Akzeptieren/Ablehnen von Revisionen für Word-Dokumente](https://docs.groupdocs.com/comparison/java/accept-or-reject-revisions/)
* Aktualisierte Dokumentation zur Beschaffung von Quell- und Zieltexten, die [hier] zu finden ist (https://docs.groupdocs.com/comparison/java/get-source-and-target-text-from-files/).

* Das Problem beim erneuten Anzeigen geänderter Inhalte in einem Dokument trat auf, wenn in den verglichenen Dokumenten bereits andere *Revisionen* vorhanden waren.

**Revision** – Änderungen, die beim Vergleichen von Dokumenten mit integrierten Word-Tools empfangen wurden.

Um dieses Problem zu lösen, wurde die neue Eigenschaft *ShowRevisions* erstellt, mit der Sie die Anzeige dieser *Revisionen* im resultierenden Dokument deaktivieren können. Ein Beispiel für den Code zur Verwendung der neuen Eigenschaft ist unten dargestellt.
* Weitere Informationen zum Abrufen von Quell- und Zieltexten finden Sie [hier](https://docs.groupdocs.com/comparison/java/get-source-and-target-text-from-files/)

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    CompareOptions options = new CompareOptions();
    options.setShowRevisions(false);
    final Path resultPath = comparer.compare(RESULT_PATH, options);
}
```
Weitere Informationen über die neue Eigenschaft finden Sie [hier](https://docs.groupdocs.com/comparison/java/show-revisions/).

* Der Vergleich der Fußnotentypen bezieht sich auf den Vergleich der Stile, außerdem ist diese Art der Änderung im Text schwer darzustellen. Daher werden diese Änderungen nach dem Prinzip von Leerzeilen oder Bildern im Dokument (mit Kommentaren) gekennzeichnet.
Für einen übersichtlicheren Vergleich von Fußnotentypen könnten Sie das folgende Code-Snippet verwenden:

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    CompareOptions options = new CompareOptions();
    options.setDetectStyleChanges(true);
    options.setDetalisationLevel(DetalisationLevel.High);
    final Path resultPath = comparer.compare(RESULT_PATH, options);
}
```

* Aus bestimmten Gründen kann die Erweiterung der Ergebnisdatei geändert werden, daher sollten Sie das Ergebnis der `compare`-Methode anstelle von RESULT_PATH verwenden, um Ergebnisdaten zu erhalten

```java
try(Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    final Path resultPath = comparer.compare(RESULT_PATH);
    if(resultPath != null) {
        // Use resultPath (if it is not null) to read the file, instead of RESULT_PATH
    }
}
```
