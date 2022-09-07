---
id: groupdocs-comparison-for-net-20-12-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-12-release-notes
title: "GroupDocs.Comparison für .NET 20.12 Versionshinweise"
weight: 6
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 20.12{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der Änderungen in der Version von GroupDocs.Comparison für .NET 20.12:
* Verbesserung der Handhabung von Überarbeitungen in Word-Dokumenten
* Problem mit Textduplizierung in Word behoben
* Problem mit falscher Anzeige von Tabellen ohne Anzeige hinzugefügter oder gelöschter Zellen behoben
* GroupDocs.Comparison wurde korrigiert, damit es innerhalb der GroupDocs.Total-Lösung ordnungsgemäß funktioniert


		

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2557 | Verbesserung der Handhabung von Überarbeitungen in Word-Dokumenten | Verbesserung |
| VERGLEICHNETZ-2537 | Vergleich von DOCX-Dateien Text wird nach dem Vergleich dupliziert, anstatt in der Ausgabe | als ersetzt erkannt zu werden Fehler |
| VERGLEICHNETZ-2533 | Vergleichsproblem in Word-Dokumenten mit Tabellen (Falsche Dokumenterstellung mit deaktivierter Anzeige von Änderungen in Tabellen im Word-Format) | Fehler |
| VERGLEICHNETZ-2536 | Vergleichsproblem bei GroupDocs-Gesamtlösung behoben | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

1. Das Problem beim erneuten Anzeigen geänderter Inhalte in einem Dokument trat auf, wenn in den verglichenen Dokumenten bereits andere *Revisionen* vorhanden waren.

**Revision** – Änderungen, die beim Vergleichen von Dokumenten mit integrierten Word-Tools empfangen wurden.

Um dieses Problem zu lösen, wurde die neue Eigenschaft *ShowRevisions* erstellt, mit der Sie die Anzeige dieser *Revisionen* im resultierenden Dokument deaktivieren können. Ein Beispiel für den Code zur Verwendung der neuen Eigenschaft ist unten dargestellt.

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {ShowRevisions = false};
    comparer.Compare(resultPath, options);
}
```
Weitere Informationen über die neue Eigenschaft finden Sie [hier](https://docs.groupdocs.com/comparison/net/show-revisions/).

2. [Verbesserte Funktion zum Akzeptieren/Ablehnen von Revisionen für Word-Dokumente](https://docs.groupdocs.com/comparison/net/accept-or-reject-revisions/)


