---
id: Vergleiche mehrere Dokumente
url: comparison/net/compare-multiple-documents
title: "Vergleichen Sie mehrere Dokumente"
weight: 3
description: "Erfahren Sie mehr darüber, wie Sie mehrere Word-Dokumente oder PowerPoint-Präsentationen gleichzeitig mit GroupDocs.Comparison für .NET vergleichen können."
keywords: "Mehrere Dokumente vergleichen, Dokumente mehrfach vergleichen, mehr als zwei Dokumente vergleichen"
Produktname: GroupDocs.Comparison für .NET
ausblendenKinder: Stimmt
strukturierteDaten:
showOrganization: Stimmt
---
{{< alert style="info" >}}HINWEIS: Diese Funktion ist nur für Word-Dokumente, PowerPoint- und Open Document-Präsentationen verfügbar.{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht den Vergleich von mehr als 2 Dokumenten.

Im Folgenden finden Sie die Schritte zum Vergleichen mehrerer Dokumente.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an. Wiederholen Sie diesen Schritt für jedes Zieldokument;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf.

Das folgende Codebeispiel zeigt, wie mehrere Dokumente mit bestimmten Optionen verglichen werden.

## Vergleichen Sie mehrere Dokumente von der lokalen Festplatte

```csharp
using (Comparer comparer = new Comparer("source.docx")
{
	comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
    comparer.Compare("result.docx");
}
```

## Vergleichen Sie mehrere Dokumente aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    comparer.Compare(File.Create("result.docx"));
}
```

## Mehr Ressourcen

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
