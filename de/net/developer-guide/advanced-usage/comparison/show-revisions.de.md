---
id: show-revisionen
url: comparison/net/show-revisions
title: "Revisionen anzeigen"
weight: 12
description: "In diesem Artikel wird erläutert, wie Sie die Anzeige von Revisionen im resultierenden Dokument in GroupDocs.Comparison für .NET anpassen."
keywords: "ShowRevisionen, Überarbeitung"
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
name: So zeigen Sie Revisionen in .NET an
      description: "Erfahren Sie Schritt für Schritt, wie Sie Revisionen in .NET anzeigen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie ShowRevisions mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet die Möglichkeit, die Anzeige von Revisionen im resultierenden Dokument zu vergleichen und anzupassen.

**Revision** – Änderungen, die beim Vergleichen von Dokumenten mit integrierten Word-Tools empfangen wurden.

Standardmäßig ist die Anzeige von Revisionen *aktiviert*. Im Folgenden finden Sie die Schritte zum Deaktivieren der Anzeige von Revisionen:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziiere das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) und setze [ShowRevisions](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/compareoptions/properties/showrevisions) Eigenschaft auf *false*;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt.

## Beispielcodeblock zum Deaktivieren der Anzeige von Revisionen

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {ShowRevisions = false};
    comparer.Compare(resultPath, options);
}
```

## Beispiel eines Ergebnisses mit aktivierter Revisionsanzeige

---

| Geschlossener Zustand | Offener Zustand |
|:---:|:---:|
| ![](/comparison/net/images/show-revisions-true-close-revisions.png) | ![](/comparison/net/images/show-revisions-true-open-revisions.png) |

## Beispiel eines Ergebnisses mit deaktivierter Revisionsanzeige

---

| Anzeigerevisionen deaktivieren |
|:---:|
| ![](/comparison/net/images/show-revisions-false.png) |

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
