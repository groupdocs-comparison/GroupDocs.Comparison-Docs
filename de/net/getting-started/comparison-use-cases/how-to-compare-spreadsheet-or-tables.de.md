---
id: wie-man-tabellenkalkulationen-oder-tabellen-vergleicht
url: comparison/net/how-to-compare-spreadsheet-or-tables
title: "So vergleichen Sie Excel-Dateien"
weight: 1
description: "Lesen Sie diesen Artikel und finden Sie heraus, wie Sie den GroupDocs.Comparison für .NET verwenden können, um Unterschiede in Excel-Dateien zu finden."
keywords: "So vergleichen Sie Excel-Dateien, Tabellen oder Tabellen, Tabellen vergleichen, Excel-Dateien vergleichen"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
Wenn Sie also zwei ähnliche Excel-Arbeitsmappen oder zwei Versionen derselben Tabelle haben, was ist das Beste, was Sie zuerst tun sollten? Das ist richtig, vergleichen Sie diese Dateien auf Unterschiede und führen Sie sie dann vielleicht zu einer Datei zusammen. Außerdem hilft Ihnen der Vergleich von Arbeitsmappen, mögliche Probleme zu erkennen, wie z. B. falsche Tabellen, zusätzliche Einträge, inkonsistente Formeln oder falsche Formatierung.**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet Ihnen viele Optionen zum Vergleichen einer Vielzahl von [unterstützten Dateiformaten] ({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}), einschließlich Excel-Formaten.

Nach dem Vergleich gibt es drei Farben in der resultierenden Datei, die die Unterschiede hervorheben. Sie können die Farben auch selbst bestimmen, um den nächsten Unterschied zu erkennen:

* Elemente, die in die erste Datei eingefügt wurden. – <font color="blue">**blau**</font> , standardmäßig
* Elemente, die aus der ersten Datei gelöscht wurden – standardmäßig <font color="red">**rot**</font>
* Elemente, deren Stil geändert wurde (Schriftart, Farbe usw.) – standardmäßig <font color="green">**grün**</font>

Das Codebeispiel zum Vergleichen zweier Excel-Dateien:

```csharp
string sourcePath = @"source.xlsx"; // NOTE: Path to the source Excel document 
string targetPath = @"target.xlsx"; // NOTE: Path to the target Excel document 
string resultPath = @"result.xlsx"; // NOTE: Path to the result Excel document       

            

using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
}
```

| Quell-/Ziel-/Ergebnis-Excel-Dateien |
| --- | --- |
|Quelle |![](comparison/net/images/how-to-compare-spreadsheet-or-tables-1.png) |
|Ziel |![](comparison/net/images/how-to-compare-spreadsheet-or-tables-2.png)|
|Ergebnis |![](comparison/net/images/how-to-compare-spreadsheet-or-tables-3.png)|

Als Ergebnis haben Sie eine Excel-Datei mit hervorgehobenen Änderungen, in der die gelöschten Elemente mit einer Schriftart <font color="red">**rot**</font> , die hinzugefügten – in <font color="blue">**blau**</font> und die geänderten – in <font color="yellow">**grün**</font> gekennzeichnet sind.

## Mehr Ressourcen
### Erweiterte Nutzungsthemen
Weitere Informationen zu Dokumentvergleichsfunktionen finden Sie im [Abschnitt zur erweiterten Verwendung]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Dokumentenvergleich für ein modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Kostenlose Online-App
Zusammen mit der voll ausgestatteten .NET-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

