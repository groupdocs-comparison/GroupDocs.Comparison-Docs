---
id: generate-document-pages-preview
url: comparison/java/generate-document-pages-preview
title: "Dokumentseitenvorschau generieren"
weight: 4
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie mithilfe der GroupDocs.Comparison for Java-API Miniaturansichten von PDF-, Word-, Excel- und PowerPoint-Dokumenten generieren und Dokumentseiten in der Vorschau anzeigen."
keywords: "Dokumentvorschau, Dokumentseitenvorschau, Dokumentseiten als PNG, Dokumentseiten als JPG"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Dokumentenvergleichstool
        description: "Das Produkt ermöglicht den Vergleich von PDF-, Word-, Excel-, PowerPoint-, AutoCad-, Bild-, Code- und vielen weiteren Dateiformaten. Die Vergleichs-API unterstützt auch das Akzeptieren oder Ablehnen von Änderungen, das Extrahieren von Dokumentinformationen und das Erstellen von Vergleichsberichten"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So erstellen Sie eine Vorschau der Dokumentseiten
        description: "Erfahren Sie, wie Sie eine Vorschau von Dokumentseiten erstellen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- name: Objekt „CreatePageStream“ erstellen
text: Erstellen Sie eine Klasse, die die Klasse 'CreatePageStream' erweitert, und instanziieren Sie sie. Die Methode „public OutputStream invoke(int pageNumber)“ wird aufgerufen, um einen Ausgabestrom für jede Dokumentseite bereitzustellen, sodass Vorschaubilder in diesen Strömen gespeichert werden
- Name: 'PreviewOptions' erstellen
text: Erstellen Sie eine Instanz der Klasse „PreviewOptions“ und übergeben Sie das Objekt zum Erstellen eines Seitenstroms als Argument
- name: Vorschauoptionen konfigurieren
Text: Aktualisieren Sie das Bildvorschauformat mit einer Hilfe-Op-Methode „setPreviewFormat(PreviewFormats.PNG)“ und Seitenzahlen mit der Methode „setPageNumbers(new int[]{1, 2})“.
- name: Quelldokument abrufen
text: Verwenden Sie die 'getSource()'-Methode, um das Quelldokumentobjekt abzurufen
- name: Vorschaubilder erzeugen
text: Ruft die 'generatePreview'-Methode auf und übergibt Vorschauoptionen als Argument
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht das Generieren von Seitenvorschauen für Quell-, Ziel- und Ergebnisdokument(e) mit [generatePreview](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) Methode eines [Dokuments](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Document) Klasse.

Die Klasse [PreviewOptions] (https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) wird verwendet, um den Vorschaugenerierungsprozess zu verwalten – geben Sie die gewünschten Seitenzahlen, das Bildformat usw. an.

Im Folgenden sind die Schritte zum Generieren einer Dokumentvorschau mit der GroupDocs.Comparison-API aufgeführt:

* Erstellen Sie eine neue Instanz der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) und übergeben Sie den Pfad des Quelldokuments als Konstruktorparameter.
* Zieldokument(e) mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) zum Vergleich hinzufügen.
* [Quelle](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) und [Ziele](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Comparer#getTargets())-Eigenschaften des [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)-Objekts ermöglicht den Zugriff auf Quell- und Zieldokumente und stellt bereit [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))-Methode.
* Instanziieren Sie das Objekt [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) mit:
* Callback für jede Pagestream-Erstellung (siehe Event-Handler CreatePageStream);
* Bildvorschauformat - PNG / JPG / BMP,
* zu verarbeitende Seitenzahlen;
* benutzerdefinierte Größe von Vorschaubildern (falls erforderlich).

{{< alert style="info" >}}
Streams, die vom [createPageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_CreatePageStream)-Callback erstellt wurden, werden nach der Generierung des Vorschaubilds automatisch verworfen. Wenn Sie eine benutzerdefinierte Bildvorschau-Stream-Entsorgung implementieren müssen, müssen Sie das zusätzliche Argument [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_ReleasePageStream) übergeben, um Ressourcen zu bereinigen .
{{< /Alarm >}}

* Rufen Sie die Methode [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) von [Source](https:/ /apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) und [Targets](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer# getTargets()) Dokument und übergeben Sie [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) daran.
    




Hier die Haupteigenschaften der Klasse [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions):
* [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setCreatePageStream(com.groupdocs.comparison.common.delegates.Delegates.CreatePageStream)) – Rückruf, der definiert Methode zum Erstellen eines Ausgabeseiten-Vorschaustroms;

* [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setReleasePageStream(com.groupdocs.comparison.common.delegates.Delegates.ReleasePageStream)) – Rückruf, der definiert Methode zum Entfernen des Vorschaustreams der Ausgabeseite. Dies kann verwendet werden, wenn eine erweiterte Steuerung für die Ressourcenverwaltung erforderlich ist.

* [Width](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setWidth(int)) – Vorschaubildbreite. Diese Eigenschaft wird verwendet, wenn die Breite des Ausgabebilds angepasst werden muss;

* [Höhe](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setHeight(int)) – Höhe des Vorschaubilds. Diese Eigenschaft wird verwendet, wenn die Ausgabebildhöhe angepasst werden muss;

* PageNumbers - Seitenzahlen, die in der Vorschau angezeigt werden;

* [PreviewFormat](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setPreviewFormat(int)) – Ruft das Vorschaubildformat ab oder legt es fest, das die Möglichkeit bietet, zwischen der Bildqualität zu wählen und Größe. Das Format **[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP)** sollte für die beste Bildqualität verwendet werden. Das Format **[JPG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#JPEG)** ist bei strengen Anforderungen an die Bildgröße nützlich - it erzeugt die kleinste Bildgröße (und schneller ladende Bildvorschauen), aber mit geringerer Qualität als **[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP )**. Standardmäßig ist das Format **[PNG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#PNG)** ausgewählt – was eine goldene Mitte zwischen der Bildqualität darstellt und Größe.
    




Das folgende Code-Snippet zeigt, wie Dokumentvorschauen generiert werden.

## Rufen Sie eine Seitenvorschau für das Quelldokument ab

<script src="https://gist.github.com/groupdocs-comparison-gists/74af4dca2cd81b3d14b5136fdd291f26.js"></script>

## Rufen Sie eine Seitenvorschau für das Zieldokument ab

<script src="https://gist.github.com/groupdocs-comparison-gists/e34414e2945b837f57160900fa1e925b.js"></script>

## Erhalten Sie eine Seitenvorschau für das resultierende Dokument

<script src="https://gist.github.com/groupdocs-comparison-gists/5da1f1afc204abe5d0212d68f77e6701.js"></script>

## Bestimmte Größe für Vorschaubilder festlegen

In manchen Fällen kann es nützlich sein, während der Erstellung der Vorschau der Dokumentseiten eine bestimmte Bildgröße festzulegen. Zum Beispiel, um Dokumentseiten-Thumbnails zu generieren – kleine Bilder, die ein komprimiertes Vorschaubild des Originalbilds sind, das als Platzhalter verwendet wird. Der Hauptvorteil solcher Miniaturbilder ist ihre reduzierte Dateigröße im Vergleich zum ursprünglichen Seitenbild.

Das folgende Code-Snippet zeigt, wie Sie eine bestimmte Größe für Vorschaubilder festlegen.

<script src="https://gist.github.com/groupdocs-comparison-gists/127ca350ae9fb6449f7fd2cdd1be32e0.js"></script>

{{< alert style="info" >}}NOTE: This feature is not supported for WordProcessing documents yet.{{< /Alarm >}}

## Erhalten Sie Seitenvorschauen mit manueller Ressourcenbereinigung

Standardmäßig wird nach dem Generieren und Rendern des Dokumentseitenvorschau-Bildstroms sofort verworfen. Es besteht jedoch die Möglichkeit, eine benutzerdefinierte Methode zur Handhabung dieses Vorgangs zu implementieren.

<script src="https://gist.github.com/groupdocs-comparison-gists/36201a68f984bd2840ccf577a823eb0f.js"></script>

## Mehr Ressourcen

### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:

* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Dokumentenvergleich für ein modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)


* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)


* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)


* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    




### Kostenlose Online-App
Zusammen mit einer voll funktionsfähigen Java-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
