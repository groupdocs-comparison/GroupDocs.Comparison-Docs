---
id: groupdocs-comparison-for-java-20-11-release-notes
url: comparison/java/groupdocs-comparison-for-java-20-11-release-notes
title: "GroupDocs.Comparison für Java 20.11 Versionshinweise"
weight: 1
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für Java 20.11{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für Java:

* Möglichkeit hinzugefügt, die gängigsten Skripte und Programmiersprachendateien zu vergleichen
* Alle unterstützten Dateiformate enthalten
* Neue Funktion zum Anzeigen nur eingefügter Inhalte hinzugefügt
* Seitenvorschaugrößen hinzugefügt
* Implementierte Fähigkeit, mehr als zwei SpreadSheet-Dokumente zu vergleichen
* Implementierte Möglichkeit, mehr als zwei Notizdokumente zu vergleichen
* Verbesserte Berechnung der Änderungskoordinaten für PDF
* Verbesserte Leistung beim mehrfachen Vergleichen von Textdokumenten
* Verbesserte Funktion zum Anzeigen von Zieltext für Präsentationen, Tabellen, Diagramme, PDF, Notizen und Text
* Verbesserte Verwendung von Ausnahmen
* Funktionsoptimierung durch Code-Refaktorisierung
* Die Erkennung von Elementbewegungsänderungen für Präsentationsdokumente (Folien) wurde korrigiert
* Das Erstellen einer Ausgabe-HTML-Datei beim Vergleichen von Quellcodedateien wurde korrigiert
* Ausnahmefehler beim Vergleichen von Diagrammdokumenten behoben
* Probleme mit der Bibliothekskompatibilität für Spreadsheet und Notes behoben
* Anzahl der Ausnahmen beim Vergleichen von Diagrammen behoben
* Die Ausnahmebehandlung mit der Meldung „Ungültiges Passwort“ während der Generierung der Vorschau der passwortgeschützten PDF-Datei wurde korrigiert
* Problem mit der Note-Bibliotheksversion behoben
* Unerwartete Ränder auf der Vergleichsergebnisseite behoben.
* Leerraum zwischen zwei Zeilen im PDF-Vergleich behoben
* Fehler beim Vergleichen von Word-Dokumenten mit Tabellen behoben
* Unerwartete Größen der Excel-Dateiblätter/-seiten behoben.
* Fehlerhafte Positionen der verglichenen Elemente im Ergebnis für den SpreadSheet-Vergleich wurden behoben
* Problem beim Vergleichen von Word-Dokumenten mit Kontrollkästchen und Formularfeldern in Tabellenzellen behoben

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2188 | Implementieren Sie Groovy-Dateien, die | vergleichen Merkmal |
| VERGLEICHNETZ-2187 | Implementieren Sie JSON-Dateien, die | vergleichen Merkmal |
| VERGLEICHNETZ-2186 | Implementieren Sie den Vergleich von ActionScript-Dateien | Merkmal |
| VERGLEICHNETZ-2185 | Implementieren Sie den Vergleich von Perl-Dateien | Merkmal |
| VERGLEICHNETZ-2184 | Implementieren Sie den Vergleich von Objective C/C++-Dateien | Merkmal |
| VERGLEICHNETZ-2180 | Vergleichen von Ruby-Dateien implementieren | Merkmal |
| VERGLEICHNETZ-2179 | Implementieren Sie Shell/Batch-Skript, Log, Diff, Config, LESS-Dateien, die | vergleichen Merkmal |
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
| VERGLEICHNETZ-2234 | Implementieren Sie die ShowInsertedContent-Funktion | Merkmal |
| VERGLEICHNETZ-2183 | Verbesserte Berechnung der Änderungskoordinaten für PDF | Verbesserung |
| VERGLEICHNETZ-2168 | Aktualisieren Sie die getSupportedFileTypes-Methode, sodass sie alle unterstützten Formate aus der Dokumentation | enthält Verbesserung |
| VERGLEICHNETZ-2214 | Leistungssteigerung für TXT multiComparer | Verbesserung |
| VERGLEICHNETZ-2269 | Verbesserung der getTargetText-Funktion für Diagramme | Verbesserung |
| VERGLEICHNETZ-2242 | Verbesserung der getTargetText-Funktion für Folien | Verbesserung |
| VERGLEICHNETZ-2241 | Verbessern Sie die getTargetText-Funktion für Zellen | Verbesserung |
| VERGLEICHNETZ-2245 | Verbesserung der getTargetText-Funktion für PDF | Verbesserung |
| VERGLEICHNETZ-2244 | Verbesserung der getTargetText-Funktion für Notizen | Verbesserung |
| VERGLEICHNETZ-2243 | Verbesserte getTargetText-Funktion für Text | Verbesserung |
| VERGLEICHNETZ-2271 | Verwendung von Ausnahmen verbessern | Verbesserung |
| VERGLEICHNETZ-2273 | Größen der Seitenvorschau | Verbesserung |
| VERGLEICHNETZ-2181 | Vergleichen Sie PPT/PPTX-Dokumente mit der Erkennung von Elementbewegungsänderungen | Fehler |
| VERGLEICHNETZ-2097 | PDF-Vergleich, Titel des Ausgabedokuments wird verzerrt | Fehler |
| VERGLEICHNETZ-2235 | TextComparerResult erstellt keine .html-Datei für Programmiersprachendateien | Fehler |
| VERGLEICHNETZ-2209 | Der Vergleich zweier vsdx-Dateien löst eine Ausnahme aus | Fehler |
| VERGLEICHNETZ-2208 | Zeilenumbruchproblem bei Diagrammtext | Fehler |
| VERGLEICHNETZ-2316 | Ausnahme mit der Meldung „Ungültiges Passwort“ während der Generierung der Vorschau der passwortgeschützten PDF-Datei | Fehler |
| VERGLEICHNETZ-2320 | Unerwartete Ränder auf der Vergleichsergebnisseite | Fehler |
| VERGLEICHNETZ-2295 | Leerraum zwischen zwei Zeilen im PDF-Vergleich | Fehler |
| VERGLEICHNETZ-2322 | Unerwartete Größen der Blätter/Seiten der Excel-Datei | Fehler |
| VERGLEICHNETZ-2350 | Vergleich.Zellen: Falsche Positionen der verglichenen Elemente im Ergebnis | Fehler |
| VERGLEICHNETZ-2349 | Vergleichen von Word-Dokumenten mit Kontrollkästchen und Formularfeldern in Tabellenzellen | Fehler |
| VERGLEICH JAVA-374 | Multithreading-Vergleich gibt null | zurück Fehler |
| VERGLEICH JAVA-375 | Falsches Vergleichsergebnis für pdf | Fehler |
| VERGLEICH JAVA-866 | Probleme mit der Dokumentvergleichsstudie | Fehler |
| VERGLEICH JAVA-867 | Tabelle kann nicht in Absatz | umgewandelt werden Fehler |
| VERGLEICH JAVA-872 | Schriftgrößenunterschied in derselben Zeile nicht erkannt | Fehler |
| VERGLEICH JAVA-894 | Lizenzproblem, wenn sowohl Vergleichs- als auch Konvertierungs-APIs verwendet werden | Fehler |
| VERGLEICH JAVA-896 | Besonderes Problem beim Vergleich von XLS-Dateien | Fehler |
| VERGLEICH JAVA-1009 | Lizenzausgabe in Spring-Anwendung | Fehler |
| VERGLEICH JAVA-1010 | Ausnahme beim Vergleich zweier HTML-Dateien auslöst | Fehler |
| VERGLEICH JAVA-1031 | Nicht genug Platz für alle Komponenten | Fehler |


## Öffentliche API und rückwärtsinkompatible Änderungen

Ab Version 20.11 ermöglicht **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** das Abrufen von Zieltext bestimmter Änderungen im Ergebnisdokument. Dies funktioniert für **Word**-Dokumente.

Um diese Funktion zu verwenden, sollten Sie den Getter *getChanges().get(...).getTargetText()* aufrufen

```java
try (Comparer comparer = new Comparer(sourceDocumentPath)) {
     comparer.add(targetDocumentPath);
     comparer.compare(outputPath);
     ChangeInfo[] changes = comparer.getChanges();
     for (ChangeInfo change : changes) {
         String targetText = change.getTargetText();
         System.out.println(targetText);
     }
}
```

Ab Version 20.11 bietet **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** die Möglichkeit, die Anzeige hinzugefügter Inhalte in der Ergebnisdatei zu deaktivieren.
  


Um diese Funktion zu verwenden, sollten Sie *compareOptions.setShowInsertedContent(false)* verwenden.


```java
CompareOptions compareOptions = new CompareOptions();
compareOptions.setShowInsertedContent(false);

try (Comparer comparer = new Comparer(sourceDocumentPath)) {
     comparer.add(targetDocumentPath);
     comparer.compare(outputPath, new SaveOptions(), compareOptions);
}
```

Ab Version 20.11 bietet **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** die Möglichkeit, Pfade zu Ordnern mit benutzerdefinierten Schriftarten festzulegen.

  


Um diese Funktion zu nutzen, sollten Sie *FontsHelper.setFonts(...);*



```java
FontsHelper.setFonts(Arrays.asList("path1", "path2", "path3"));
```
