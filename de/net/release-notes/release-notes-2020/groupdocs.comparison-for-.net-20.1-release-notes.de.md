---
id: groupdocs-comparison-for-net-20-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-1-release-notes
title: "GroupDocs.Comparison für .NET 20.1 Versionshinweise"
weight: 20
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 20.1{{< /alert >}}{{< alert style="danger" >}}In dieser Version werden wir Entfernen Sie die Legacy-API von GroupDocs.Comparison. Also ab Version 20.1 GroupDocs.Comparison.Legacy. existiert nicht mehr{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 20.1:

* Legacy-API entfernt
* Vergleich von mehr als 2 PDF-Dokumenten implementiert
* Vergleich von mehr als 2 Diagrammdokumenten implementiert
* Verbessern Sie den Tabellenvergleich in PDF
* Fehler beim Vergleich zweier identischer Word-Dokumente behoben

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2104 | Implementieren Sie Multicomparer für Diagramm | Merkmal |
| VERGLEICHNETZ-2105 | Implementieren Sie Multicomparer für PDF | Merkmal |
| VERGLEICHNETZ-2133 | Tabellenvergleich in PDF verbessern | Verbesserung |
| VERGLEICHNETZ-2148 | Beim Vergleich zweier identischer Word-Dokumente ist ein Fehler aufgetreten | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 20.1 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

* **Multicomparing für Diagrammdokumente**
Sie haben die Möglichkeit, mehr als ein Zieldiagramm (vsdx)-Dokument zu vergleichen
    




```scharf
string sourcePath = "source.vsdx";
string target1Path = "target1.vsdx";
string target2Path = "target2.vsdx";
string target3Path = "target3.vsdx";
string resultPath = "result.vsdx";
     








Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Ziel1Pfad);
Vergleicher.Hinzufügen (Ziel2Pfad);
Vergleicher.Hinzufügen (Ziel3Pfad);
     








Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), neue CompareOptions());
```
    




* **Multicomparing für PDF-Dokumente**
    




Sie haben die Möglichkeit, mehr als ein Ziel-PDF-Dokument zu vergleichen
    




```scharf
string sourcePath = "source.pdf";
Zeichenfolge Ziel1Pfad = "Ziel1.pdf";
Zeichenfolge Ziel2Pfad = "Ziel2.pdf";
string target3Path = "target3.pdf";
string resultPath = "result.pdf";
     








Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Ziel1Pfad);
Vergleicher.Hinzufügen (Ziel2Pfad);
Vergleicher.Hinzufügen (Ziel3Pfad);
     








Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), neue CompareOptions());
```

