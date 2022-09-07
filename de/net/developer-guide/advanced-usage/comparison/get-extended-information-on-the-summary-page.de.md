---
id: erhalten-erweiterte-informationen-auf-der-zusammenfassungsseite
url: comparison/net/get-extended-information-on-the-summary-page
title: "Erhalten Sie erweiterte Informationen auf der Übersichtsseite"
weight: 10
description: "In diesem Artikel wird erläutert, wie Sie mit GroupDocs.Comparison für .NET erweiterte Informationen zum Vergleich von Dokumenten auf der Zusammenfassungsseite erhalten."
keywords: "Dokumente vergleichen, Übersichtsseite, SummaryPage, erweiterte Informationen, ExtendedSummaryPage"
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
name: So erhalten Sie erweiterte Informationen auf der Zusammenfassungsseite in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie erweiterte Informationen auf der Zusammenfassungsseite in .NET erhalten"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie ExtendedSummaryPage mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter und den Vergleichsoptionsparameter ein.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht es Ihnen, Änderungen zwischen Quell- und Zieldateien zu erkennen und Änderungen auf der separaten Seite anzuzeigen – [SummaryPage](https:// apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/generatesummarypage).
Außerdem können Sie erweiterte Informationen zum Vergleich von Dokumenten erhalten, die auf der [SummaryPage](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/generatesummarypage) angezeigt werden.

Im Folgenden sind die Schritte aufgeführt, um erweiterte Informationen zu erhalten:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) und legen Sie [ExtendedSummaryPage](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/compareoptions/properties/extendedsummarypage) Eigenschaft auf *true*;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt.

Das folgende Codebeispiel zeigt, wie Sie erweiterte Informationen zum Vergleich von Dokumenten erhalten.

## Beispiel-Codeblock zum Abrufen erweiterter Informationen

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
	comparer.Add(targetPath);
	CompareOptions options = new CompareOptions() {ExtendedSummaryPage = true};
    comparer.Compare(resultPath, options);
}
```

## Beispiel für die Anzeige der Übersichtsseite mit erweiterten Informationen

---

![](comparison/net/images/how-to-get-extended-information-image.png)

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
