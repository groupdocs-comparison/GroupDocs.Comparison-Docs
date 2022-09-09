---
id: how-to-compare-word-documents
url: comparison/net/how-to-compare-word-documents
title: "So vergleichen Sie Word-Dokumente"
weight: 1
description: "Lesen Sie diesen Artikel und finden Sie heraus, wie Sie den GroupDocs.Comparison für .NET verwenden können, um Unterschiede in Word-Dateien zu finden. Außerdem finden Sie in diesem Artikel eine Option, um dieses Produkt in Ihrer Produktion zu verwenden"
keywords: "So vergleichen Sie Word-Dokumente, Word-Dokumente, Word-Dateien, Vergleichsanwendungsfall, Word-Dokumente vergleichen"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
Bei der Arbeit mit der Dokumentenverwaltung können Sie häufig auf eine Situation stoßen, in der Sie große Dateien vergleichen müssen, die einander ähnlich sind, aber geringfügige Unterschiede aufweisen, über die Sie mehr wissen möchten. Und natürlich ist es ziemlich zeitaufwändig, diese Änderungen manuell zu finden.
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet Ihnen viele Optionen zum Vergleichen einer Vielzahl von [unterstützten Dateiformaten]({{< ref "comparison/net/getting -started/supported-document-formats.md" >}}), einschließlich PDF-Format.

Nach dem Vergleich der beiden Word-Dateien erhalten Sie ein Ergebnisdokument, in dem die Änderungen in drei verschiedenen Farben hervorgehoben sind:

* Elemente, die in die erste Datei eingefügt wurden. – <font color="blue">**blau**</font> , standardmäßig
* Elemente, die aus der ersten Datei gelöscht wurden – standardmäßig <font color="red">**rot**</font>
* Elemente, deren Stil geändert wurde (Schriftart, Farbe usw.) – standardmäßig <font color="green">**grün**</font>

| Quell-/Ziel-/Ergebniswortdateien |
| --- | --- |
|Quelle |![](/comparison/net/images/how-to-compare-word-1.png) |
|Ziel |![](/comparison/net/images/how-to-compare-word-2.png)|
|Ergebnis |![](/comparison/net/images/how-to-compare-word-3.png)|

Das Codebeispiel zum Vergleichen zweier Word-Dateien:

```csharp
string sourcePath = @"source.doc"; // NOTE: Path to the source word document 
string targetPath = @"target.doc"; // NOTE: Path to the target word document 
string resultPath = @"result.doc"; // NOTE: Path to the result word document       

            

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

