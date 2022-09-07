---
id: vergleiche-mehrere-dokumente-mit-spezifischen-vergleichseinstellungen
url: comparison/net/compare-multiple-documents-with-specific-compare-settings
title: "Vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen"
weight: 2
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie mehrere Dokumente mit unterschiedlichen Anpassungen vergleichen – Stilerkennung, Änderungsvergleichs-Detalisierungsebene und mehr."
keywords: "Vergleichen Sie mehrere Dokumente, Erkennung von Stiländerungen, Mehrfachvergleich von Dateien"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Dokumentenvergleich
      description: "Vergleichen Sie Dokumente nativ mit hoher Leistung unter Verwendung der C#-Sprache und GroupDocs.Comparison für .NET"
Produktcode: Vergleich
Produktplattform: net
showVideo: Stimmt
wie man:
name: So vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen in .NET vergleichen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- Name: Geben Sie die erforderlichen Einstellungen an
Text: Erstellen Sie ein Vergleichsoptionsobjekt und geben Sie die erforderlichen Einstellungen an.
- name: Zieldateien laden
text: Fügen Sie den Pfad zu den Tagret-Dateien mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
{{< alert style="info" >}}HINWEIS: Diese Funktion ist nur für Microsoft Word-Dokumente, Microsoft PowerPoint und Open Document-Präsentationen verfügbar.{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht den Vergleich von mehr als 2 Dokumenten und die Angabe einiger spezifischer Vergleichsoptionen wie Styling für erkannte Änderungen, Detaillierungsgrad des Vergleichs usw.

Im Folgenden finden Sie die Schritte zum Vergleichen mehrerer Dokumente mit bestimmten Optionen.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an. Wiederholen Sie diesen Schritt für jedes Zieldokument;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) und geben Sie die gewünschten Optionen an;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt.

Das folgende Codebeispiel zeigt, wie mehrere Dokumente mit bestimmten Optionen verglichen werden.

## Vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen von der lokalen Festplatte

```csharp
using (Comparer comparer = new Comparer("source.docx")
{
	comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
	CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
        }
    };
    comparer.Compare("result.docx", compareOptions);
}
```

## Vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
        }
    };
    comparer.Compare(File.Create("result.docx"), compareOptions);
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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

