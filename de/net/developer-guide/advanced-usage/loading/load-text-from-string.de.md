---
id: lade-text-aus-string
url: comparison/net/load-text-from-string
title: "Text aus String laden"
weight: 5
description: "In diesem Artikel wird erläutert, wie Sie Werte aus Variablen vom Typ Zeichenfolge laden, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Werte aus Variablen vom Typ String laden, Text mit GroupDocs.Comparison laden"
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
name: Wie lade Text aus String in .NET
    description: "Erfahren Sie Schritt für Schritt, wie Sie eine Datei aus einer Zeichenfolge in .NET laden"
Schritte:
- name: Objekt erstellen und Quelltext laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor nimmt den Quelltext als ersten Parameter und ein LoadOption-Objekt mit LoadText-Parameter.
- name: Zieltext laden
text: Fügen Sie den Tagret-Text mit der Add-Methode hinzu. Der zweite Parameter ist ein LoadOption-Objekt, das LoadText = true enthält.
- Name: Dokumente vergleichen
text: Erstellen Sie eine Zeichenfolgenvariable, in der das Ergebnis des Vergleichs platziert wird.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht den Vergleich von Werten aus Variablen vom Typ *string*.
Im Folgenden sind die Schritte zum Vergleichen von Text aus Variablen aufgeführt:

* Instanziiere das Objekt [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) und setze [LoadText](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/loadoptions/properties/loadtext) auf *true* (dies zeigt an, dass die übergebene Zeichenfolge zu vergleichenden Text enthält, nicht den Dateipfad);
* Instanziieren Sie [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) *object* mit Quellvariable vom Typ *string* und [LoadOptions](https://apireference.groupdocs. com/net/comparison/groupdocs.comparison.options/loadoptions) *object* erstellt im vorherigen Schritt;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie die Zielvariable vom Typ *string* und [LoadOptions](https:/ /apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) *Objekt* im vorherigen Schritt erstellt;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf.
* Rufen Sie die Methode [GetResultString](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/getresultstring) auf, um eine Zeichenfolge mit dem Vergleichsergebnis zu erhalten.

Das folgende Code-Snippet zeigt, wie Werte aus Variablen geladen werden:
```csharp
using (Comparer compare = new Comparer("source text", new LoadOptions() { LoadText = true }))
{
    compare.Add("target text", new LoadOptions() { LoadText = true });
    compare.Compare();
    string result = compare.GetResultString();
}
```
---

Kann auch mit verschiedenen Arten der Dokumentenübergabe (sei es Dateipfad oder Stream) kombiniert werden, wie im folgenden Codebeispiel gezeigt:
```csharp
using (Stream sourceStream = File.OpenRead("./source.docx"))
{
    using (Comparer compare = new Comparer(sourceStream))
    {
        compare.Add("target text", new LoadOptions() { LoadText = true });
        compare.Compare();
        string result = compare.GetResultString();
        Console.WriteLine(result);
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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

