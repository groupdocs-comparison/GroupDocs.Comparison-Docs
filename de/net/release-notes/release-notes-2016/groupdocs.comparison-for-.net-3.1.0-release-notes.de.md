---
id: groupdocs-comparison-for-net-3-1-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-1-0-release-notes
title: "GroupDocs.Vergleich für .NET 3.1.0 Versionshinweise"
weight: 8
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 3.1.0{{< /alert >}}

## Hauptmerkmale

Es gibt 13 Verbesserungen und Fehlerbehebungen in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Unterstützung verschlüsselter Dateien eingeführt
* Automatische Erkennung von Dateitypen eingeführt
* Verbesserte Vergleichsleistung von Wörtern bis zu 8-mal eingeführt
* Verbesserte Words-Vergleichsqualität für Text und Tabellen eingeführt
* Verbesserte PDF-Vergleichsqualität für Text, Tabellen und Bilder eingeführt

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-700 | Erweitern Sie die PDF-Vergleichsfunktion, um Änderungen zu erhalten oder zu bestätigen, dass Dokumente identisch sind | Neue Funktion |
| VERGLEICHNETZ-663 | Fügen Sie Unterstützung für passwortgeschützte Dateien für Wörter, Zellen, Folien und PDF hinzu | Neue Funktion |
| VERGLEICHNETZ-605 | Unterstützung der Dateityperkennung von Stream | hinzugefügt Neue Funktion |
| VERGLEICHNETZ-638 | Wenn der Inhalt der Folie eindeutig ist, sollte die Folie als Eingefügt oder Gelöscht | markiert werden Verbesserung |
| VERGLEICHNETZ-722 | Der Update-Vergleich unterscheidet sich je nach Leistungsverbesserung für Words. | Verbesserung |
| VERGLEICHNETZ-684 | Ändern Sie den Unterschied in CommonAligner, um die Vergleichsleistung zu verbessern | Verbesserung |
| VERGLEICHNETZ-664 | Implementieren Sie Vergleichswörter mit Ausrichtung nach identisch und Bildung Ergebnisdokument mit Zieldokument und Einfügung gelöschter Komponenten aus Quelldokument | Verbesserung |
| VERGLEICHNETZ-588 | Implementieren Sie die Lokalisierung für die Behandlung von Ausnahmen | Verbesserung |
| VERGLEICHNETZ-683 | Vergleichseinstellungen ändern, um Kulturinformationen zu unterstützen | Verbesserung |
| VERGLEICHNETZ-682 | Hinzufügen des Zurücksetzens von Stream-Positionen in Dokumentkonstruktoren | Verbesserung |
| VERGLEICHNETZ-681 | Prüfer für Ergebnisdokument nach dem Zusammenführen von Vergleichsergebnissen hinzufügen | Verbesserung |
| VERGLEICHNETZ-719 | Vergleichsergebnisse Erstellen einer leeren Seite und zusätzlicher Leerzeichen für DOCX/PDF | Fehler |
| VERGLEICHNETZ-697 | Client Response - Der Vergleich angehängter Dokumente dauert je nach Hardware zwischen 8 und 13 Minuten und endet dann mit einem 0-Byte-Ergebnis. | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 3.1.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

### Allgemeine Operationen mit automatischer Dateiformaterkennung
#### Dokumente aus Strings vergleichen

HINWEIS: Angenommen, Dateien in source.docx, source.xlsx, source.pdf, source.pptx, source.txt befinden sich im selben Ordner wie die ausführende Assembly.

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath);
```

#### Dokumente aus Strings mit Ergebnispfad vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath);
```

#### Dokumente aus Strings mit Ergebnispfad und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, FileType.Docx);
```

#### Dokumente aus Strings mit Ergebnispfad und Einstellungen vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, new WordsComparisonSettings());
```

#### Dokumente aus Strings mit Ergebnispfad und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, new WordsComparisonSettings(), FileType.Docx);
```

#### Dokumente aus Strings mit Ergebnispfad und -typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words);
```

#### Dokumente aus Strings mit Ergebnispfadtyp und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, FileType.Docx);
```

#### Dokumente aus Strings mit Einstellungen vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, new WordsComparisonSettings());
```

#### Dokumente aus Strings mit Einstellungen und Typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### Dokumente aus Strings mit Typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, ComparisonType.Words);
```

#### Dokumente aus Zeichenfolgen mit Ergebnispfadeinstellungen und -typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### Dokumente aus Zeichenfolgen mit Ergebnispfadeinstellungstyp und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, new WordsComparisonSettings(), FileType.Docx);
```

### Allgemeine Operationen mit verschlüsselten Dateien
#### Verschlüsselte Dokumente aus Zeichenketten vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword);
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfad vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath);
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfad und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, FileType.Docx);
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfad und Einstellungen vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, new WordsComparisonSettings());
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfadeinstellungen und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, new WordsComparisonSettings(), FileType.Docx);
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfad und -typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words);
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfadtyp und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, FileType.Docx);
```

#### Verschlüsselte Dokumente aus Strings mit Einstellungen vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, new WordsComparisonSettings());
```

#### Verschlüsselte Dokumente aus Strings mit Einstellungen und Typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, ComparisonType.Words, new WordsComparisonSettings());
```

#### Verschlüsselte Dokumente aus Zeichenketten mit Typ vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, ComparisonType.Words);
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfadeinstellungen vergleichen und eingeben

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### Verschlüsselte Dokumente aus Strings mit Ergebnispfadeinstellungstyp und Zielerweiterung vergleichen

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, new WordsComparisonSettings(), FileType.Docx);
```

