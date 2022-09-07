---
id: groupdocs-comparison-for-net-20-4-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-4-release-notes
title: "GroupDocs.Comparison für .NET 20.4 Versionshinweise"
weight: 16
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 20.4{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der Änderungen in der Version von GroupDocs.Comparison für .NET 20.4:

* Neue Funktion zum Anzeigen nur eingefügter Inhalte hinzugefügt
* Verbesserte Funktion zum Anzeigen von Zieltext für Präsentationen, Tabellenkalkulationen und Diagramme
* Verbesserte Verwendung von Ausnahmen
* Probleme mit der Bibliothekskompatibilität für Spreadsheet und Notes behoben
* Anzahl der Ausnahmen beim Vergleichen von Diagrammen behoben

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2234 | Implementieren Sie die ShowInsertedContent-Funktion | Merkmal |
| VERGLEICHNETZ-2269 | Verbesserung der GetTargetText-Funktion für Diagramme | Verbesserung |
| VERGLEICHNETZ-2242 | Verbessern Sie die GetTargetText-Funktion für Folien | Verbesserung |
| VERGLEICHNETZ-2241 | Verbessern Sie die GetTargetText-Funktion für Zellen | Verbesserung |
| VERGLEICHNETZ-2271 | Verwendung von Ausnahmen verbessern | Verbesserung |
| VERGLEICHNETZ-2272 | Nicht unterstützte Diagrammformat-Ausnahme in Update-Tests | Fehler |
| VERGLEICHNETZ-2270 | Nullreferenz-Ausnahme in Diagrammen | Fehler |
| VERGLEICHNETZ-2267 | Kompatibilitätsproblem mit der Cells-Bibliothek beim Upgrade auf Version 20.3 | Fehler |
| VERGLEICHNETZ-2239 | Kompatibilitätsproblem beim Aktualisieren der Notizenbibliothek | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

## **Eingefügte Inhalte anzeigen**

Ab Version 20.4 bietet **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** die Möglichkeit, die Anzeige hinzugefügter Inhalte in der Ergebnisdatei zu deaktivieren.
  

Um diese Funktion zu verwenden, sollten Sie in *CompareOptions ShowInsertedContent *property auf false angeben.


```csharp
CompareOptions options = new CompareOptions();
options.ShowInsertedContent = false;

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetDocumentPath);
     comparer.Compare(File.Create(outputPath), new SaveOptions(), options);
}
```

