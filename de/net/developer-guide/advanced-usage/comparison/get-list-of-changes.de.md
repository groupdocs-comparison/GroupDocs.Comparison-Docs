---
id: get-list-of-changes
url: comparison/net/get-list-of-changes
title: "Liste der Änderungen erhalten"
weight: 6
description: "In diesem Artikel wird erläutert, wie Sie eine Sammlung von Änderungen zwischen verglichenen Dokumenten erhalten, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Holen Sie sich Datei-Diff, Dokument-Diff, vergleichen Sie Dokumente, vergleichen Sie Dateien"
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
name: So erhalten Sie eine Liste der Änderungen in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie eine Liste der Änderungen in .NET erhalten"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor nimmt den Pfad der Quelldatei oder den Stream-Parameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei oder zum Tagret-Dateistream mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht es, eine Liste der Änderungen zwischen Quell- und Zieldokumenten zu erhalten.

Im Folgenden sind die Schritte zum Abrufen der Änderungsliste aufgeführt.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare) auf;
* Rufen Sie die Methode [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges) auf.

Das folgende Codebeispiel zeigt, wie eine Liste aller Änderungen abgerufen wird.

## Rufen Sie eine Liste der Änderungen von der lokalen Festplatte ab

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
}
```

## Holen Sie sich eine Liste der Änderungen aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
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

