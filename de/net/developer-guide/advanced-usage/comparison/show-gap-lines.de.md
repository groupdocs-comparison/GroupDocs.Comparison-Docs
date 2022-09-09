---
id: show-gap-lines
url: comparison/net/show-gap-lines
title: "Lückenlinien anstelle von Änderungen anzeigen"
weight: 13
description: "In diesem Artikel wird erläutert, wie Sie die Anzeige des resultierenden Dokuments so anpassen, dass der geänderte Inhalt in GroupDocs.Comparison für .NET durch leere Zeilen ersetzt wird."
keywords: "LeaveGaps, Lückenlinien, Leerzeilen"
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
name: So zeigen Sie Lücken anstelle von Änderungen in .NET an
      description: "So zeigen Sie Lücken anstelle von Änderungen in .NET Schritt für Schritt an"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie ShowInsertedContent und ShowDeletedContent mit dem Wert false und LeaveGaps mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht die Anpassung der Formation des resultierenden Dokuments.

Standardmäßig werden Änderungen aus den beiden Eingabedateien (*Quell*- und *Ziel*-Dateien) zum resultierenden Dokument hinzugefügt und visuell hervorgehoben. Dies kann mit [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) und [ShowDeletedContent](https://apireference.groupdocs.com /comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) Eigenschaften.

Sie können auch die Eigenschaft [LeaveGaps](https://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) verwenden, um die Anzeige des resultierenden Dokuments anzupassen , wodurch geänderte Inhalte durch Leerzeilen ersetzt werden können. Um diese Eigenschaft zu verwenden, müssen Sie auch die folgenden Eigenschaften aktivieren: [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) und [ShowDeletedContent](https ://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent).

Hier sind die einfachen Schritte, um das obige Ergebnis zu erhalten:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziieren Sie [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) Objektsätze [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs. Comparison.options/compareoptions/properties/showinsertedcontent) und/oder [ShowDeletedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) und unbedingt [LeaveGaps](https ://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) Eigenschaften;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt.

## Beispielcodeblock, um das gewünschte Ergebnis zu erhalten

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
 
    CompareOptions options = new CompareOptions();
    options.ShowInsertedContent = false;
    options.ShowDeletedContent = false;
    options.LeaveGaps = true;
      

    comparer.Compare(resultPath, options);
}
```

## Beispielcodeausführung

---

| Standardergebnis | Ergebnis ohne LeaveGaps-Eigenschaft |
|:---:|:---:|
| ![](/comparison/net/images/show-gap-lines-default-result.png) | ![](/comparison/net/images/show-gap-lines-without-leavegaps.png) |

| Standardergebnis | Ergebnis mit LeaveGaps-Eigenschaft |
|:---:|:---:|
| ![](/comparison/net/images/show-gap-lines-default-result.png) | ![](/comparison/net/images/show-gap-lines-with-leavegaps.png) |

## Mehr Ressourcen

---

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
