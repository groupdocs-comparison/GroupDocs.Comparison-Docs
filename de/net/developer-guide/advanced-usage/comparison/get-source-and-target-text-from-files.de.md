---
id: hole-quell-und-zieltext-aus-dateien
url: comparison/net/get-source-and-target-text-from-files
title: "Holen Sie sich Quell- und Zieltext aus Dateien"
weight: 7
description: "In diesem Artikel wird erläutert, wie Sie mit GroupDocs.Comparison für .NET Quell- und Zieltexte bestimmter Änderungen erhalten."
keywords: "Ziel-txt abrufen, Quell-txt abrufen, Dokumente unterscheiden, Dokumente vergleichen, Dateien vergleichen"
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
name: So erhalten Sie Quell- und Zieltext in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie Quell- und Zieltext in .NET erhalten"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor nimmt den Pfad der Quelldatei oder den Stream-Parameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei oder zum Tagret-Dateistream mit der Add-Methode hinzu.
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie ExtendedSummaryPage mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter ein.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
- name: Ausgabe des Änderungstextes
text: Anzeige des Quell- oder Zieltextes der Änderungen mit Änderungsinfo-Array-Element.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht das Abrufen von Quell- und Zieltexten bestimmter Änderungen in der Ergebnisdatei.

Um eine Liste der geänderten Ausgangs- und Zieltexte zu erhalten, gehen Sie wie folgt vor:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare) auf;
* Rufen Sie die Methode [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges) auf.

Das folgende Codebeispiel zeigt, wie Sie bestimmte Texte aus einer Datei abrufen.

## Holen Sie sich den Zieltext von der lokalen Festplatte

```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
    }
}
```

## Holen Sie sich den Zieltext aus dem Stream

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
    comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
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
