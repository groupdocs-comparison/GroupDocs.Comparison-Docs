---
id: groupdocs-comparison-for-net-21-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-21-1-release-notes
title: "GroupDocs.Comparison für .NET 21.1 Versionshinweise"
weight: 20
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 21.1{{< /alert >}}

## Hauptmerkmale

Nachfolgend finden Sie die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 21.1:

* Verbesserte Darstellung von Elementen mit Rahmen im Pdf-Format
* Verbesserte Textanzeige im PDF-Format
* Vergleich von Fußnotentypen im Word-Format hinzugefügt
* SourceText-Eigenschaft zur ChangeInfo-Klasse hinzugefügt und TargetText-Eigenschaft für Zellen, Wörter und PDF-Formate verbessert

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2585 | Verbesserung der Fähigkeit, Quelltext für Word-Dokumente zu erhalten | Merkmal |
| VERGLEICHNETZ-2586 | Verbessern Sie die Fähigkeit, Quelltext für PDF-Dokumente zu erhalten | Merkmal |
| VERGLEICHNETZ-2587 | Verbessern Sie die Fähigkeit, Quelltext für Cells-Dokumente zu erhalten | Merkmal |
| VERGLEICHNETZ-2563 | Fußnoten werden nicht verglichen | Verbesserung |
| VERGLEICHNETZ-2451 | Ausgabe des Textfeldvergleichs in PDF | Fehler |
| VERGLEICHNETZ-2454 | Ein Teil der Symbole wird beim Vergleich von PDF-Dateien nicht angezeigt | Fehler |


## Öffentliche API und rückwärtsinkompatible Änderungen

1. Der Vergleich von Fußnotentypen bezieht sich auf den Vergleich von Stilen, außerdem ist diese Art von Änderung im Text schwer darzustellen. Daher werden diese Änderungen nach dem Prinzip von Leerzeilen oder Bildern im Dokument (mit Kommentaren) gekennzeichnet.
Für einen übersichtlicheren Vergleich von Fußnotentypen könnten Sie das folgende Code-Snippet verwenden:

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions()
	{
		DetectStyleChanges = true,
		DetalisationLevel = DetalisationLevel.High
	};
    comparer.Compare(resultPath, options);
}
```

2. Aktualisierte Dokumentation zur Beschaffung von Quell- und Zieltexten, die [hier] zu finden ist (https://docs.groupdocs.com/comparison/net/get-source-and-target-text-from-files/).

