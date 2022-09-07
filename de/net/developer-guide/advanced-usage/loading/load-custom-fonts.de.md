---
id: Load-Custom-Fonts
url: comparison/net/load-custom-fonts
title: "Laden Sie benutzerdefinierte Schriftarten"
weight: 4
description: "In diesem Artikel wird erläutert, wie Sie benutzerdefinierte Schriftarten in PDF-, Word-, Excel- und PowerPoint-Dokumenten laden, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Benutzerdefinierte Schriftarten, Schriftarten"
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
name: So laden Sie benutzerdefinierte Schriftarten in .NET
    description: "Erfahren Sie Schritt für Schritt, wie Sie benutzerdefinierte Schriftarten in .NET laden"
Schritte:
- Name: Objekt erstellen und Schriftart laden.
text: Erstellen Sie ein Objekt der LoadOptions-Klasse. Greifen Sie auf das Objektfeld zu, indem Sie die Add-Methode mit dem Pfad zum Schriftartdateiparameter verwenden.
- name: Erstellen Sie ein Objekt und laden Sie die Quelldatei mit Optionen
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei und das Objekt von LoadOptions. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht es Ihnen, Dokumente zu vergleichen, deren Inhalt nicht standardmäßige Schriftarten enthält.

Im Folgenden sind die Schritte zum Verbinden benutzerdefinierter Schriftarten und zum Vergleichen von Dokumenten aufgeführt:

* Instanziieren Sie das Objekt [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) und stellen Sie eine Liste von Verzeichnissen für benutzerdefinierte Schriftarten bereit;
* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Quelldokumentpfad oder -stream und [LoadOptions](https://apireference.groupdocs.com/net/ Comparison/groupdocs.comparison.options/loadoptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf.

Das folgende Codebeispiel zeigt, wie benutzerdefinierte Schriftarten verbunden und Dokumente verglichen werden.

```csharp
// Instantiate the LoadOptions object and create a list of custom font directories.
LoadOptions loadOptions = new LoadOptions();
loadOptions.FontDirectories.Add("./fontPath/");
 
using (Comparer comparer = new Comparer("source.docx", loadOptions))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
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

