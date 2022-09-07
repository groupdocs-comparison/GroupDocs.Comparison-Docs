---
id: generate-document-pages-preview
url: comparison/net/generate-document-pages-preview
title: "Dokumentseitenvorschau generieren"
weight: 4
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie mit GroupDocs.Comparison for .NET API Miniaturansichten von PDF-, Word-, Excel- und PowerPoint-Dokumenten generieren und Dokumentseiten in der Vorschau anzeigen."
keywords: "Dokumentvorschau, Dokumentseitenvorschau, Dokumentseiten als PNG, Dokumentseiten als JPG"
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
name: So erstellen Sie eine Vorschau von Dokumentseiten in .NET
    description: "Erfahren Sie Schritt für Schritt, wie Sie eine Vorschau von Dokumentseiten in .NET generieren"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Dateien vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts ohne Parameter auf.
- Name: Erstellen Sie ein Objekt der Einstellungen
Text: Erstellen Sie ein Objekt der PreviewOptions-Klasse und initialisieren Sie es mit den erforderlichen Parametern.
- name: Vorschau für Quell- oder Zieldokument erzeugen
text: Rufen Sie die GeneratePreview-Methode des erforderlichen Dokuments des Comparer-Objekts auf.
- name: Vorschau für resultierendes Dokument erzeugen
text: Erstellen Sie ein Objekt der Document-Klasse. Der Konstruktor übernimmt den Stream-Parameter der Ergebnisdatei. Rufen Sie die GeneratePreview-Methode mit dem PreviewOptions-Parameter auf.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht das Generieren von Seitenvorschauen für Quell-, Ziel- und Ergebnisdokument(e) mit [GeneratePreview](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview)-Methode einer [Document](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/document)-Klasse.

Die Klasse [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) wird verwendet, um den Vorschaugenerierungsprozess zu verwalten – geben Sie die gewünschten Seitenzahlen, das Bildformat usw. an.

Im Folgenden sind die Schritte zum Generieren einer Dokumentvorschau mit der GroupDocs.Comparison-API aufgeführt:
* Erstellen Sie eine neue Instanz der Klasse [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) und übergeben Sie den Pfad des Quelldokuments als Konstruktorparameter;
* Zieldokument(e) mit der Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) zum Vergleich hinzufügen;
* [Quelle](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/source) und [Ziele](https://apireference.groupdocs.com/net/comparison/groupdocs. Comparison/comparer/properties/targets)-Eigenschaften des [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer)-Objekts ermöglicht den Zugriff auf Quell- und Zieldokumente und stellt [GeneratePreview](https: //apireference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview)-Methode;
* Instanziieren Sie das Objekt [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) mit:
* Delegate für jede Pagestream-Erstellung (siehe Event-Handler CreatePageStream);
* Bildvorschauformat - PNG / JPG / BMP;
* zu verarbeitende Seitenzahlen;
* benutzerdefinierte Größe von Vorschaubildern (falls erforderlich).
{{< alert style="info" >}}Stream, der vom [CreatePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream)-Delegat erstellt wurde, wird sein einmalig nach Generierung des Vorschaubildes automatisch entsorgt. Wenn Sie eine benutzerdefinierte Bildvorschau-Stream-Entsorgung implementieren müssen, müssen Sie das zusätzliche Argument [ReleasePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) übergeben, um Ressourcen zu bereinigen .{{< /alert >}}
* Aufruf der Methode [GeneratePreview](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) von [Source](https://apireference.groupdocs.com/net/comparison/ groupdocs.comparison/comparer/properties/source) und [Targets](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/targets)dokumentieren und übergeben Sie [PreviewOptions](https:// apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) hinzufügen.

Hier die Haupteigenschaften der Klasse [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions):
* [CreatePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream) – Delegierter, der die Methode zum Erstellen des Vorschaustreams der Ausgabeseite definiert;
* [ReleasePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) – Delegate, der die Methode zum Entfernen des Vorschaustreams der Ausgabeseite definiert. Dies kann verwendet werden, wenn eine erweiterte Steuerung für die Ressourcenverwaltung erforderlich ist.
* [Width](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/width) – Breite des Vorschaubilds. Diese Eigenschaft wird verwendet, wenn die Breite des Ausgabebilds angepasst werden muss;
* [Höhe](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/height) – Vorschaubildhöhe. Diese Eigenschaft wird verwendet, wenn die Ausgabebildhöhe angepasst werden muss;
* [PageNumbers](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/pagenumbers) – Seitenzahlen, die in der Vorschau angezeigt werden;
* [PreviewFormat](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/previewformat) – Ruft das Vorschaubildformat ab oder legt es fest, das die Möglichkeit bietet, zwischen Bildqualität und -größe zu wählen. Für die beste Bildqualität sollte das **BMP**-Format verwendet werden. Das **JPG**-Format ist bei strengen Anforderungen an die Bildgröße nützlich - es erzeugt die kleinste Bildgröße (und schneller ladende Bildvorschauen), aber mit geringerer Qualität als **BMP**. Standardmäßig ist das **PNG**-Format ausgewählt – ein goldener Mittelweg zwischen Bildqualität und Größe.

Das folgende Code-Snippet zeigt, wie Dokumentvorschauen generiert werden.

## Rufen Sie eine Seitenvorschau für das Quelldokument ab

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Source.GeneratePreview(previewOptions);
}
```

## Rufen Sie eine Seitenvorschau für das Zieldokument ab

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Targets[0].GeneratePreview(previewOptions);
}
```

## Erhalten Sie eine Seitenvorschau für das resultierende Dokument

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    document.GeneratePreview(previewOptions);
}
```

## Bestimmte Größe für Vorschaubilder festlegen

In manchen Fällen kann es nützlich sein, während der Erstellung der Vorschau der Dokumentseiten eine bestimmte Bildgröße festzulegen. Zum Beispiel, um Dokumentseiten-Thumbnails zu generieren – kleine Bilder, die ein komprimiertes Vorschaubild des Originalbilds sind, das als Platzhalter verwendet wird. Der Hauptvorteil solcher Miniaturbilder ist ihre reduzierte Dateigröße im Vergleich zum ursprünglichen Seitenbild.

Das folgende Code-Snippet zeigt, wie Sie eine bestimmte Größe für Vorschaubilder festlegen.

```csharp
using (Comparer comparer = new Comparer("source.pptx"))
{
	comparer.Add("target.pptx");
    comparer.Compare("result.pptx");
    Document document = new Document(File.OpenRead("result.pptx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    previewOptions.Height = 1000;
    previewOptions.Width = 1000;
    document.GeneratePreview(previewOptions);
}
```

{{< alert style="info" >}}HINWEIS: Diese Funktion wird noch nicht für WordProcessing-Dokumente unterstützt.{{< /alert >}}

## Erhalten Sie Seitenvorschauen mit manueller Ressourcenbereinigung

Standardmäßig wird nach dem Generieren und Rendern des Dokumentseitenvorschau-Bildstroms sofort verworfen. Es besteht jedoch die Möglichkeit, eine benutzerdefinierte Methode zur Handhabung dieses Vorgangs zu implementieren.

```csharp
// Method should match with ReleasePageStream delegate signature
private void UserReleaseStreamMethod(int pageNumber, Stream stream)
{
	Console.WriteLine($"Releasing memory for page: {pageNumber}");
    stream.Close();
}
 
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    // here we set delegate target method
    previewOptions.ReleasePageStream = UserReleaseStreamMethod;
    document.GeneratePreview(previewOptions);
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

