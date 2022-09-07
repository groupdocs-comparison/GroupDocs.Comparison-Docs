---
id: get-file-info
url: comparison/net/get-file-info
title: "Dateiinformationen erhalten"
weight: 2
description: "In diesem Artikel wird erläutert, wie Sie Dokumentdateityp und -größe erkennen und die Seitenzahl berechnen, wenn Sie Dokumente oder Bilder mit GroupDocs.Comparison kommentieren."
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
name: Vergleichsdateiinformationen in .NET abrufen
    description: "Rufen Sie Schritt für Schritt die Dateiinformationen von Comparer in .NET ab"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Erstellt ein Datei-Info-Objekt
Text: Rufen Sie die GetDocumentInfo-Methode für das Source-Feld des Vergleichsobjekts auf und weisen Sie das Ergebnis dem Datei-Info-Objekt der IDocumentInfo-Klasse zu.
- name: Dateiinformationen abrufen
text: Um allgemeine Informationen zu einer Datei zu erhalten, greifen Sie mit dem Datei-Info-Objekt auf das erforderliche Feld zu. Um Informationen zu einer bestimmten Seite zu erhalten, verwenden Sie das Feld PagesInfo mit dem erforderlichen Seitenindex und greifen danach auf das erforderliche Feld zu.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht das Abrufen von Dateiinformationen, darunter:

* [FileType](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/filetype) – Dateityp des Dokuments (PDF, Word-Dokument, Excel-Tabelle, PowerPoint-Präsentation oder Bild usw. );
* [PageCount](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/pagecount) – Anzahl der Dokumentseiten;
* [FileSize](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/size) - Dateigröße des Dokuments;
* [PagesInfo](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/pageinfo) – repräsentiert Informationen über die Seite.

Die folgenden Codebeispiele zeigen, wie Dateiinformationen abgerufen werden.

## Rufen Sie Dateiinformationen für die Datei von der lokalen Festplatte ab

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ", 
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
}
```

## Holen Sie sich die Datei für die Datei aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ", 
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
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

