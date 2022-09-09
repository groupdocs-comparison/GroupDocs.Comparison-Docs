---
id: wie-rechnungen-vergleichen
url: comparison/net/how-to-compare-invoices
title: "So vergleichen Sie Rechnungen"
weight: 3
description: "Sie erfahren, wie Sie GroupDocs.Comparison für .NET in Ihrer Produktion beim Rechnungsvergleich einsetzen können. Sehen Sie sich die Dateivergleichsempfindlichkeitskonfiguration und andere Anwendungsfälle der GroupDocs.Comparison-API an"
keywords: "Vergleichen Sie docx-Dateien, Rechnungsvergleich, wie man Rechnungen vergleicht"
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
name: So vergleichen Sie Rechnungen in .NET
      description: "So vergleichen Sie Rechnungen in .NET Schritt für Schritt"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie die erforderlichen Einstellungen an.
- Name: Rechnungen vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
Manchmal müssen Sie beim Vergleichen von Dateien maximale Genauigkeit erreichen. Angenommen, Sie haben zwei Versionen eines wichtigen Dokuments und müssen die Unterschiede Zeichen für Zeichen oder den umgekehrten Fall finden, Sie müssen die Dokumente vergleichen, aber die Details sind für Sie nicht wichtig, und Sie benötigen nur Wörter, die Änderungen aufweisen. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet die Möglichkeit, Dokumente mit Empfindlichkeitseinstellungen zu vergleichen

Beispielsweise liegen zwei Rechnungen im DOCX-Format vor, deren Inhalt Sie mit maximaler Detailgenauigkeit und Vergleichsempfindlichkeit vergleichen müssen.

| | Dateien |
| --- | --- |
|Quellrechnung|![](/comparison/net/images/how-to-compare-invoices.png) | |Zielrechnung |![](/comparison/net/images/how-to-compare-invoices_1.png)|

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) bietet die Möglichkeit, zwei Dateien im DOCX-Format (oder jedem anderen [unterstützten Dateiformat]) zu vergleichen ({{< ref "comparison /net/getting-started/supported-document-formats.md" >}}) mit Anpassung der Detaillierungsstufe und [Vergleichsempfindlichkeit.]({{< ref "comparison/net/developer-guide/advanced-usage/comparison/ Anpassungsvergleich-Empfindlichkeit.md" >}})

Im Folgenden finden Sie die Schritte zum Vergleichen zweier DOCX-Dateien mit bestimmten Einstellungen für die Detaillierungsstufe und die [Vergleichsempfindlichkeit.]({{< ref "comparison/net/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >>}})

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) mit dem gewünschten [SensitivityOfComparison](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/compareoptions/properties/sensitivityofcomparison) und [DetalisationLevel](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/detalisationlevel) Wert;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/compareoptions) Objekt zu Methode.

Die folgenden Codebeispiele zeigen, wie zwei DOCX-Dateien verglichen werden.

```csharp
string sourceDocumentPath = @"Invoice_source.docx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"Invoice_target.docx"; // NOTE: Put here actual path to target document
string outputPath = @"Invoice_result.docx"; // NOTE: Put here actual path to result document       

           

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions options = new CompareOptions
    {
        SensitivityOfComparison = 100,
        DetalisationLevel = DetalisationLevel.High
    };
    comparer.Compare(outputPath, options);
}
```

Als Ergebnis erhalten wir eine DOCX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> markiert sind, die hinzugefügten – in <font color="blue">**blau**</font> und die geänderten – in <font color="green">**grün**</font>

| Ergebnisrechnung |
| --- |
| ![](/comparison/net/images/how-to-compare-invoices_2.png)|

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

