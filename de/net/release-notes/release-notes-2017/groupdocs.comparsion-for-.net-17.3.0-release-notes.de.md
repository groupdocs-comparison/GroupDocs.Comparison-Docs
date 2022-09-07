---
id: groupdocs-comparsion-for-net-17-3-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-3-0-release-notes
title: "GroupDocs.Comparsion für .NET 17.3.0 Versionshinweise"
weight: 9
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 17.3.0{{< /alert >}}

## Hauptmerkmale

Es gibt 3 neue Funktionen und 4 Verbesserungen und 1 Fix in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Fügen Sie die Möglichkeit hinzu, DICOM-Dokumente durch Comparison.Imaging zu vergleichen
* Vereinfachte und verbesserte öffentliche API für alle unterstützten Formate
* Einführung des Prozesses zum Aufnehmen von Tabellen mit verbundenen Zellen für GroupDocs.Comparison.PDF
* Der Vergleich gefüllter Tabellen für GroupDocs.Comparison.PDF wurde korrigiert

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-1156 | Fügen Sie die Möglichkeit hinzu, DICOM-Dokumente mit Comparison.Imaging | zu vergleichen Neue Funktion |
| VERGLEICHNETZ-1163 | Änderungen für das DICOM-Format übernehmen/verwerfen | Neue Funktion |
| VERGLEICHNETZ-1165 | Zusammenfassungsseite zu Bilderstreams hinzufügen | Neue Funktion |
| VERGLEICHNETZ-778 | Implementieren Sie den Prozess zum Aufnehmen von Tabellen mit verbundenen Zellen | Verbesserung |
| VERGLEICHNETZ-1148 | Verbesserte öffentliche API | Verbesserung |
| VERGLEICHNETZ-1161 | Möglichkeit zum Vergleich von Ergebnis- und Originaldateien in Imaging.Tests | hinzugefügt Verbesserung |
| VERGLEICHNETZ-1157 | Fügen Sie Lokalisierungsausnahmen für falsche Passwörter hinzu, während Sie Dokumente in Zellen, Wörtern, Folien und PDF öffnen | Verbesserung |
| VERGLEICHNETZ-1160 | PDF-Vergleich – PDF-Dateien mit Tabellen und Fußzeilen erzeugen unerwartete Ausgabe | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 17.3.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

### Standardlizenzierung

1\. Erstellen Sie ein Lizenzobjekt und verwenden Sie die Methode SetLicense(), die den Pfad zur Lizenz oder zum Lizenzstream als Argument verwendet

```csharp
License license = new License();
license.SetLicense("path to license");

//or
License license = new License();
license.SetLicense("license stream");
```

### Gemessene Lizenzierung

2\. Gemessenes Objekt erstellen und Methode SetMeteredKey() verwenden

```csharp
// Set metered key
Metered metered = new Metered();
metered.SetMeteredKey("****", "****");
```

Um die aktuelle Verbrauchsmenge zu überprüfen, verwenden Sie die Methode GetConsumptionQuantity()

```csharp
// Get consumption quantity from metered
decimal amountBefor = Metered.GetConsumptionQuantity();
// Call comparison
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";
Comparer comparer = new Comparer();
comparer.Compare(sourcePath, targetPath, new ComparisonSettings());
comparer.Compare(sourcePath, targetPath, new ComparisonSettings());
// Get consumption quantity from metered after several calls of comparison
decimal amountAfter = Metered.GetConsumptionQuantity();
```

### Zwei Dokumente aus Dateien vergleichen:

```csharp
string source = "source.docx";
string target = "target.docx";
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, target, new ComparisonSettings());
```

### Zwei Dokumente aus Streams vergleichen:

```csharp
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
Stream target = Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx");

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, target, new ComparisonSettings());
Compare two documents with passwords from files:
string source = "source.docx";
string target = "target.docx";
string sourcePassword = "password";
string targetPassword = "password";
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, target, targetPassword, new ComparisonSettings());
Compare two documents with passwords from streams:
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
Stream target = Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx");

string sourcePassword = "password";
string targetPassword = "password";

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, target, targetPassword, new ComparisonSettings());
```

