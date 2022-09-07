---
id: get-supported-document-formats
url: comparison/net/get-supported-document-formats
title: "Holen Sie sich unterstützte Dateiformate"
weight: 1
description: "In diesem Artikel wird erläutert, wie Sie eine Liste unterstützter Dateiformate erhalten, wenn Sie Dokumente mit GroupDocs.Comparison in Ihren .NET-Anwendungen anzeigen."
keywords: "Dateiinformationen abrufen, Dateityp abrufen, Seitenzahl, Dateigröße"
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
name: Abrufen von Dateiformaten, die von Vergleich in .NET unterstützt werden
    description: "Holen Sie sich Schritt für Schritt Dateiformate, die von Comparison .NET unterstützt werden"
Schritte:
- name: Ruft ein Array unterstützter Dateitypen ab
text: Rufen Sie die GetSupportedFileTypes-Methode mit dem FileType-Objekt auf. Eine zusätzliche OrderBy-Methode kann das Sortieren des Ergebnisarrays sein, wobei der Lambda-Ausdruck als Parameter verwendet wird. Und weisen Sie das Ergebnis einer Sammlung mit einem FileType-Datentyp zu, mit der Möglichkeit der Iteration.
- name: Unterstützte Dateitypen ausgeben
Text: Durch Iteration Ihrer Sammlung können Sie die unterstützten Datentypen beispielsweise auf der Konsole anzeigen.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht das Abrufen der Liste aller [unterstützten Dateiformate]({{< ref "comparison/net/getting-started/ supported-document-formats.md" >}}), indem Sie die folgenden Schritte ausführen:

* Rufen Sie [GetSupportedFileTypes](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype/methods/getsupportedfiletypes) von [FileType](https://apireference.groupdocs.com/comparison/net /groupdocs.comparison.result/filetype) Klasse;
* Aufzählung durch die Sammlung von [FileType](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype)-Objekten.

Das folgende Codebeispiel zeigt, wie Sie eine Liste unterstützter Dateiformate abrufen.

```csharp
IEnumerable<FileType> supportedFileTypes = FileType
	.GetSupportedFileTypes()
	.OrderBy(f => f.Extension);

foreach (FileType fileType in supportedFileTypes)
	Console.WriteLine(fileType);
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

