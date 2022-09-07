---
id: groupdocs-comparison-for-java-20-4-release-notes
url: comparison/java/groupdocs-comparison-for-java-20-4-release-notes
title: "GroupDocs.Comparison für Java 20.4 Versionshinweise"
weight: 1
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für Java 20.4{{< /alert >}}

## Hauptmerkmale

{{< alert style="danger" >}}In dieser Version führen wir eine neue öffentliche API ein, die einfach und benutzerfreundlich gestaltet wurde. Weitere Einzelheiten zur neuen API finden Sie im Abschnitt „Öffentliche Dokumente“. Die alte API wurde entfernt.{{< /alert >}}

Nachfolgend die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für Java:

* Option hinzugefügt, um Kopf-/Fußzeilen von Dokumenten zu vergleichen
* Option zum Festlegen des Papierformats für Ausgabedokumente hinzugefügt
* Multicomparing für Text- und E-Mail-Dokumente implementiert
* Problem beim Freigeben von Dokumenthandlern behoben
* Verbesserte Genauigkeit beim Vergleich von PDF-Dokumenten
* Problem mit falschen Ergebnisdateien in Zellen behoben
* Korrigierte Genauigkeit der Koordinaten von Änderungen in der Dokumentvorschau
* Verbesserte Anzeige des Vergleichsergebnisses ohne Lizenz für TXT-, HTML- und Bilddokumente
* Verbesserter Anmerkungsvergleich für PDF
* Verbessern Sie das Erstellungsergebnis von PDF-Dokumenten
* Problem mit doppelten Bildern in Ergebnisdatei in PDF behoben
* Problem mit DeletedItemsStyle in Spreadsheet behoben
* Korrigierte Genauigkeit des PDF-Vergleichs
* Vergleich von mehr als 2 PDF-Dokumenten implementiert
* Vergleich von mehr als 2 Diagrammdokumenten implementiert
* Verbessern Sie den Tabellenvergleich in PDF
* Fehler beim Vergleich zweier identischer Word-Dokumente behoben

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2072 | Option hinzufügen, mit der das Ausgabeformat (Papiergröße) eingestellt werden kann | Merkmal |
| VERGLEICHNETZ-2069 | Multi-Vergleich für E-Mail implementieren | Merkmal |
| VERGLEICHNETZ-2068 | Implementieren Sie Multi-Comparer für Text | Merkmal |
| VERGLEICHNETZ-2028 | Vergleichsoption hinzufügen, um Kopf-/Fußzeilenvergleich umzuschalten | Merkmal |
| VERGLEICHNETZ-2104 | Implementieren Sie Multicomparer für Diagramm | Merkmal |
| VERGLEICHNETZ-2105 | Implementieren Sie Multicomparer für PDF | Merkmal |
| VERGLEICHNETZ-2112 | TXT-Vergleichsergebnis ohne Lizenz verbessern | Verbesserung |
| VERGLEICHNETZ-2111 | Anzeige des HTML-Vergleichsergebnisses ohne Lizenz verbessern | Verbesserung |
| VERGLEICHNETZ-2110 | Imaging-Vergleichsergebnis ohne Lizenz verbessern | Verbesserung |
| VERGLEICHNETZ-2107 | Verbessern Sie das Erstellungsergebnisdokument in Comparison.PDF | Verbesserung |
| VERGLEICHNETZ-2101 | Anmerkungsvergleich für PDF verbessern | Verbesserung |
| VERGLEICHNETZ-2133 | Tabellenvergleich in PDF verbessern | Verbesserung |
| VERGLEICHNETZ-2094 | API gibt Dateihandles nicht frei | Fehler |
| VERGLEICHNETZ-2071 | Unterschied Breite und Höhe ist falsch | Fehler |
| VERGLEICHNETZ-2070 | Ergebnisdatei für falsche Zellen | Fehler |
| VERGLEICHNETZ-2014 | Unerwartete Menge an Änderungen in den Vergleichsergebnissen einer PDF-Datei. | Fehler |
| VERGLEICHNETZ-2012 | Ausnahme beim Vergleich von PDF-Dateien ohne Lizenz. | Fehler |
| VERGLEICHNETZ-1993 | Falsche Boxabmessungen und -position | Fehler |
| VERGLEICHNETZ-1971 | Unterschied Breite und Höhe ist falsch | Fehler |
| VERGLEICHNETZ-1950 | PDF-Vergleich ist nicht genau | Fehler |
| VERGLEICHNETZ-2108 | Doppelte Bilder in Ergebnisdatei in PDF | Fehler |
| VERGLEICHNETZ-2102 | Problem mit Spreadsheet DeletedItemsStyle | Fehler |
| VERGLEICHNETZ-1950 | PDF-Vergleich ist nicht genau | Fehler |
| VERGLEICHNETZ-2148 | Beim Vergleich zweier identischer Word-Dokumente ist ein Fehler aufgetreten | Fehler |
| VERGLEICH JAVA-764 | Vergleichen Sie PPT/PPTX-Dokumente mit der Erkennung von Elementbewegungsänderungen | Fehler |
| VERGLEICH JAVA-698 | Ergebnisdaten beim Vergleich falsch | Fehler |
| VERGLEICH JAVA-699 | Ergebnisdaten beim Vergleich falsch | Fehler |
| VERGLEICH JAVA-607 | In einigen Fällen ist die XLSX-Ausgabe nicht korrekt | Fehler |
| VERGLEICH JAVA-605 | Dokumentvergleichsproblem für japanische Dateien | Fehler |
| VERGLEICH JAVA-346 | Gibt es eine Möglichkeit, den vorherigen Stil und die Schriftart beizubehalten? | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

* In dieser Version führen wir eine neue öffentliche API ein, die einfach und benutzerfreundlich gestaltet wurde. Weitere Einzelheiten zur neuen API finden Sie im Abschnitt **Öffentliche Dokumente**. Die Legacy-API wurde entfernt.

