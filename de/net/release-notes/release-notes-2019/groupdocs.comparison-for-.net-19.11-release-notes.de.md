---
id: groupdocs-comparison-for-net-19-11-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-11-release-notes
title: "GroupDocs.Comparison für .NET 19.11 Versionshinweise"
weight: 2
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 19.11{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 19.11:

* Option hinzugefügt, um Kopf-/Fußzeilen von Dokumenten zu vergleichen
* Option zum Festlegen des Papierformats für Ausgabedokumente hinzugefügt
* Multicomparing für Text- und E-Mail-Dokumente implementiert
* Problem beim Freigeben von Dokumenthandlern behoben
* Verbesserte Genauigkeit beim Vergleich von PDF-Dokumenten
* Problem mit falschen Ergebnisdateien in Zellen behoben
* Korrigierte Genauigkeit der Koordinaten von Änderungen in der Dokumentvorschau

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-2072 | Option hinzufügen, mit der das Ausgabeformat (Papiergröße) eingestellt werden kann | Merkmal |
| VERGLEICHNETZ-2069 | Multi-Vergleich für E-Mail implementieren | Merkmal |
| VERGLEICHNETZ-2068 | Implementieren Sie Multi-Comparer für Text | Merkmal |
| VERGLEICHNETZ-2028 | Vergleichsoption hinzufügen, um Kopf-/Fußzeilenvergleich umzuschalten | Merkmal |
| VERGLEICHNETZ-2094 | API gibt Dateihandles nicht frei | Fehler |
| VERGLEICHNETZ-2076 | Kompatibilitätsprobleme unter .NET Standard 2.0 | Fehler |
| VERGLEICHNETZ-2071 | Unterschied Breite und Höhe ist falsch | Fehler |
| VERGLEICHNETZ-2070 | Ergebnisdatei für falsche Zellen | Fehler |
| VERGLEICHNETZ-2014 | Unerwartete Menge an Änderungen in den Vergleichsergebnissen einer PDF-Datei | Fehler |
| VERGLEICHNETZ-2012 | Ausnahme beim Vergleich von PDF-Dateien ohne Lizenz | Fehler |
| VERGLEICHNETZ-1993 | Falsche Boxabmessungen und -position | Fehler |
| VERGLEICHNETZ-1971 | Unterschied Breite und Höhe ist falsch | Fehler |

Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 19.10 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. **Multicomparing für E-Mail-Dokumente**
Sie haben die Möglichkeit, mehr als ein Ziel-E-Mail-Dokument (eml) zu vergleichen.
    












```scharf
string sourcePath = "source.eml";
string target1Path = "target1.eml";
string target2Path = "target2.eml";
string target3Path = "target3.eml";
string resultPath = "result.eml";
     




















Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Ziel1Pfad);
Vergleicher.Hinzufügen (Ziel2Pfad);
Vergleicher.Hinzufügen (Ziel3Pfad);
     




















Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), neue CompareOptions());
```
    












2. **Multicomparing für Textdokumente**
Sie haben die Möglichkeit, mehr als eine Zieltextdatei zu vergleichen.
    












```scharf
string sourcePath = "source.txt";
Zeichenfolge Ziel1Pfad = "Ziel1.txt";
Zeichenfolge Ziel2Pfad = "Ziel2.txt";
string target3Path = "target3.txt";
string resultPath = "result.txt";
     




















Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Ziel1Pfad);
Vergleicher.Hinzufügen (Ziel2Pfad);
Vergleicher.Hinzufügen (Ziel3Pfad);
     




















Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), neue CompareOptions());
```
    












3. **Option zum Festlegen des Ausgabeformats des Dokuments (Papiergröße)**
    












Es wurde eine neue Möglichkeit hinzugefügt, die Papiergröße des Ergebnisdokuments anzupassen.
    












Eine neue *PaperSize*-Eigenschaft wurde zu CompareOptions hinzugefügt. Der Benutzer kann die Papiergröße des Ausgabedokuments festlegen, indem er dieser Eigenschaft den Wert aus der Aufzählung *PaperSize* zuweist.
    












Wenn der Benutzer *PaperSize* nicht festlegt, hat es einen Standardwert – die Papiergröße im resultierenden Dokument ist die gleiche wie im Ziel.
    












```scharf
string sourcePath = "source.docx";
string targetPath = "target.docx";
string resultPath = "result.docx";
     




















Vergleichsoptionen vergleichsoptionen = neue vergleichsoptionen();
CompareOptions.PaperSize = PaperSize.A4;
     




















Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Zielpfad);
Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), CompareOptions);
```
    












4. **Option zum Wechseln des Kopf-/Fußzeilenvergleichs**
    












Es wurde eine neue Option hinzugefügt, um Kopf- und Fußzeilen von Dokumenten zu vergleichen, die Sie mit der Eigenschaft *HeaderFootersComparison* in *CompareOptions* festlegen können.
    












Standardmäßig ist diese Eigenschaft wahr. Um den Vergleich von Kopf- und Fußzeilen zu ignorieren, sollten Sie es auf false setzen.
    












```scharf
string sourcePath = "source.pdf";
string targetPath = "target.pdf";
string resultPath = "source.pdf";
     




















//Kopf-/Fußzeile nicht vergleichen
Vergleichsoptionen vergleichsoptionen = neue vergleichsoptionen();
CompareOptions.HeaderFootersComparison = false;
     




















Vergleichsvergleicher = neuer Vergleichsdienst (Quellenpfad);
Vergleicher.Hinzufügen (Zielpfad);
Comparer.Compare(File.Create(Ergebnispfad), neue SaveOptions(), CompareOptions);
```

