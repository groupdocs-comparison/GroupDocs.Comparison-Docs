---
id: dokumente vergleichen
url: comparison/net/compare-documents
title: "Dokumente vergleichen"
weight: 3
description: "Dieser Artikel zeigt, wie Sie Word-, Excel-, PowerPoint-, Outlook-, OneNote-, PDF-, Bild-, HTML-, AutoCAD-, Visio-, OpenDocument- und OneNote-Dokumente mit GroupDocs.Comparison für .NET vergleichen."
keywords: "Dokumente vergleichen, Dokumentenvergleich in C#"
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
name: So vergleichen Sie Dokumente in .NET
    description: "Erfahren Sie Schritt für Schritt, wie Sie Dokumente in .NET vergleichen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter ein.
---
## Dateivergleichsfunktionen

Die von **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** verwendeten Algorithmen zur Erkennung von Änderungen ermöglichen die Erkennung von Änderungen in verschiedenen Dokumententeilen und -blöcken:

* Textblöcke - Absätze, Wörter und Zeichen;
* Tabellen;
* Bilder;
* Formen usw.
    


Zur besseren visuellen Trennung von erkannten Änderungen werden hinzugefügte, geänderte oder gelöschte Dokumentteile farblich hervorgehoben:

*Hinzugefügt – <font color="blue">**blau**</font>
* Modifiziert – <font color="green">**grün**</font>
* Stil – <font color="green">**grün**</font>
* Gelöscht – <font color="red">**rot**</font>

Änderungen des Styling-Farbschemas können bei Bedarf angepasst werden, geänderte Textblöcke können mit unterschiedlicher Formatierung gekennzeichnet werden - kursiv, fett, unterstrichen, durchgestrichen usw.

Hier sind einfache Schritte, um zwei Dokumente zu vergleichen:
* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an.
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf.

Das folgende Code-Snippet zeigt den einfachsten Fall des Dokumentenvergleichs mit ein paar Codezeilen.

## Vergleichen Sie Dokumente aus der lokalen Datei

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	comparer.Compare("result.docx");
}
```

## Vergleichen Sie Dokumente aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	comparer.Compare(File.Create("result.docx"));
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

