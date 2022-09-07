---
id: load-file-from-stream
url: comparison/net/load-file-from-stream
title: "Datei aus Stream laden"
weight: 2
description: "In diesem Artikel wird erläutert, wie Sie PDF-, Word-, Excel- und PowerPoint-Dokumente aus dem Stream laden, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Dokument aus Stream laden, Dokument mit GroupDocs.Comparison laden"
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
- name: Erstellen Sie ein Objekt und geben Sie den Quelldateistream an
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Quelldateistrom. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Tagret-Dateistream mit der Add-Methode hinzu.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und legen Sie den resultierenden Dateistream ab.
---
Falls Sie die Datei in Form eines Streams haben. Um den Aufwand für das Speichern von Streams als Datei auf der Festplatte zu vermeiden, bietet **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** eine Möglichkeit, direkt mit Dateistreams zu arbeiten.

Folgende Schritte sind zu befolgen:
* Dateistream erhalten;
* Übergeben Sie den geöffneten Quelldateistream an den Klassenkonstruktor [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) oder übergeben Sie den geöffneten Zieldateistream an [Add](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) Methode.
    



Das folgende Code-Snippet beschreibt, wie eine Datei aus dem Stream geladen wird.

```csharp
using (Stream sourceStream = File.OpenRead("source.docx"))
using (Stream targetStream = File.OpenRead("target.docx"))
{
	using (Comparer comparer = new Comparer(sourceStream))
	{
	    comparer.Add(targetStream);
    	comparer.Compare(File.Create("result.docx"));
	}
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
