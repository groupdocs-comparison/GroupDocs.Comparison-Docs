---
id: how-to-compare-pdf-files
url: comparison/net/how-to-compare-pdf-files
title: "So vergleichen Sie PDF-Dateien"
weight: 1
description: "Lesen Sie diesen Artikel und finden Sie heraus, wie Sie den GroupDocs.Comparison für .NET verwenden können, um Unterschiede in PDF-Dateien zu finden. Außerdem finden Sie in diesem Artikel eine Option, um dieses Produkt in Ihrer Produktion zu verwenden"
keywords: "So vergleichen Sie PDF-Dateien, PDF-Dateien, Vergleichsanwendungsfall, PDF-Dateien vergleichen"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
Bei der Arbeit mit ähnlichen Dokumenten wird es immer schwieriger, den Unterschied zwischen den Änderungen in einer der Versionen zu finden, insbesondere wenn Sie mit Dokumenten mit großem Umfang arbeiten. Solche Funktionen wie der Vergleich von PDF-Dokumenten können Ihre Arbeitseffizienz erheblich verbessern und vor allem: beschleunigen.**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet Ihnen viele Optionen zum Vergleichen einer Vielzahl von [unterstützten Dateiformaten]({{< ref "comparison /net/getting-started/supported-document-formats.md" >}}), einschließlich PDF-Format.

Nach dem Vergleich gibt es drei Farben in der resultierenden Datei, die die Unterschiede hervorheben. Sie können die Farben auch selbst bestimmen, um den nächsten Unterschied zu erkennen:

* Elemente, die in die erste Datei eingefügt wurden. – <font color="blue">**blau**</font> , standardmäßig
* Elemente, die aus der ersten Datei gelöscht wurden – standardmäßig <font color="red">**rot**</font>
* Elemente, deren Stil geändert wurde (Schriftart, Farbe usw.) – standardmäßig <font color="green">**grün**</font>

| Quelle / Ziel / Ergebnis PDF-Dateien |
| --- | --- |
|Quelle |![](Vergleich/net/images/how-to-compare-pdf-1.png) |
|Ziel |![](comparison/net/images/how-to-compare-pdf-2.png)|
|Ergebnis |![](comparison/net/images/how-to-compare-pdf-3.png)|

Das Codebeispiel zum Vergleichen zweier PDF-Dateien:

```csharp
string sourcePath = @"source.pdf"; // NOTE: Path to the source pdf document 
string targetPath = @"target.pdf"; // NOTE: Path to the target pdf document 
string resultPath = @"result.pdf"; // NOTE: Path to the result pdf document       

            

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

Als Ergebnis erhalten wir eine PDF-Datei mit hervorgehobenen Änderungen, in der die gelöschten Elemente mit einer Schriftart <font color="red">**rot**</font> , die hinzugefügten – in <font color="blue">**blau**</font> und die geänderten – in <font color="yellow">**grün**</font> gekennzeichnet sind.

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

