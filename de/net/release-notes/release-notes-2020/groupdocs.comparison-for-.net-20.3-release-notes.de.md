---
id: groupdocs-comparison-for-net-20-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-3-release-notes
title: "GroupDocs.Comparison für .NET 20.3 Versionshinweise"
weight: 18
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 20.3{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der Änderungen in der Version von GroupDocs.Comparison für .NET 20.3:

* Verbesserte Leistung beim mehrfachen Vergleichen von Textdokumenten
* Das Erstellen einer Ausgabe-HTML-Datei beim Vergleichen von Quellcodedateien wurde korrigiert
* Ausnahmefehler beim Vergleichen von Diagrammdokumenten behoben
* System.StackOverflownException beim Vergleichen von PDF mit Bildern .NET behoben

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2214 | Leistungssteigerung für TXT MultiComparer | Verbesserung |
| VERGLEICHNETZ-2235 | TextComparerResult erstellt keine .html-Datei für Programmiersprachendateien | Fehler |
| VERGLEICHNETZ-2211 | System.StackOverflownException beim Vergleichen von PDF mit Bildern .NET | Fehler |
| VERGLEICHNETZ-2209 | Der Vergleich zweier vsdx-Dateien löst eine Ausnahme aus | Fehler |
| VERGLEICHNETZ-2208 | Zeilenumbruchproblem bei Diagrammtext | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

**Zieltext aus Word-Dokumenten abrufen**

Ab Version 20.3 ermöglicht **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** das Abrufen des Zieltextes bestimmter Änderungen im Ergebnisdokument, das für **Word**-Dokumente funktioniert.

Um diese Funktion zu verwenden, sollten Sie in der Eigenschaft *GetChanges TargetText* angeben

```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetDocumentPath);
     comparer.Compare(outputPath);
     ChangeInfo[] changes = comparer.GetChanges();
     foreach (var change in changes)
     {
         var targetText = change.TargetText;
         Console.WriteLine(targetText);
     }
}
```

