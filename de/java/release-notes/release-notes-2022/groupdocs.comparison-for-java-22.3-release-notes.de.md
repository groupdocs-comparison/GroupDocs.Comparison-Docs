---
id: groupdocs-comparison-for-java-22-3-release-notes
url: comparison/java/groupdocs-comparison-for-java-22-3-release-notes
title: "GroupDocs.Comparison für Java 22.3 Versionshinweise"
weight: 20
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für Java 22.3{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für Java 22.3:

* Ersatz für Leerzeilen implementiert, anstatt Änderungen im Ergebnisdokument für Absätze im Word-Format anzuzeigen
* Vergleich von Werten aus String-Variablen implementiert
* Verbesserter Bildvergleich im Cells-Format
* Verbesserte Erstellung von Diagrammen im Zellenformat
* Verbesserte Anzeige von Komponenten mit Stiländerungen für das Word-Format
* Verbesserte Aussagekraft von Fehlermeldungen im PDF-Format
* Verbesserter Vergleich verbundener Zellen im Zellenformat
* Verbesserte Verarbeitung von Absätzen mit Stiländerungen im PDF-Format
* Verbesserte Bilderzeugung in PreviewOptions für Words-Dokumente
* Verbesserte Berechnung der Koordinaten für Run for Words-Dokumente
* Neuer Parameter zum Bildstilvergleich hinzugefügt, mit dem Sie den Markup-Typ im Word-Format verfolgen können
* Redundante span-Tags um unveränderten Text in HTML entfernt
* Problem beim Schließen von Streams beim Vergleichen von Textdokumenten behoben
* Behobener und verbesserter Vergleich von Header/Footer-Komponenten
* Die Handhabung von Listen wurde korrigiert und verbessert
* Die Behandlung einiger nicht unterstützter Dateisignaturen wurde korrigiert
* Korrigierte Koordinatenberechnung für Änderungen in der ChangeInfo-Liste
* Die Erstellung von Diagrammen in einigen Fällen im Excel-Format wurde korrigiert
* Die Erstellung des resultierenden Dokuments im HTML-Format wurde korrigiert
* Das Zählen von Änderungslisten im Diagrammformat wurde korrigiert
* Das Abrufen von Informationen über Seitenzahl und -größe für Änderungen beim Aufrufen der Methode getChanges() wurde korrigiert
* Das Abrufen von Seiteninformationen und Koordinaten für die Hyperlink-Komponente im Word-Format wurde korrigiert
* Der Vergleich leerer Zellen mit geändertem Stil im Zellenformat wurde korrigiert
* Der Vergleich bestimmter Absätze im PDF-Format wurde korrigiert
* Die Anzeige von Absätzen mit Inhaltsverzeichnis im PDF-Format wurde korrigiert
* Ein Problem beim Vergleich einiger Anmerkungen im PDF-Format wurde behoben
* Die Anzeige der Eigenschaft ComponentType in der Liste der Änderungen der Methode getChanges() wurde korrigiert
* Die Anzeige von Textstilen auf der PropertySummaryPage wurde korrigiert
* Festgelegte Seitenzahlen für Änderungen für Notiz- und Textdokumentformate
* Die Einstellung von Koordinaten und Seiteninformationen für einige Änderungen im Word-Dokumentformat wurde korrigiert
* Korrigierte Einstellungskoordinaten für Änderungen in Cells-Dokumenten und Word-Dokumenten mit Kommentaren
* Die Anzeigelogik einer leeren SummaryPage wurde korrigiert
* Problem mit der Anzeige markierter Änderungen behoben, wenn die Änderung mehrere Zeilen dauert
* Problem mit der Anzeige markierter Absatzänderungen behoben
* Problem mit Word-Änderungen mit unnötigen Objekten behoben
* Problem behoben, bei dem Hyperlinks im Diagramm in der Übersichtsseite nicht gezählt wurden
* Problem mit getChanges-Methode behoben, das keine verschachtelten Inhalte zurückgibt
* Problem mit HTML-Titel in Ergebnisdatei mit unnötigem <span>Tag behoben.</span>
* Problem mit MarkNestedContent-Eigenschaft im Diagramm behoben, das Änderungen entfernt
* Problem im Zusammenhang mit Fehlern beim Vergleichen von HTML-Dokumenten behoben
* Der Titel des verlorenen alternativen Textes in Zellen wurde behoben
* Problem behoben, bei dem gruppierte Objekte in PowerPoint-Dokumenten nicht verglichen wurden
* Problem mit Word- und PDF-Änderungszählern behoben, die eine falsche Anzahl von Änderungen zurückgaben
* Problem behoben, bei dem die Präsentationsdatei Stiländerungen nicht widerspiegelte
* Problem mit falscher Höhe in der PDF-Ergebnisausgabe behoben
* Fehlerhafte Berechnung von Koordinaten für PDF mit Bildern behoben
* Problem mit Cells-Ausgabedatei behoben, das Änderungen aus vollständig gelöschten Arbeitsblättern enthält, wenn MarkNestendContent-Eigenschaft deaktiviert ist
* Problem mit Imaging-Änderungszählern behoben, die eine falsche Anzahl von Änderungen zurückgaben
* Problem mit PDF-Ausgabedatei mit Warnmeldung behoben
* Problem behoben, bei dem HTML-Elemente nicht nach Attributen verglichen wurden
* Falsche Textpositionierung in PDF behoben
* Vergleichsabsturz in bestimmten Word-Dokumenten behoben
* Problem mit HTML-Vergleich für die Vergleichs-App behoben
* Problem mit dem Bildvergleich für die Vergleichs-App behoben
* Problem mit bestimmten PDFs behoben, die kein Ergebnis zurückgeben

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2560 | Die Ausgabe des Word-Dokumentvergleichs ist nicht wie erwartet | Fehler |
| VERGLEICHNETZ-2597 | Problem beim Vergleich von Excel-Dateien | Fehler |
| VERGLEICHNETZ-2624 | Erstellen von Diagrammen unvollständig | Fehler |
| VERGLEICHNETZ-2626 | Der Zeilenunterschied und die Anzeige von Details zu Stiländerungen in der Ausgabe | können nicht abgerufen werden Fehler |
| VERGLEICHNETZ-2627 | Situation verhindern, wenn beim Vergleichen der Textdatei-Stream leer ist | Fehler |
| VERGLEICHNETZ-2667 | Eingabezeichenfolgen vergleichen | Merkmal |
| VERGLEICH JAVA-895 | Die Ausgabe des Tabellenvergleichs ist nicht wie erwartet | Verbesserung |
| VERGLEICHNETZ-2659 | Erstellen von Spaltlinien verbessern | Verbesserung |
| VERGLEICHNETZ-2651 | Viele Änderungen zum Löschen von HeaderFooter | Fehler |
| VERGLEICHNETZ-2655 | Vergleichsproblem in Word-Dokumenten mit nummerierter Liste | Fehler |
| VERGLEICHNETZ-2686 | Ausnahme wird ausgelöst, wenn versucht wird, die Datei ohne Lizenzierung mit sich selbst zu vergleichen | Fehler |
| VERGLEICHNETZ-2687 | Fehler über Speicherlecks wird für jeden Fehler angezeigt | Fehler |
| VERGLEICHNETZ-2629 | Die API verfolgt die Positionsänderung für ein Bild in der Word-Datei nicht | Merkmal |
| VERGLEICHNETZ-2631 | Ausgabe einiger Sonderzeichen in Html | Fehler |
| VERGLEICHNETZ-2691 | Problem beim Vergleichen von Diagrammen im Zellenformat | Fehler |
| VERGLEICHNETZ-2694 | Dokumentvergleichsergebnis hat keine/falsche Feldpositionsdaten | Fehler |
| VERGLEICHNETZ-2715 | Problem beim Abrufen der Änderungsliste für Diagramme | Fehler |
| VERGLEICHNETZ-2720 | Ändern Sie die Logik zum Abrufen von Informationen über die Seite in Änderungen | Verbesserung |
| VERGLEICHNETZ-2760 | Problem beim Vergleich verbundener Zellen | Fehler |
| VERGLEICHNETZ-2716 | Das Vergleichen von PDF-Dateien dauert zu lange | Fehler |
| VERGLEICHNETZ-2762 | Problem beim Vergleich leerer Zellen mit geändertem Stil | Fehler |
| VERGLEICHNETZ-2759 | Vergleichs-API-Folienänderungen haben keine Seitennummer | Fehler |
| VERGLEICHNETZ-2763 | Vergleichs-API-Wort-Hyperlink-Problem | Fehler |
| VERGLEICHNETZ-2593 | Übersichtsseite zählt verschobene Textblöcke nicht | Verbesserung |
| VERGLEICHNETZ-2454 | Ein Teil der Symbole wird beim Vergleich von PDF-Dateien nicht angezeigt | Fehler |
| VERGLEICHNETZ-2787 | Objektverweisfehler beim Vergleichen von PDF-Dokumenten, die Anmerkungen enthalten | Fehler |
| VERGLEICHNETZ-2786 | Problem mit der Anzeige von PropertySummaryPage | Fehler |
| VERGLEICHNETZ-2790 | Groupdocs.Comparison API Änderungen in Textdateien haben keine Seitenzahl | Fehler |
| VERGLEICHNETZ-2791 | Groupdocs.Comparison API Notes-Dokumentänderungen haben keine Seitenzahl | Fehler |
| VERGLEICHNETZ-2818 | Problem beim Erkennen von PageNumber in Knoten | Fehler |
| VERGLEICHNETZ-2839 | Problem mit der Anzeige markierter Änderungen | Fehler |
| VERGLEICHAPP-56 | Fix ändert Koordinaten für Cells-Dokumente | Fehler |
| VERGLEICHNETZ-2843 | Problem mit der Anzeige markierter Absatzänderungen | Fehler |
| VERGLEICHNETZ-2842 | Problem mit der Anzeige markierter Änderungen bei Übertragung in neue Zeile | Fehler |
| VERGLEICHNETZ-2792 | Groupdocs.Comparison API Word-Änderungen haben unnötige Objekte | Fehler |
| VERGLEICHNETZ-2866 | Ändern des leeren SummaryPage-Formats | Fehler |
| VERGLEICHNETZ-2865 | Verbesserte Berechnung der Koordinaten für Run for Words-Dokumente | Verbesserung |
| VERGLEICHNETZ-2869 | Problem mit der MarkNestedContent-Option in Slides | Fehler |
| VERGLEICHNETZ-2870 | Problem mit der MarkNestedContent-Option in Hinweis | Fehler |
| VERGLEICHNETZ-2871 | Problem mit SummaryPage-Zählern in Diagramm | Fehler |
| VERGLEICHNETZ-2872 | Problem mit HTML-Titel in Ergebnisdatei | Fehler |
| VERGLEICHNETZ-2876 | Problem mit der MarkNestedContent-Eigenschaft in Diagramm | Fehler |
| VERGLEICHNETZ-2875 | Problem mit der Deaktivierung der Anzeige eingefügter/gelöschter Inhaltseigenschaften | Fehler |
| VERGLEICHNETZ-2918 | Problem mit Änderungszählern in Word | Fehler |
| VERGLEICHNETZ-2919 | Problem mit Änderungszählern in PDF | Fehler |
| VERGLEICHNETZ-2898 | Problem beim Vergleich gruppierter Objekte in PowerPoint-Dokumenten | Fehler |
| VERGLEICHNETZ-2873 | Problem beim Vergleich von Präsentationsdateien | Fehler |
| VERGLEICHAPP-71 | Falsche PDF-Seitenhöhe | Fehler |
| VERGLEICHAPP-62 | Falsche Koordinatenberechnung bei PDF mit Bildern | Fehler |
| VERGLEICHNETZ-2920 | Problem mit Änderungszählern in Imaging | Fehler |
| VERGLEICHNETZ-2509 | PDF-Vergleich, Ausgabe zeigt eine Warnmeldung | Fehler |
| VERGLEICHNETZ-2921 | Problem mit Arbeitsblättern und MarkNestedContent-Eigenschaft in Zellen | Fehler |
| VERGLEICHNETZ-2922 | Problem beim Vergleichen von Tag-Attributen in HTML | Fehler |
| VERGLEICHNETZ-2559 | Der Vergleich bestimmter PDFs liefert kein Ergebnis | Fehler |
| VERGLEICHNETZ-2947 | Dokumentenvergleich stürzt ab | Fehler |
| VERGLEICHNETZ-2944 | Überflüssige Span-Tags entfernen | Fehler |
| VERGLEICHAPP-76 | Problem mit HTML-Vergleich | Fehler |
| VERGLEICHAPP-77 | Problem beim Bildvergleich | Fehler |
| VERGLEICH JAVA-981 | Problem mit Alt-Text-Vergleich | Fehler |
| VERGLEICH JAVA-979 | PDF mit Inhaltsverzeichnis Vergleichsausgabe | Fehler |
| VERGLEICH JAVA-946 | Indexvergleich als PDF | Fehler |
| VERGLEICH JAVA-875 | Können wir Zellränder und Zellen mit gefüllten Farben vergleichen | Fehler |
| VERGLEICH JAVA-1185 | Das Vergleichen von PDF-Dateien dauert zu lange | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

1. Um Änderungen in der Anzeige von Informationen zu Komponenten mit Stiländerungen anzuzeigen, können Sie den folgenden Code verwenden:

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);

    CompareOptions options = new CompareOptions();
    options.setDetectStyleChanges(true);
    options.setDetalisationLevel(DetalisationLevel.High);

    comparer.compare(resultPath, options);
}
```

2. Erfahren Sie mehr darüber, wie Ergebnisdokumente mit geändertem Inhalt durch Leerzeilen ersetzt werden können
gefunden [hier](https://docs.groupdocs.com/comparison/java/show-gap-lines/).

3. Erfahren Sie mehr über den Vergleich von Werten aus String-Variablen
   found [here](https://docs.groupdocs.com/comparison/java/load-text-from-string/).
