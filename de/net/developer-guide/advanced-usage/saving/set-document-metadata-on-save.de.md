---
id: set-document-metadata-on-save
url: comparison/net/set-document-metadata-on-save
title: "Dokumentmetadaten beim Speichern festlegen"
weight: 1
description: "Befolgen Sie diese Anleitung und erfahren Sie, wie Sie Dokumentmetadaten festlegen, wenn Sie das resultierende Dokument nach dem Dateivergleich in Ihren .NET-Anwendungen speichern."
keywords: "Dokumentmetadaten speichern, Dokumente vergleichen, Dokumentvergleich, Dateidiff"
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
name: Wie Dokument-Metadaten beim Speichern in .NET festgelegt werden
    description: "Erfahren Sie Schritt für Schritt, wie Sie Dokumentmetadaten beim Speichern in .NET festlegen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das SaveOtions-Objekt mit dem erforderlichen Metadatenparameter ein, der von MetadataType enum initialisiert wurde.
---
Normalerweise können Dokumente einige Metadateninformationen wie Autor, Organisation usw. enthalten. [**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) bietet die Möglichkeit, beim Speichern der Ergebnisse eine Metadatenquelle auszuwählen dokumentieren.
Mögliche Metadatenquellen sind:

* Metadaten des **Quelldokuments**;
* Metadaten des Dokuments **Ziel**;
* **Benutzerdefinierte** Metadaten.

Im Folgenden sind die Schritte zum Festlegen der resultierenden Dokumentmetadaten aufgeführt.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [SaveOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) und legen Sie [CloneMetadataType](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/saveoptions/properties/clonemetadatatype) Eigenschaft mit gewünschter [MetadataType](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/metadatatype) Variante;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf und übergeben Sie [SaveOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/saveoptions) Objekt zur Methode.

Der folgende Code zeigt, wie die resultierenden Dokumentmetadaten festgelegt werden.

## Legen Sie Metadaten aus der Quelldatei fest

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Source });
}
```

## Legen Sie Metadaten aus der Zieldatei fest

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Target });
}
```

## Legen Sie benutzerdefinierte Metadaten fest

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    SaveOptions saveOptions = new SaveOptions()
    {
    	CloneMetadataType = MetadataType.FileAuthor,
        FileAuthorMetadata = new FileAuthorMetadata
        {
        	Author = "Tom",
            Company = "GroupDocs",
            LastSaveBy = "Jack"
        }
    };
    comparer.Compare("result.docx", saveOptions);
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

