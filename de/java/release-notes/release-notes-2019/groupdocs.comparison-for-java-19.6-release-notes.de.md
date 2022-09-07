---
id: groupdocs-comparison-for-java-19-6-release-notes
url: comparison/java/groupdocs-comparison-for-java-19-6-release-notes
title: "GroupDocs.Comparison für Java 19.6 Versionshinweise"
weight: 2
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für Java 19.6{{< /alert >}}

## Hauptmerkmale

Nachfolgend finden Sie eine Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparsion für Java. Die bemerkenswertesten sind:

* Vergleich von Gruppenformen für Diagramme hinzugefügt
* Das Hinzufügen von Formen ohne den Master des Diagramms wurde implementiert
* Verbesserter Absatzvergleich für Diagramme
* Verbesserter StyleSheet-Vergleich für HTML
* Problem behoben, bei dem Stiländerungen in bestimmten Fällen beim Vergleich von PDF-Dokumenten nicht hervorgehoben wurden
* Verbesserter PDF-Vergleich in einigen speziellen Fällen
* Verbesserter Aligner für HTML, der die Vergleichsgenauigkeit erhöht
* Korrigierte und verbesserte Anchors-Tags auf Comparison.HTML
* Verbesserter Tabellenvergleich für Folien
* Problem beim Vergleichen von Tabellen mit unterschiedlichen Stilen behoben
* Der Vergleich der Stile der ersten Spalte der Tabelle wurde korrigiert
* Problem mit falscher Größe von Ergebnisfoliendokumenten behoben
* Verbesserter Diagrammvergleich für Folien
* Versichert und notwendige Änderungen am Vergleich vorgenommen, um ihn Thread-sicher zu machen
* Verbesserter Vergleichstester für Wörter
* Verbesserte Stilerkennung auf Folien
* Problem mit AutoFormen in Folien behoben
* Verbesserter Vergleich großer Dateien in PDF
* Verbesserte Generierung von Arbeitsblattnamen in der Ergebnisdatei
* Vergleich von Diagrammtiteln in Zellen implementiert
* Automatische Größenanpassung in automatischen Formen bei der Generierung von Ergebnisdateien in Cells-Dokumenten implementiert
* Implementierte Diagrammerstellung in Ergebnisdateien (anstelle von Bildern) auf Zellen
* Verbesserter Absatzabsorber in PDF zum Vergleichen der Geschwindigkeitssteigerung
* Problem mit der Einstellung der Absatzzeile behoben
* Problem beim Setzen von Hyperlinks in großen PDF-Dateien behoben
* Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken
* Implementierte Fähigkeit, Dokumente verschiedener Formate in Bilder zu konvertieren
* Problem mit SuperScript- und SubScript-Elementen in Word-Dokumenten behoben
* Feste Stileinstellungen für GroupDocs.Comparison.Html
* Problem beim Vergleich großer PDF-Dateien behoben (andere Fälle)
* Nicht funktionierender Vergleich des EndNote-Elements in Word behoben
* Berechnung von Änderungen für Diagramme, Folien und PDF-Formate implementiert
* Methode zum Abrufen von Dokumentinformationen implementiert
* Verbesserte Ausnahmen und Fehlerbehandlung rund um die Projekte für alle unterstützten Formate
* Problem beim Abrufen von Bildern für HTML-Dateien behoben
* Problem mit der Schrifterkennung behoben
* Fehlerhafter Unterschied in PDF behoben
* Verbesserte Erkennung von Änderungen in Tabellen in Words-Dokumenten

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-1605 | Gruppenformen für Diagramme implementieren | Merkmal |
| VERGLEICHNETZ-1587 | Implementieren Sie den Vergleich verschiedener Formate als Bild | Merkmal |
| VERGLEICHNETZ-1607 | Implementieren Sie GluedShapes in Diagramm | Merkmal |
| VERGLEICHNETZ-1637 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Html | Merkmal |
| VERGLEICHNETZ-1636 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Slides | Merkmal |
| VERGLEICHNETZ-1635 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Notes | Merkmal |
| VERGLEICHNETZ-1634 | Implementieren Sie eine neue Einstellung für die Texthervorhebung Comparison.Pdf | Merkmal |
| VERGLEICHNETZ-1633 | Implementieren Sie die neue Einstellung für die Texthervorhebung Comparison.Words | Merkmal |
| VERGLEICHNETZ-1836 | Speichern Sie Dokumente als Bilder für Words | Merkmal |
| VERGLEICHNET-1837 | Speichern Sie Dokumente als Bilder für Zellen | Merkmal |
| VERGLEICHNETZ-1838 | Speichern Sie Dokumente als Bilder für Folien | Merkmal |
| VERGLEICHNETZ-1839 | Dokumente als Bilder für PDF speichern | Merkmal |
| VERGLEICHNETZ-1840 | Speichern Sie Dokumente als Bilder für HTML | Merkmal |
| VERGLEICHNETZ-1841 | Speichern Sie Dokumente als Bilder für E-Mail | Merkmal |
| VERGLEICHNETZ-1842 | Speichern Sie Dokumente als Bilder für Note | Merkmal |
| VERGLEICHNETZ-1843 | Speichern Sie Dokumente als Bilder für Text | Merkmal |
| VERGLEICHNETZ-1844 | Speichern Sie Dokumente als Bilder für Diagramme | Merkmal |
| VERGLEICHNETZ-1847 | Berechnen Sie die korrekten Koordinaten der Änderungen für Folien | Merkmal |
| VERGLEICHNETZ-1849 | Korrekte Änderungskoordinaten für PDF berechnen | Merkmal |
| VERGLEICHNETZ-1852 | Korrekte Änderungskoordinaten für Diagramme berechnen | Merkmal |
| VERGLEICHNETZ-1895 | Implementieren Sie die Methode Get document info | Merkmal |
| VERGLEICHNETZ-1608 | Verbessern Sie den StyleSheet-Vergleich für HTML | Verbesserung |
| VERGLEICHNETZ-1606 | Fügen Sie eine Form ohne den Master | des Diagramms hinzu Verbesserung |
| VERGLEICHNETZ-1645 | Update für Sicherheitsverbesserungen | Verbesserung |
| VERGLEICHNETZ-1644 | PDF-Mapper verbessern | Verbesserung |
| VERGLEICHNETZ-1640 | Verbesserte Unterstützung für den Vergleich verschiedener Formate mit image | Verbesserung |
| VERGLEICHNETZ-740 | Verbessern Sie HTML-Anker, indem Sie | vergleichen Verbesserung |
| VERGLEICHNETZ-753 | PDF-Vergleich verbessern | Verbesserung |
| VERGLEICHNETZ-758 | HTML-Aligner verbessern | Verbesserung |
| VERGLEICHNETZ-1725 | TableFormatSetter für Folien verbessern | Verbesserung |
| VERGLEICHNETZ-1734 | Vergleich Thread-sicher machen | Verbesserung |
| VERGLEICHNETZ-1748 | Verbessern Sie den Vergleich von Diagrammen auf Folien | Verbesserung |
| VERGLEICHNETZ-1739 | Stilerkennung auf Folien verbessern | Verbesserung |
| VERGLEICHNETZ-735 | Verbessern Sie den Vergleichstester für Words | Verbesserung |
| VERGLEICHNETZ-1738 | Absatzabsorber im Ergebnisdokument verbessern | Verbesserung |
| VERGLEICHNETZ-1742 | Verbessern Sie den Vergleich von Diagrammen auf Zellen | Verbesserung |
| VERGLEICHNETZ-1773 | Verbesserungen der Fehlerbehandlung für alle Formate | Verbesserung |
| VERGLEICHNETZ-1799 | Verbessern Sie die Änderungserkennung in Tabellen auf Words | Verbesserung |
| VERGLEICH JAVA-589 | Fügen Sie Funktionen hinzu, um fehlende Schriftarten entweder automatisch oder mit einer Einstellung zu ersetzen | Verbesserung |
| VERGLEICHNETZ-1619 | Ausgabe von PDF mit Bildern ist nicht wie erwartet | Fehler |
| VERGLEICHNETZ-1620 | Ausgabe von PDF mit Diagrammen ist nicht wie erwartet | Fehler |
| VERGLEICHNETZ-1619 | Ausgabe von PDF mit Bildern ist nicht wie erwartet | Fehler |
| VERGLEICHNETZ-752 | Fehler beim Vergleichen von Word-Dateien, die mit dem Kennwort | geschützt sind Fehler |
| VERGLEICHNETZ-750 | PDF-Dokumente können nicht verglichen werden | Fehler |
| VERGLEICHNETZ-1727 | Die Folientabelle zeigt keine Änderung des Textstils an | Fehler |
| VERGLEICHNETZ-1726 | Folien: Problem mit Tabellenthema | Fehler |
| VERGLEICHNETZ-1724 | Folien: Problem beim Vergleichen von Stilen in der ersten Spalte | Fehler |
| VERGLEICHNETZ-1723 | Folien: Ausgabe mit einem Größen-Ergebnisdokument | Fehler |
| VERGLEICHNETZ-1744 | Beheben Sie Probleme mit der automatischen Form auf Folien | Fehler |
| VERGLEICHNETZ-1760 | Falscher Blattname in Ergebnisdatei in Zellen | Fehler |
| VERGLEICHNETZ-1747 | Problem beim Vergleichen großer PDF-Dateien | Fehler |
| VERGLEICHNETZ-1769 | Problem beim Festlegen von ParagraphLines. | Fehler |
| VERGLEICHNETZ-1766 | Problem beim Setzen von Hyperlinks in großen PDF-Dateien | Fehler |
| VERGLEICHNETZ-1806 | Problem bei SuperScript und SubScript | Fehler |
| VERGLEICHNETZ-1802 | Einstellungen StyleSettings funktioniert nicht für HTML | Fehler |
| VERGLEICHNETZ-1803 | Problem beim Vergleichen großer PDF-Dateien (andere Fälle) | Fehler |
| VERGLEICHNETZ-1804 | EndNote-Vergleich funktioniert nicht | Fehler |
| VERGLEICHNETZ-1808 | Der Vergleich funktioniert nicht auf Fußnote | Fehler |
| VERGLEICHNETZ-1772 | PDF-Vergleich hat überlappende und verstümmelte Ausgabe | Fehler |
| VERGLEICHNETZ-1774 | Bilder für HTML-Dateien können nicht abgerufen werden | Fehler |
| VERGLEICHNETZ-1805 | Gelöschte Elemente in der Vergleichsausgabe sind nicht wie erwartet | Fehler |
| VERGLEICHNET-1892 | Falsche Differenzinformationen in PDF | Fehler |
| VERGLEICHNETZ-1899 | Html MarkDeletedInsertedContentDeep Bug | Fehler |
| VERGLEICHNETZ-1903 | Lizenzproblem in GroupDocs.Comparison für .NET-Anwendung | Fehler |
| VERGLEICHNETZ-1906 | Ausnahme bei der Schrifterkennung | Fehler |
| VERGLEICHNETZ-1909 | Worttrennungsausnahme | Fehler |
| VERGLEICH JAVA-147 | Vergleich zweier PDF-Dateien mit GroupDocs.Comparison für Java 17.3.0 | nicht möglich Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für Java 19.6 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. Verwenden Sie "DiagramMasterSetting", um Master des Comparison.Diagram zu verwalten.
    













„Java
setMasterPath(String);// - Vom Benutzer festgelegter benutzerdefinierter Master-Pfad
setUseSourceMaster(boolean);// – true – Master von Quelle und Ziel zusammen verwenden, false – Standard- oder benutzerdefinierten Master verwenden
```
    













Beispiel:
    













* UseSourceMaster – false ohne MasterPath – Standard-Master-Pfad verwenden
* UseSourceMaster – false mit MasterPath – benutzerdefinierten Master-Pfad verwenden
* UseSourceMaster – true – Master aus Quell- und Zieldokument zusammen verwenden
    













Verwenden Sie "OriginalSize", um die Dokumentgröße festzulegen, wenn Sie Bilder mit verschiedenen Formaten vergleichen. Diese Größe wird verwendet, wenn das Dokument in das Bild konvertiert wird.
    













„Java
OriginalSize -> setWidth(...);// int
OriginalSize -> setHeigth(...);// int;
```
    













      























    













2. Stileinstellungen für eingefügte, gelöschte und geänderte Elemente, die zum Festlegen von Schriftfarbe, Hervorhebungsfarbe, Stilen (fett, kursiv, unterstrichen, durchgestrichen) und Tags für markierte Änderungen im Ergebnisdokument verwendet werden.
    













„Java
settings.getInsertedItemsStyle().setFontColor(Color.getBrown());
settings.getInsertedItemsStyle().setHighlightColor(Color.getRed());
settings.getInsertedItemsStyle().setBeginSeparatorString("<inserted> ");
settings.getInsertedItemsStyle().setEndSeparatorString("</inserted> ");
```
    













„Java
settings.getDeletedItemsStyle().setFontColor(Color.getAquamarine());
settings.getDeletedItemsStyle().setHighlightColor(Color.getBlue());
settings.getDeletedItemsStyle().setBeginSeparatorString("<deleted> ");
settings.getDeletedItemsStyle().setEndSeparatorString("</deleted> ");
```
    













„Java
settings.getStyleChangedItemsStyle().setFontColor(Color.getAqua());
settings.getStyleChangedItemsStyle().setHighlightColor(Color.getGreen());
settings.getStyleChangedItemsStyle().setBeginSeparatorString(" <style>");
settings.getStyleChangedItemsStyle().setEndSeparatorString("</style> ");
```
    













      























    













3. Erhalten einer Bilddarstellung von Dokumentseiten.
    













„Java
Vergleicher Vergleicher = neuer Vergleicher ();
Vergleichseinstellungen cs = neue Vergleichseinstellungen ();
cs.setStyleChangeDetection (true);
     





















     





















// Dokument vergleichen
ICompareResult Ergebnis = Comparer.compare (sourcePath, targetPath, cs);
result.saveDocument(resultPath);
     





















     





















// Seitenliste abrufen
Aufführen<PageImage> ErgebnisBilder = Comparer.convertToImages(ErgebnisPfad);
     





















     





















// Speichern Sie sie als Bitmap in einem separaten Ordner
if (!new File(savePath + "/Result Pages").exists())
neue Datei(savePath + "/Result Pages").mkdir();
     





















     





















für (Seitenbild image : resultImages)
{
BufferedImage Bitmap = ImageIO.read(image.getPageStream());
ImageIO.write(bitmap, "png", new FileOutputStream(savePath + "/Result Pages/result_" + image.getPageNumber() + ".png"));
}
```

