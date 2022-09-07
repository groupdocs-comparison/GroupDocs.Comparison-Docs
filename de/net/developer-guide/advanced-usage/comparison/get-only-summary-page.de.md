---
id: get-only-summary-page
url: comparison/net/get-only-summary-page
title: "Holen Sie sich nur die Zusammenfassungsseite"
weight: 9
description: "In diesem Artikel wird erläutert, wie Sie beim Vergleichen von Dokumenten mit GroupDocs.Comparison für .NET nur die Zusammenfassungsseite erhalten."
keywords: "Dokumente vergleichen, Übersichtsseite, SummaryPage, ShowOnlySummaryPage"
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
name: So erhalten Sie nur die Zusammenfassungsseite in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie in .NET nur die Zusammenfassungsseite erhalten"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie ShowOnlySummaryPage mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter und den Vergleichsoptionsparameter ein.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht es Ihnen, Änderungen zwischen Quell- und Zieldateien zu erkennen und nur die Zusammenfassungsseite bereitzustellen.

Im Folgenden sind die Schritte aufgeführt, um nur die Zusammenfassungsseite zu erhalten:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) und legen Sie [ShowOnlySummaryPage](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/compareoptions/properties/showonlysummarypage) Eigenschaft auf *true*;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt.

Das folgende Codebeispiel zeigt, wie nur die Zusammenfassungsseite abgerufen wird.

## Beispiel-Codeblock, um nur die Zusammenfassungsseite zu erhalten

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
	comparer.Add(targetPath);
	CompareOptions options = new CompareOptions() {ShowOnlySummaryPage = true};
    comparer.Compare(resultPath, options);
}
```

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
