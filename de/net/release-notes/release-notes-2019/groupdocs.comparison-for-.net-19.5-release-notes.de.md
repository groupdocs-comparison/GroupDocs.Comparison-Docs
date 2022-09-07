---
id: groupdocs-comparison-for-net-19-5-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-5-release-notes
title: "GroupDocs.Comparison für .NET 19.5 Versionshinweise"
weight: 7
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 19.5{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 19.5:

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
| VERGLEICHNETZ-1847 | Berechnen Sie die korrekten Koordinaten der Änderungen für Folien | Merkmal |
| VERGLEICHNETZ-1849 | Korrekte Änderungskoordinaten für PDF berechnen | Merkmal |
| VERGLEICHNETZ-1852 | Korrekte Änderungskoordinaten für Diagramme berechnen | Merkmal |
| VERGLEICHNETZ-1895 | Implementieren Sie die Methode Get document info | Merkmal |
| VERGLEICHNETZ-1773 | Verbesserungen der Fehlerbehandlung für alle Formate | Verbesserung |
| VERGLEICHNETZ-1799 | Verbessern Sie die Änderungserkennung in Tabellen auf Words | Verbesserung |
| VERGLEICHNETZ-1808 | Der Vergleich funktioniert nicht auf Fußnote | Fehler |
| VERGLEICHNETZ-1774 | Bilder für HTML-Dateien können nicht abgerufen werden | Fehler |
| VERGLEICHNETZ-1805 | Gelöschte Elemente in der Vergleichsausgabe sind nicht wie erwartet | Fehler |
| VERGLEICHNET-1892 | Falsche Differenzinformationen in PDF | Fehler |
| VERGLEICHNETZ-1899 | Html MarkDeletedInsertedContentDeep Bug | Fehler |
| VERGLEICHNETZ-1903 | Lizenzproblem in GroupDocs.Comparison für .NET-Anwendung | Fehler |
| VERGLEICHNETZ-1906 | Ausnahme bei der Schrifterkennung | Fehler |
| VERGLEICHNETZ-1909 | Worttrennungsausnahme | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 19.5 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. **Erweiterte PageImage-Eigenschaften**
Vorerst wurde die PageImage-Klasse erweitert, indem 2 öffentliche Eigenschaften *Width* und *Height* hinzugefügt wurden
    














```scharf
Vergleicher Vergleicher = neuer Vergleicher ();
     

















// Liste der Seiten als Bilder abrufen
Aufführen<PageImage> sourceImages = Comparer.ConvertToImages(sourcePath);
// Größe der ersten Seite abrufen
int h = sourceImages[0].Höhe;
int w = sourceImages[0].Breite;
```
    














2. **Koordinaten von Änderungen abrufen**
    














Das Abrufen von Koordinaten bestimmter Änderungen im Ergebnisdokument funktioniert für **Folien, PDF** und **Diagramme**-Dokumente
    














Um diese Funktion zu verwenden, sollten Sie in der Eigenschaft *ComparisonSettings CalculateComponentCoordinates* angeben
    














```scharf
Vergleichseinstellungseinstellungen = neue Vergleichseinstellung
{
...
CalculateComponentCoordinates = true;
...
}
```
    














Die Koordinaten der Änderungen werden in der Eigenschaft *Box* der Klasse *ChangeInfo* gespeichert
    














```scharf
Aufführen<ChangeInfo> Änderungen = neue Liste<ChangeInfo> (Ergebnis.GetChanges());
chages[0].Box // Koordinaten der ersten Änderung
```
    














Beispiel für die weitere Verwendung dieser Option:
    














```scharf
Vergleichseinstellungen Vergleichseinstellungen = neue Vergleichseinstellungen ();
ComparisonSettings.StyleChangeDetection = true;
// Diese Einstellung gibt an, dass wir die Koordinaten ändern möchten
ComparisonSettings.CalculateComponentCoordinates = true;
Vergleichseinstellungen.DetailLevel = DetailLevel.High;
string sourcePath = "source.pdf";
string targetPath = "target.pdf";
string resultPath = "result.pdf;
Vergleicher Vergleicher = neuer Vergleicher ();
ICompareResult-Ergebnis = Comparer.Compare (Quellenpfad, Zielpfad, Vergleichseinstellungen);
result.SaveDocument(resultPath);
     

















Aufführen<PageImage> ErgebnisBilder = Vergleich.ConvertToImages(ErgebnisPfad);
Aufführen<ChangeInfo> Änderungen = neue Liste<ChangeInfo> (Ergebnis.GetChanges());
     

















//unten einer der Fälle, wie wir Koordinaten ändern könnten.
// Wir gehen durch das Seitenobjekt und zeichnen ein Rechteck in den Koordinaten der Änderungen
foreach (PageImage-Bild in resultImages)
{
Bitmap bitmap = new Bitmap(image.PageStream);
using (Graphics graphics = Graphics.FromImage(bitmap))
{
foreach (ChangeInfo changeInfo in Änderungen)
{
// Wenn etwas eingefügt wurde, zeichne ein blaues Rechteck
if (changeInfo.Type == TypeChanged.Inserted)
graphics.DrawRectangle (neuer Stift (Color.Blue), changeInfo.Box.X, changeInfo.Box.Y, changeInfo.Box.Width, changeInfo.Box.Height);
// Wenn etwas gelöscht wurde, zeichne ein rotes Rechteck
if (changeInfo.Type == TypeChanged.Deleted)
graphics.DrawRectangle (neuer Stift (Color.Red), changeInfo.Box.X, changeInfo.Box.Y, changeInfo.Box.Width, changeInfo.Box.Height);
//Wenn etwas geändert wurde, zeichne ein grünes Rechteck
if (changeInfo.Type == TypeChanged.StyleChanged)
graphics.DrawRectangle (neuer Stift (Color.Green), changeInfo.Box.X, changeInfo.Box.Y, changeInfo.Box.Width, changeInfo.Box.Height);
}
}
bitmap.Save(savePath + @"/Result_Pages/result_" + image.PageNumber + ".png");
bitmap.Dispose();
}
```
    














3. **Neue DocumentInfo-Klasse**
    














Neue DocumentInfo-Klasse wurde hinzugefügt. Diese Klasse enthält folgende Eigenschaften:
    














NumberOfPages (schreibgeschützt) – die Anzahl der Dokumentseiten
PagesData (schreibgeschützt) – die Liste der PageInfo-Klassen
    














Die PageInfo-Klasse enthält die folgenden Eigenschaften:
Breite - die Breite der Seite
Höhe - die Höhe der Seite
    














```scharf
Informant Informant = neuer Informant();
// Informationen über das Dokument von filePath erhalten
DocumentInfo documentInfo = informer.GetDocumentInfo(filePath);
```

