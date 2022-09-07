---
id: groupdocs-comparison-for-net-19-3-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-3-1-release-notes
title: "GroupDocs.Comparison für .NET 19.3.1 Versionshinweise"
weight: 8
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 19.3.1{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 19.3.1:

* Implementierte Fähigkeit, Dokumente verschiedener Formate in Bilder zu konvertieren
* Problem mit SuperScript- und SubScript-Elementen in Word-Dokumenten behoben
* Feste Stileinstellungen für GroupDocs.Comparison.Html
* Problem beim Vergleich großer PDF-Dateien behoben (andere Fälle)
* Nicht funktionierender Vergleich des EndNote-Elements in Word behoben

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
| VERGLEICHNETZ-1806 | Problem bei SuperScript und SubScript | Fehler |
| VERGLEICHNETZ-1802 | Einstellungen StyleSettings funktioniert nicht für HTML | Fehler |
| VERGLEICHNETZ-1803 | Problem beim Vergleichen großer PDF-Dateien (andere Fälle) | Fehler |
| VERGLEICHNETZ-1804 | EndNote-Vergleich funktioniert nicht | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 19.3.1 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. Erhalten einer Bilddarstellung von Dokumentseiten
    

```scharf
Vergleicher Vergleicher = neuer Vergleicher ();
Vergleichseinstellungen cs = neue Vergleichseinstellungen ();
cs.StyleChangeDetection = true;
     









     









// Dokument vergleichen
ICompareResult Ergebnis = Comparer.Compare (sourcePath, targetPath, cs);
result.SaveDocument(resultPath);
     









     









// Seitenliste abrufen
Aufführen<PageImage> ErgebnisBilder = Vergleich.ConvertToImages(ErgebnisPfad);
     









     









// Speichern Sie sie als Bitmap in einem separaten Ordner
if (!Directory.Exists(savePath + @"/Result Pages"))
Directory.CreateDirectory(savePath + @"/Result Pages");
     









     









foreach (PageImage-Bild in resultImages)
{
Bitmap bitmap = new Bitmap(image.PageStream);
bitmap.Save(savePath + @"/Result Pages/result_" + image.PageNumber + ".png");
bitmap.Dispose();
}
```

