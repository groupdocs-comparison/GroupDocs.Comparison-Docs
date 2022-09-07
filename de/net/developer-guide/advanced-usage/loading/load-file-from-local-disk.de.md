---
id: Datei-vom-lokalen-Datenträger laden
url: comparison/net/load-file-from-local-disk
title: "Laden Sie die Datei von der lokalen Festplatte"
weight: 1
description: "In diesem Artikel wird erläutert, wie Sie PDF-, Word-, Excel- und PowerPoint-Dokumente von einer lokalen Festplatte laden, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Dokument von lokaler Festplatte laden, Dokument aus Dateipfad laden, Dokument mit GroupDocs.Comparison laden"
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
Name: Wie Datei von lokaler Festplatte in .NET laden
    description: "Erfahren Sie Schritt für Schritt, wie Sie Dateien von der lokalen Festplatte in .NET laden"
Schritte:
- name: Erstellen Sie eine String-Variable mit dem Pfad zur Datei
text: Erstellen Sie eine String-Variable mit dem Pfad zur Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt und laden Sie eine Quelldatei, indem Sie im Parameter eine String-Variable angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
Wenn sich die Quelldatei auf der lokalen Festplatte befindet, können Sie sie mit **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** über [Comparer](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/comparer) Klassenkonstruktor, der den absoluten oder relativen Pfad dazu angibt. Zum Laden der Zieldatei auf der lokalen Festplatte sollten Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) verwenden, die absolute oder relative Pfade als akzeptiert Parameter.

Das folgende Code-Snippet zeigt, wie Dateien von der lokalen Festplatte geladen werden.

```csharp
string sourcePath = "source.docx";
using (Comparer comparer = new Comparer(sourcePath))
{
	string targetPath = "target.docx";
    comparer.Add("targetPath");
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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
