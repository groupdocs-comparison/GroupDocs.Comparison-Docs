---
id: groupdocs-comparison-for-net-21-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-21-3-release-notes
title: "GroupDocs.Comparison für .NET 21.3 Versionshinweise"
weight: 18
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 21.3{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 21.3:

* Ersatz für Leerzeilen implementiert, anstatt Änderungen im Ergebnisdokument für Absätze im Word-Format anzuzeigen
* Verbesserter Bildvergleich im Cells-Format
* Verbesserte Erstellung von Diagrammen im Zellenformat
* Verbesserte Anzeige von Komponenten mit Stiländerungen für das Word-Format
* Problem beim Schließen von Streams beim Vergleichen von Textdokumenten behoben

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2560 | Die Ausgabe des Word-Dokumentvergleichs ist nicht wie erwartet | Fehler |
| VERGLEICHNETZ-2597 | Problem beim Vergleich von Excel-Dateien | Fehler |
| VERGLEICHNETZ-2624 | Erstellen von Diagrammen unvollständig | Fehler |
| VERGLEICHNETZ-2626 | Der Zeilenunterschied und die Anzeige von Details zu Stiländerungen in der Ausgabe | können nicht abgerufen werden Fehler |
| VERGLEICHNETZ-2627 | Situation verhindern, wenn beim Vergleichen der Textdatei-Stream leer ist | Fehler |


## Öffentliche API und rückwärtsinkompatible Änderungen

1. Um Änderungen in der Anzeige von Informationen zu Komponenten mit Stiländerungen anzuzeigen, können Sie den folgenden Code verwenden:

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
 
    CompareOptions options = new CompareOptions();
    options.DetectStyleChanges = true;
    options.DetalisationLevel = DetalisationLevel.High;
      
    comparer.Compare(resultPath, options);
}
```

2. Weitere Informationen zum Abrufen von Ergebnisdokumenten mit geändertem Inhalt, die durch Leerzeilen ersetzt werden, finden Sie [hier](https://docs.groupdocs.com/comparison/net/show-gap-lines/).

