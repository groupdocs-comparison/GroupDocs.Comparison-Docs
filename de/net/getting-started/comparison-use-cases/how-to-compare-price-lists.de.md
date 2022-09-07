---
id: wie man preislisten vergleicht
url: comparison/net/how-to-compare-price-lists
title: "So vergleichen Sie Preislisten"
weight: 5
description: "Dieser Artikel beschreibt, wie Sie Dateien mit der Microsoft Excel-Funktion und der GroupDocs.Comparison-API für .NET vergleichen. Sie lernen auch, wie Sie zwei oder mehr Tabellen vergleichen und den Unterschied in Dateien ermitteln"
keywords: "Excel-Dateien vergleichen, Tabellenkalkulation vergleichen, Excel-Dateien vergleichen"
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
name: So vergleichen Sie Preislisten in .NET
    description: "So vergleichen Sie Preislisten in .NET Schritt für Schritt"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldateien laden
text: Fügen Sie den Pfad zu den Zieldateien mit der Add-Methode hinzu.
- Name: Preislisten vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter ein.
---
Angenommen, Sie haben zwei Excel-Arbeitsmappen oder vielleicht zwei Versionen derselben Arbeitsmappe, die Sie vergleichen möchten. Oder vielleicht möchten Sie potenzielle Probleme finden, wie manuell eingegebene (statt berechnete) Summen oder fehlerhafte Formeln. Wenn Sie über Microsoft Office Professional Plus 2013 verfügen, können Sie mit Microsoft Spreadsheet Compare einen Bericht zu den gefundenen Unterschieden und Problemen erstellen.

{{< alert style="info" >}}Wichtig: Spreadsheet Compare ist nur mit Office Professional Plus 2013 oder Office 365 ProPlus verfügbar.{{< /alert >}}

Um zwei Excel-Arbeitsmappen mit Office Professional Plus 2013 zu vergleichen, sollten Sie:

* Klicken Sie auf **Home > Dateien vergleichen**. Das Dialogfeld „Dateien vergleichen“ wird angezeigt.
![](comparison/net/images/how-to-compare-price-lists.jpg)
* Klicken Sie auf das blaue Ordnersymbol neben dem Feld **Vergleichen**, um zum Speicherort der früheren Version Ihrer Arbeitsmappe zu navigieren.
      







![](comparison/net/images/how-to-compare-price-lists_1.jpg)
      







    



* Klicken Sie auf das grüne Ordnersymbol neben dem Feld **Nach**, um zum Speicherort der Arbeitsmappe zu navigieren, die Sie mit der früheren Version vergleichen möchten, und klicken Sie dann auf **OK**.
* Wählen Sie im linken Bereich die Optionen aus, die Sie in den Ergebnissen des Arbeitsmappenvergleichs sehen möchten, indem Sie die Optionen wie **Formeln**, **Makros** oder **Zellformat** aktivieren oder deaktivieren. Oder einfach **Alle auswählen**.
      







![](comparison/net/images/how-to-compare-price-lists_2.png)
* Klicken Sie auf **OK**, um den Vergleich durchzuführen.

## So vergleichen Sie Excel-Dateien mit GroupDocs.Comparison

Microsoft Office Professional Plus 2013 bietet Tabellenkalkulationsvergleiche, aber **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet eine Möglichkeit, Arbeitsblätter programmgesteuert zu vergleichen, und Sie können nicht nur zwei verschiedene Dateien vergleichen , sondern gleich mehrere. Angenommen, es gibt drei oder mehr Preislisten für einige Jahre (z. B.: "2018", "2019", "2020") im XLSX-Format oder anderen [unterstützten Dateiformaten] ({{< ref "comparison/net/ erste-schritte/unterstützte-dokumentformate.md" >}}). andere und Sie müssen deren Inhalt vergleichen. Hier ist ein Beispiel für den Vergleich von drei Preislisten mit der GroupDocs.Comparsion API. Normalerweise müssen Sie nur diesen Schritten folgen:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an. Wiederholen Sie diesen Schritt für jedes Zieldokument;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf.
      







    




| | Dateien |
| --- | --- |
| Preisliste für 2018 | ![](comparison/net/images/how-to-compare-price-lists_3.png) |
| Preisliste für 2019 | ![](comparison/net/images/how-to-compare-price-lists_4.png) |
| Preisliste für 2020 | ![](comparison/net/images/how-to-compare-price-lists_5.png) |

Hier ist der Code, der verwendet wird, um drei Preislisten zu vergleichen.

```csharp
string sourceDocumentPath = @"Source Price List.xlsx"; // NOTE: Put here actual path to source document
string targetOneDocumentPath = @"Target Price List 1.xlsx"; // NOTE: Put here actual path to target one document
string targetTwoDocumentPath = @"Target Price List 2.xlsx"; // NOTE: Put here actual path to target two document
string outputPath = @"Result Price List.xlsx"; // NOTE: Put here actual path to result document
             







using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetOneDocumentPath);
     comparer.Add(targetTwoDocumentPath);
     comparer.Compare(outputPath);
}
```

Als Ergebnis erhalten wir eine XSLX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> , die hinzugefügten in <font color="blue">**blau**</font> und die geänderten in <font color="green">**grün**</font> markiert sind.


| Ergebnis Preisliste |
| --- |
| ![](comparison/net/images/how-to-compare-price-lists_6.png) |

## Mehr Ressourcen
### Erweiterte Nutzungsthemen
Weitere Informationen zu Dokumentvergleichsfunktionen finden Sie im [Abschnitt zur erweiterten Verwendung]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

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

