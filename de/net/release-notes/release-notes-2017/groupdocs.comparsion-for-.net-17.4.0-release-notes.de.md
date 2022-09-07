---
id: groupdocs-comparsion-for-net-17-4-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-4-0-release-notes
title: "GroupDocs.Comparsion für .NET 17.4.0 Versionshinweise"
weight: 8
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparsion für .NET 17.4.0{{< /alert >}}

## Hauptmerkmale

Es gibt 3 neue Funktionen und 3 Verbesserungen und 4 Fixes in dieser regulären monatlichen Version. Die bemerkenswertesten sind:

* Einführung von Multi-Compare-Unterstützung für Formate in der öffentlichen GroupDocs.Comparison-API
* Unterstützung von CAD-Formaten eingeführt
* Verbesserter Vergleich von Bildformaten
* Vereinfachen Sie die API für alle unterstützten Formate
* Der Vergleich mehrspaltiger Tabellen für GroupDocs.Comparison.PDF wurde korrigiert
* GroupDocs.Comparison.PDF: Fehler behoben, wenn der Text aus den Absätzen Tabellen überlappt

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Kategorie |
| --- | --- | --- |
| VERGLEICHNETZ-1143 | Unterstützung für Multi-Vergleich für Formate zur öffentlichen GroupDocs.Comparison-API hinzugefügt | Neue Funktion |
| VERGLEICHNETZ-1172 | UpdateChanges-Modell für Imaging hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1175 | Unterstützung des Vergleichs CAD hinzufügen | Neue Funktion |
| VERGLEICHNETZ-1188 | Vergleich von Bildformaten verbessern | Verbesserung |
| VERGLEICHNETZ-1182 | Formatübergreifende API-Vereinfachungen für alle unterstützten Formate | Verbesserung |
| VERGLEICHNETZ-1080 | Comparison.PDF: Verbesserte Erkennung von Vergleichsänderungen für Absätze | Verbesserung |
| VERGLEICHNETZ-1184 | GroupDocs.Comparison.Words: Textdateien mit HTML-Inhalt, verglichen mit der Words-Engine | Fehler |
| VERGLEICHNETZ-1185 | GroupDocs.Comparison.Text: Korrigiert den Vergleich von HTML-Code in TXT-Dateien mit Wortvergleich | Fehler |
| VERGLEICHNETZ-1200 | GroupDocs.Comparison.PDF: Fehler behoben, wenn der Text aus den Absätzen Tabellen überlappt | Fehler |
| VERGLEICHNETZ-1208 | Angeordnete Bilder in Fassade | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 17.4.0 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

### Vergleichen Sie mehr als zwei Dokumente aus Dateien:

```csharp
string source = "source.docx";
List<string> targets = new List<string>
{
	"target.docx",
	"target1.docx",
	"target2.docx"
};
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, targets, new ComparisonSettings());

```

### Vergleichen Sie mehr als zwei Dokumente aus Streams:

```csharp
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
List<Stream> targets = new List<Stream>
{
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target1.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target2.docx")
}; 
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, targets, new ComparisonSettings());



```

### Mehr als zwei Dokumente mit Passwörtern aus Dateien vergleichen:

```csharp
string source = "source.docx";
List<string> targets = new List<string>
{
	"target.docx",
	"target1.docx",
	"target2.docx"
};
string sourcePassword = "password";
List<string> targetPasswords = new List<string>
{
	"password",
	"password",
	"password"
};
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, targets, targetPasswords, new ComparisonSettings());
```

### Vergleichen Sie mehr als zwei Dokumente mit Passwörtern aus Streams:

```csharp
Stream sourceStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
List<Stream> targets = new List<Stream>
{
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target1.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target2.docx")
}; 

string sourcePassword = "password";
List<string> targetPasswords = new List<string>
{
	"password",
	"password",
	"password"
};

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, targets, targetPasswords, new ComparisonSettings());
```

