---
id: Vergleich-von-Variablen-und-Dokument-Eigenschaften
url: comparison/net/compare-of-variables-and-document-properties
title: "Vergleich von Variablen und Dokumenteigenschaften"
weight: 11
description: "Dieser Artikel erklärt, wie Sie den Vergleich von Dokumenteigenschaften in GroupDocs.Comparison für .NET aktivieren."
keywords: "Variableneigenschaften, erstellte Eigenschaften, benutzerdefinierte Eigenschaften, Dokumenteigenschaften vergleichen, CompareVariableProperty, CompareDocumentProperty"
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
name: Wie man Variablen und Dokumenteigenschaften in .NET erstellt
      description: "Erfahren Sie Schritt für Schritt, wie Sie Variablen und Dokumenteigenschaften in .NET vergleichen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie CompareVariableProperty und CompareDocumentProperty mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht es Ihnen, verschiedene Eigenschaften eines WORD-Dokuments zu vergleichen, z. B. *Variable*, *Erstellt* und *Benutzerdefinierte* Eigenschaften.

Die folgenden Felder der Klasse CompareOptions werden verwendet, um Vergleichsfunktionen für Dokumenteigenschaften zu ermöglichen:

* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) - um den Vergleich von *variablen* Eigenschaften zu aktivieren;
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) - um den Vergleich von *erstellten* und *benutzerdefinierten* Eigenschaften zu aktivieren.

Im Folgenden sind die Schritte zum Aktivieren der Vergleichsdokumenteigenschaften aufgeführt:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) und legen Sie [CompareVariableProperty](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/compareoptions/properties/comparevariableproperty) auf *true* ([CompareDocumentProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) auf *true). * für *gebaute* und *benutzerdefinierte* Eigenschaften);
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt.

## Beispiel-Codeblock zum Aktivieren des Vergleichs von variablen, gebauten und benutzerdefinierten Eigenschaften

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions();
    options.CompareVariableProperty = true; // to activate the comparison of variable properties
    options.CompareDocumentProperty = true; // to activate the comparison of built and custom properties
     

    comparer.Compare(resultPath, options);
}
```

## Das Ergebnis des Vergleichs von Eigenschaften

---

Das Ergebnis des Immobilienvergleichs wird auf einer separaten Seite präsentiert - *Eigenschaftsübersichtsseite*.

![](comparison/net/images/properties-summary-page.png)

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
