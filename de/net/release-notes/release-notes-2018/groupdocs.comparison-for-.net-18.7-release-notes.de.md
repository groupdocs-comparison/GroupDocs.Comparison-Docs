---
id: groupdocs-comparison-for-net-18-7-release-notes
url: comparison/net/groupdocs-comparison-for-net-18-7-release-notes
title: "GroupDocs.Comparison für .NET 18.7 Versionshinweise"
weight: 6
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 18.7{{< /alert >}}

## Hauptmerkmale

Nachfolgend die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Annotation für .NET 18.7:

* Vergleich von Gruppenformen für Diagramme hinzugefügt
* Das Hinzufügen von Formen ohne den Master des Diagramms wurde implementiert
* Verbesserter Absatzvergleich für Diagramme
* Verbesserter StyleSheet-Vergleich für HTML
* Problem behoben, bei dem Stiländerungen in bestimmten Fällen beim Vergleich von PDF-Dokumenten nicht hervorgehoben wurden

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-1605 | Gruppenformen für Diagramme implementieren | Neue Funktion |
| VERGLEICHNETZ-1587 | Implementieren Sie den Vergleich verschiedener Formate als Bild | Neue Funktion |
| VERGLEICHNETZ-1607 | Implementieren Sie GluedShapes in Diagramm | Neue Funktion |
| VERGLEICHNETZ-1608 | Verbessern Sie den StyleSheet-Vergleich für HTML | Verbesserung |
| VERGLEICHNETZ-1606 | Fügen Sie eine Form ohne den Master | des Diagramms hinzu Verbesserung |
| VERGLEICHNETZ-1619 | Ausgabe von PDF mit Bildern ist nicht wie erwartet | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 18.7 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. Verwenden Sie "DiagramMasterSetting", um Master des Comparison.Diagram zu verwalten.
    





```scharf
MasterPath = string;// - Vom Benutzer festgelegter benutzerdefinierter Master-Pfad
UseSourceMaster = bool;// - true – Master von Quelle und Ziel zusammen verwenden, false – Standard- oder benutzerdefinierten Master verwenden
```
    





Beispiel:
    





* UseSourceMaster – false ohne MasterPath – Standard-Master-Pfad verwenden
* UseSourceMaster – false mit MasterPath – benutzerdefinierten Master-Pfad verwenden
* UseSourceMaster – true – Master aus Quell- und Zieldokument zusammen verwenden
    





Verwenden Sie "OriginalSize", um die Dokumentgröße festzulegen, wenn Sie Bilder mit verschiedenen Formaten vergleichen. Diese Größe wird verwendet, wenn das Dokument in das Bild konvertiert wird.
    





```scharf
OriginalSize.Width;// int
OriginalSize.Höhe;// int;
```

