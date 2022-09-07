---
id: groupdocs-comparison-for-java-19-10-release-notes
url: comparison/java/groupdocs-comparison-for-java-19-10-release-notes
title: "GroupDocs.Comparison für Java 19.10 Versionshinweise"
weight: 1
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für Java 19.10{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der behobenen Fehler in dieser Version von GroupDocs.Comparsion für Java. Die bemerkenswertesten sind:

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
* Problem behoben, wenn Abschnitte auf die neue Seite verschoben wurden
* Tippfehler in der API-Referenz behoben
* Implementierte Empfindlichkeitsoption
* Berechnungskoordinaten von Änderungen für Word-Dokumente implementiert
* Überlappende Inhalte in resultierenden PDF-Dokumenten behoben
* Problem behoben, wenn Abschnitte auf die neue Seite verschoben wurden
* Integriertes kreditbasiertes Abrechnungssystem mit der neuesten Version von Metered
* Namensraum aktualisiert, um logischer und bequemer zu sein (einige Namensräume wurden umbenannt)

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
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
| VERGLEICHNETZ-1773 | Verbesserungen der Fehlerbehandlung für alle Formate | Verbesserung |
| VERGLEICHNETZ-1799 | Verbessern Sie die Änderungserkennung in Tabellen auf Words | Verbesserung |
| VERGLEICHNETZ-1846 | Berechnen Sie die korrekten Koordinaten der Änderungen für Wörter | Verbesserung |
| VERGLEICHNETZ-1929 | Implementieren Sie die Empfindlichkeitsoption | Verbesserung |
| VERGLEICHNETZ-1901 | Neueste Version von Dynabic.Metered in Produkte integrieren | Verbesserung |
| VERGLEICHNETZ-1815 | Kommentare ignorieren (meistens für Codedateien). | Verbesserung |
| VERGLEICHNETZ-1816 | Leerzeichen ignorieren - Alle, Führende, Nachfolgende, Betragsänderungen | Verbesserung |
| VERGLEICHNETZ-1813 | Groß-/Kleinschreibung ignorieren - Groß-/Kleinschreibung ignorieren. | Verbesserung |
| VERGLEICHNETZ-1931 | GroupDocs.Comparison-Namespaces umgestalten | Verbesserung |
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
| VERGLEICHNETZ-1906 | Ausnahme bei der Schrifterkennung | Fehler |
| VERGLEICHNETZ-1909 | Worttrennungsausnahme | Fehler |
| VERGLEICHNETZ-1927 | Zusammengeführtes Dokument und dann Dokumentvergleich fehlgeschlagen | Fehler |
| VERGLEICHNETZ-1891 | Text wurde mit anderem Text oder Bildern überlappt | Fehler |
| VERGLEICHNETZ-1930 | Doppelte Bilder in Ergebnisdatei in PDF | Fehler |
| VERGLEICHNETZ-1772 | PDF-Vergleich hat überlappende und verstümmelte Ausgabe | Fehler |
| VERGLEICH JAVA-374 | Multithreading-Vergleich gibt null | zurück Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für Java 19.10 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. **Erweiterte PageImage-Eigenschaften**
Vorerst wurde die PageImage-Klasse erweitert, indem 2 öffentliche Eigenschaften *Width* und *Height* hinzugefügt wurden
    





























„Java
Vergleicher Vergleicher = neuer Vergleicher ();
// Liste der Seiten als Bilder abrufen
Aufführen<PageImage> sourceImages = Comparer.convertToImages (Quellpfad);
// Größe der ersten Seite abrufen
int Höhe = sourceImages.get(0).getHeight();
int width = sourceImages.get(0).getWidth();
```
    





























2. **Koordinaten von Änderungen abrufen**
    





























Das Abrufen von Koordinaten bestimmter Änderungen im Ergebnisdokument funktioniert für **Folien, PDF** und **Diagramme, Word**-Dokumente.
    





























Um diese Funktion zu verwenden, sollten Sie in der Eigenschaft *ComparisonSettings CalculateComponentCoordinates* angeben
    





























„Java
Vergleichseinstellungseinstellungen = neue Vergleichseinstellung
...
settings.setCalculateComponentCoordinates(true);
...
```
    





























Die Koordinaten der Änderungen werden in der Eigenschaft *Box* der Klasse *ChangeInfo* gespeichert
    





























„Java
Vergleicher Vergleicher = neuer Vergleicher ();
// Einstellungen
Vergleichseinstellungen vergleichseinstellungen = neue vergleichseinstellungen ();
ComparisonSettings.setCalculateComponentCoordinates(true);
// Dokumente vergleichen
ICompareResult CompareResult = Comparer.Compare (Quellpfad, Zielname, Vergleichseinstellungen);
// Abrufen der Größen der ersten Änderung
ChangeInfo[] changes = CompareResult.getChanges();
// Koordinaten der ersten Änderung
letztes Rechteck Rechteck = ändert[0].getBox();
```
    





























Beispiel für die weitere Verwendung dieser Option:
    





























„Java
Vergleichseinstellungen vergleichseinstellungen = neue vergleichseinstellungen ();
ComparisonSettings.setStyleChangeDetection(true);
// Diese Einstellung gibt an, dass wir die Koordinaten ändern möchten
ComparisonSettings.setCalculateComponentCoordinates(true);
ComparisonSettings.setDetailLevel(DetailLevel.High);
     









































Vergleicher Vergleicher = neuer Vergleicher ();
ICompareResult-Ergebnis = Comparer.compare (Quellpfad, Zielpfad, Vergleichseinstellungen);
result.saveDocument(resultPath);
     









































     









































Aufführen<PageImage> ErgebnisBilder = Comparer.convertToImages(ErgebnisPfad);
final ChangeInfo[] changes = result.getChanges();
     









































     









































// Unten einer der Fälle, wie wir Koordinatenänderungen verwenden könnten.
// Wir passieren das Seitenobjekt und zeichnen ein Rechteck in den Koordinaten der Änderungen
for (PageImage pageImage : resultImages) {
final InputStream pageStream = pageImage.getPageStream();
final BufferedImage bufferedImage = ImageIO.read(pageStream);
endgültige Grafik Graphics = bufferedImage.getGraphics ();
für (ChangeInfo changeInfo : Änderungen) {
letztes Rechteck Rechteck = changeInfo.getBox();
// Wenn etwas eingefügt wurde, zeichne ein blaues Rechteck
if (changeInfo.getType() == TypeChanged.Inserted) {
Graphics.setColor (Color.BLUE);
graphics.drawRect((int) rechteck.getX(), (int) rechteck.getY(), (int) rechteck.getWidth(), (int) rechteck.getHeight());
}
// Wenn etwas gelöscht wurde, zeichne ein rotes Rechteck
if (changeInfo.getType() == TypeChanged.Deleted) {
     









































Graphics.setColor (Color.RED);
graphics.drawRect((int) rechteck.getX(), (int) rechteck.getY(), (int) rechteck.getWidth(), (int) rechteck.getHeight());
}
//Wenn etwas geändert wurde, zeichne ein grünes Rechteck
if (changeInfo.getType() == TypeChanged.StyleChanged) {
Graphics.setColor (Color.GREEN);
graphics.drawRect((int) rechteck.getX(), (int) rechteck.getY(), (int) rechteck.getWidth(), (int) rechteck.getHeight());
}
}
ImageIO.write(bufferedImage, "png", new File(resultPath.replace("result", "result_" + pageImage.getPageNumber()) + ".png"));
Graphics.dispose();
pageStream.close();
}
```
    





























3. **Bilddarstellung von Dokumentseiten abrufen**
    





























„Java
Vergleicher Vergleicher = neuer Vergleicher ();
Vergleichseinstellungen vergleichseinstellungen = neue vergleichseinstellungen ();
ComparisonSettings.setStyleChangeDetection(true);
     









































// Dokument vergleichen
ICompareResult-Ergebnis = Comparer.compare (Quellpfad, Zielpfad, Vergleichseinstellungen);
result.saveDocument(resultPath);
     









































// Seitenliste abrufen
Aufführen<PageImage> ErgebnisBilder = Comparer.convertToImages(ErgebnisPfad);
     









































// Speichern Sie sie als Bitmap in einem separaten Ordner
for (PageImage pageImage : resultImages) {
final InputStream pageStream = pageImage.getPageStream();
     









































Assert.assertNotNull(pageStream);
     









































final BufferedImage bufferedImage = ImageIO.read(pageStream);
ImageIO.write(bufferedImage, "png", new File(resultPath.replace(resultName, "result_" + pageImage.getPageNumber()) + ".png"));
}
```
    





























4. **Neue DocumentInfo-Klasse**
    





























Neue Klasse *DocumentInfo* wurde hinzugefügt. Diese Klasse enthält folgende Eigenschaften
    





























*NumberOfPages* (schreibgeschützt) – die Anzahl der Dokumentseiten
*PagesData* (schreibgeschützt) - die Liste der *PageInfo*-Klassen,
    





























Die Klasse *PageInfo* enthält folgende Eigenschaften:
Breite - die Breite der Seite
Höhe - die Höhe der Seite
    





























„Java
Informant Informant = neuer Informant();
// Informationen über das Dokument von filePath abrufen
DocumentInfo documentInfo = informer.getDocumentInfo(sourcePath);
```
    





























5. **Vergleichsdetailebene einstellen**
    





























1. Wenn wir *DetailLevel = Middle* festlegen, fügen wir in einigen Dokumentformaten (Wörter, Folien, Zellen) keinen Kommentar hinzu, wenn das Element hinzugefügt\\gelöscht\\geändert wurde
        












































2. Wenn wir *DetailLevel = Middle* setzen, machen wir keinen Vergleich ohne Berücksichtigung der Groß-/Kleinschreibung. dh M = m.
        












































3. Wurde Empfindlichkeitseigenschaft hinzugefügt. Diese Option definiert das Limit in Prozent, wenn ein Element als gelöscht oder eingefügt erkannt wird.
        












































    





























Minimalwert - 0, Vergleichsprozess findet nicht für Sequenzen von zwei verglichenen Objekten beliebiger Länge statt.
    





























Standardwert - 75, der Vergleich erfolgt, wenn der Prozentsatz der gelöschten oder eingefügten Elemente im Verhältnis zu allen Elementen 75 % nicht überschreitet.
    





























Maximalwert - 100, Vergleich erfolgt bei beliebiger Länge einer gemeinsamen Unterfolge von zwei verglichenen Objekten.
    





























**Zum Beispiel haben wir zwei Wörter**
    





























„Java
1)eineQuelle
     









































2)zweiZiel
```
    





























Diese beiden Wörter haben eine sehr kleine gemeinsame Teilsequenz. Daher wird dies beim Vergleich mit einer Genauigkeit von 70 % nicht berücksichtigt und wir erhalten ein vollständig entferntes und eingefügtes Wort:
    





























„Java
(zweiZiele)[eineQuelle]
```
    





























Aber bei 100% Genauigkeit berücksichtigen wir diese Teilfolge, obwohl sie aus zwei Buchstaben besteht
    





























„Java
(tw)o[n](Ziel)e[Quelle](t)
```
    





























Code-Auszug:
    





























„Java
Vergleichseinstellungen vergleichseinstellungen = neue vergleichseinstellungen ();
ComparisonSettings.setSensitivityOfComparison(100);
Vergleicher vergleichen = neuer Vergleicher ();
ICompareResult-Ergebnis = Compare.compare (Quellpfad, Zielpfad, Vergleichseinstellungen);
```

