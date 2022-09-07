---
id: set-password-for-resultant-document
url: comparison/net/set-password-for-resultant-document
title: "Legen Sie das Passwort für das resultierende Dokument fest"
weight: 2
description: "In diesem Artikel wird erläutert, wie Sie das Dokumentkennwort nach dem Dateivergleich in Ihren .NET-Anwendungen mithilfe von GroupDocs.Comparison für .NET festlegen."
keywords: "Dokument vergleichen und mit Passwort schützen"
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
- name: Erstellt ein Objekt von CompareOptions
text: Erstellen Sie ein Objekt der CompareOptions-Klasse mit dem PasswordSaveOption-Parameter, der durch den PasswordSaveOption-Enumerationswert initialisiert wird.
- name: Erstellt ein Objekt von SaveOptions
text: Erstellen Sie ein Objekt der SaveOptions-Klasse mit dem Parameter Password.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und setzen Sie den resultierenden Dateipfadparameter, das SaveObject-Objekt und das CompareOption-Objekt.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht es, das resultierende Dokument mit einem Passwort zu schützen.

Im Folgenden sind die Schritte zum Schutz des resultierenden Dokuments aufgeführt:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) mit [PasswordSaveOption](https://apireference.groupdocs.com/net/comparison/groupdocs. Comparison.options/compareoptions/properties/passwordsaveoption) = [PasswordSaveOption](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/passwordsaveoption).User;
* Instanziieren Sie das Objekt [SaveOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) und setzen Sie es auf [Password](https://apireference.groupdocs.com/comparison/net/ groupdocs.comparison.options/saveoptions/properties/password) Eigenschaft gewünschtes Passwort für resultierendes Dokument;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf und übergeben Sie [SaveOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/saveoptions) und [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) Objekte zu einer Methode.

Das folgende Code-Snippet zeigt, wie Dokumente verglichen und das resultierende Dokument mit einem Passwort geschützt werden.

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions cOptions = new CompareOptions
    {
     	PasswordSaveOption = PasswordSaveOption.User
    };
    SaveOptions sOptions = new SaveOptions()
    {
     	Password = "3333"
    };
    comparer.Compare("result.docx", sOptions, cOptions);
}
```

## Mehr Ressourcen
### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Dokumentenvergleich für modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Kostenlose Online-App
Zusammen mit der voll ausgestatteten .NET-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

