---
id: load-password-protected-documents
url: comparison/net/load-password-protected-documents
title: "Laden Sie passwortgeschützte Dokumente"
weight: 3
description: "Dieser Artikel erklärt, wie Sie passwortgeschützte PDF-, Word-, Excel- und PowerPoint-Dokumente laden, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Passwortgeschütztes Dokument laden, Geschütztes Dokument mit GroupDocs.Comparison laden"
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
name: Wie wird die Datei aus dem Stream in .NET geladen
    description: "Erfahren Sie Schritt für Schritt, wie Sie Dateien aus dem Stream in .NET laden"
Schritte:
- name: Erstellt ein Objekt von LoadOption
text: Erstellt ein Objekt von LoadOption, das die Passwortparameter enthält.
- name: Zieldatei laden
text: Fügen Sie den Pfad zu den Tagret-Dateien mit der Add-Methode hinzu. Der zweite Parameter ist ein LoadOption-Objekt, das ein Kennwort enthält.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und legen Sie den resultierenden Dateistream ab.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht den Vergleich von passwortgeschützten Dokumenten.
Im Folgenden finden Sie die Schritte zum Vergleichen passwortgeschützter Dokumente.

* Objekt [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) instanziieren und Passwort für das Quelldokument angeben;
* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Quelldokumentpfad oder -stream und [LoadOptions](https://apireference.groupdocs.com/net/ Comparison/groupdocs.comparison.options/loadoptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Instanziieren Sie ein weiteres [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions)-Objekt und geben Sie das Passwort für das Zieldokument an;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments und [LoadOptions](https://apireference .groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf.

Das folgende Codebeispiel zeigt, wie passwortgeschützte Dokumente verglichen werden.

```csharp
LoadOptions sourceLoadOptions = new LoadOptions(){ Password = "1234" };
 
using (Comparer comparer = new Comparer("source.docx", sourceLoadOptions))
{
	LoadOptions targetLoadOptions =	new LoadOptions() { Password = "5678" };
    comparer.Add("target.docx", targetLoadOptions);
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

