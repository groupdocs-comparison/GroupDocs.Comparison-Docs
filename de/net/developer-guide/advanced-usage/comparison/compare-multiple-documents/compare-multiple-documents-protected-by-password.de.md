---
id: vergleiche-mehrere-dokumente-passwortgeschützt
url: comparison/net/compare-multiple-documents-protected-by-password
title: "Vergleichen Sie mehrere passwortgeschützte Dokumente"
weight: 1
description: "Dieser Artikel beschreibt, wie Sie mehrere passwortgeschützte Word-Dokumente oder PowerPoint-Präsentationen mit GroupDocs.Comparison für die .NET-API vergleichen."
keywords: "Vergleichen Sie mehrere passwortgeschützte Dokumente, vergleichen Sie mehrere geschützte Dokumente"
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
name: So vergleichen Sie mehrere Dokumente in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie mehrere Dokumente in .NET vergleichen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor nimmt den Quelldateipfad oder Quelldateistream als ersten Parameter und ein LoadOption-Objekt als zweiten Parameter, der das Kennwort enthält. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldateien laden
text: Fügen Sie den Pfad zu den Tagret-Dateien mit der Add-Methode hinzu. Der zweite Parameter ist ein LoadOption-Objekt, das ein Kennwort enthält.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter ein.
---
{{< alert style="info" >}}HINWEIS: Diese Funktion ist nur für Word-Dokumente, PowerPoint- und Open Document-Präsentationen verfügbar.{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht den Vergleich von mehr als 2 Dokumenten (auch passwortgeschützte Dokumente).

Im Folgenden finden Sie die Schritte zum Vergleichen passwortgeschützter Dokumente.

* Objekt [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) instanziieren und Passwort für das Quelldokument angeben;
* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Quelldokumentpfad oder -stream und [LoadOptions](https://apireference.groupdocs.com/net/ Comparison/groupdocs.comparison.options/loadoptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Instanziieren Sie ein weiteres [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions)-Objekt und geben Sie das Passwort für das Zieldokument an;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments und [LoadOptions](https://apireference .groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) Objekt, das im vorherigen Schritt erstellt wurde. Wiederholen Sie diesen Schritt für jedes passwortgeschützte Zieldokument;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf.

Das folgende Codebeispiel zeigt, wie passwortgeschützte Dokumente verglichen werden.

## Vergleichen Sie mehrere Dokumente von der lokalen Festplatte

```csharp
using (Comparer comparer = new Comparer("source.docx", new LoadOptions() { Password = "1234" }))
{
	comparer.Add("target1.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target2.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target3.docx", new LoadOptions() { Password = "5678" });
    comparer.Compare("result.docx");
}
```

## Vergleichen Sie mehrere geschützte Dokumente aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"), new LoadOptions() { Password = "1234" }))
{
	comparer.Add(File.OpenRead("target1.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target2.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target3.docx"), new LoadOptions() { Password = "5678" });
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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

