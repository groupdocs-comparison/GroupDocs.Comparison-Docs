---
id: wie-man-powerpoint-präsentationen-vergleicht
url: comparison/net/how-to-compare-powerpoint-presentations
title: "So vergleichen Sie PowerPoint-Präsentationen"
weight: 4
description: "Der Artikel beschreibt ein mögliches Beispiel für die Verwendung des GroupDocs.Comparison für .NET in Ihrer Arbeitspraxis und die Möglichkeit eines Softwareprodukts zum Auffinden von Stilunterschieden innerhalb von PowerPoint-Präsentationen"
keywords: "Präsentation vergleichen, Stiländerungen vergleichen, PPTX vergleichen, So vergleichen Sie PowerPoint-Dateien"
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
name: So vergleichen Sie PowerPoint-Präsentationen in .NET
    description: "So vergleichen Sie PowerPoint-Präsentationen in .NET Schritt für Schritt"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie die erforderlichen Einstellungen an.
- Name: Präsentationen vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
Möglicherweise müssen Sie zwei Versionen einer PowerPoint-Präsentation vergleichen, um die Unterschiede zwischen ihnen zu sehen (z. B. wenn ein Kollege sie direkt bearbeitet hat, ohne die Änderungen zu bemerken). Und das geht am schnellsten mit der integrierten Vergleichsfunktion von PowerPoint. Um dies zu verwenden:

* Öffnen Sie die Originalversion Ihrer Präsentation
* Gehen Sie zu **Bewertung** > **Vergleichen**
* Klicken Sie auf **Vergleichen**, um ein Browserfenster zu öffnen
* Wählen Sie die bearbeitete Version der Präsentation aus und klicken Sie auf **Zusammenführen**

Sie gelangen dann in den Überprüfungsmodus. Dadurch wird das Überprüfungsfenster geöffnet, das eine Liste aller Bearbeitungen in der Präsentation auf der rechten Seite des Bildschirms anzeigt.

![](/comparison/net/images/how-to-compare-powerpoint-presentations.png)

## So vergleichen Sie zwei Präsentationen mit GroupDocs.Comparison

Eine solche Funktionalität, die von Drittanbieterprogrammen bereitgestellt wird, reicht eindeutig nicht aus. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet viele Funktionen zum Vergleichen einer Vielzahl von [unterstützten Dateiformaten]({{< ref "comparison/net/getting- started/supported-document-formats.md" >}}), einschließlich PowerPoint-Präsentationsformat. Machen wir ein Beispiel: Sie haben zu unterschiedlichen Zeiten eine Präsentation gehalten, aber die Elemente auf den Folien sind nicht so angeordnet, wie Sie es ursprünglich getan haben. Um herauszufinden, wo sich die Folien unterscheiden, können Sie zwei Dateien im PPTX-Format mit der Funktionalität **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** zusammen mit einer integrierten Option vergleichen, die hilft, Änderungen in Stilen zu finden.

| | Präsentationen |
| --- | --- |
|Original | ![](/comparison/net/images/how-to-compare-powerpoint-presentations_1.png)|
|Geändert | ![](/comparison/net/images/how-to-compare-powerpoint-presentations_2.png)|

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) bietet die Möglichkeit, zwei Dateien im PPTX-Format (oder anderen [unterstützten Dateiformaten]) zu vergleichen ({{< ref "comparison /net/getting-started/supported-document-formats.md" >}}))

Im Folgenden sind die Schritte zum Vergleichen von zwei PPTX-Dateien aufgeführt.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) mit den gewünschten Parametern;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) Objekt zu Methode;

Die folgenden Codebeispiele zeigen, wie zwei PPTX-Dateien verglichen werden.

```csharp
string sourceDocumentPath = @"source_presentation.pptx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"target_presentation.pptx"; // NOTE: Put here actual path to target document
string outputPath = @"result_presentation.docx"; // NOTE: Put here actual path to result document       

            

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(outputPath, compareOptions);
}
```

Als Ergebnis erhalten wir eine PPTX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> markiert sind, die hinzugefügten – in <font color="blue">**blau**</font> und die geänderten – in <font color="green">**grün**</font>

| Ergebnisfolie |
| --- |
| ![](/comparison/net/images/how-to-compare-powerpoint-presentations_3.png))

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

