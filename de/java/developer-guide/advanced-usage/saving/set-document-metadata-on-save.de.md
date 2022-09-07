---
id: set-document-metadata-on-save
url: comparison/java/set-document-metadata-on-save
title: "Dokumentmetadaten beim Speichern festlegen"
weight: 1
description: "Befolgen Sie diese Anleitung und erfahren Sie, wie Sie Dokumentmetadaten festlegen, wenn Sie das resultierende Dokument nach dem Dateivergleich in Ihren Java-Anwendungen speichern."
keywords: "Dokumentmetadaten speichern, Dokumente vergleichen, Dokumentvergleich, Dateidiff"
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
name: So legen Sie Dokumentmetadaten beim Speichern fest
        description: "Erfahren Sie, wie Sie Dokumentmetadaten beim Speichern festlegen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- Name: Dokumentspeicherobjekt einrichten
Text: Erstellen Sie ein Objekt der Klasse „SaveOptions“ und verwenden Sie seine Methode „setCloneMetadataType()“ mit dem Parameter „MetadataType.Source“ oder „MetadataType.Target“.
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und die Speicheroptionen als zweites Argument zu übergeben
---
Normalerweise können Dokumente einige Metadateninformationen wie Autor, Organisation usw. enthalten. [**GroupDocs.Comparison**](https://products.groupdocs.com/comparison) bietet die Möglichkeit, beim Speichern des resultierenden Dokuments eine Metadatenquelle auszuwählen.

Mögliche Metadatenquellen sind:
* Metadaten der **Quelldatei**;
* Metadaten der **Zieldatei**;
* **Benutzerdefinierte** Metadaten.
    




Im Folgenden sind die Schritte zum Festlegen der resultierenden Dateimetadaten aufgeführt:
* Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldateipfad oder -stream instanziieren;

* Rufen Sie die Methode [add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Zieldateipfad oder -stream an.

* Objekt [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) instanziieren und Eigenschaft [CloneMetadataType](https://apireference.groupdocs.com/) verwenden Comparison/java/com.groupdocs.comparison.options.save/SaveOptions#setCloneMetadataType(int)), um den gewünschten [MetadataType] festzulegen (https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options. enums/MetadataType)-Variante;

* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) auf und Übergeben Sie das Objekt [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) an die Methode;
    




Der folgende Code zeigt, wie Metadaten der resultierenden Datei festgelegt werden.

## Legen Sie Metadaten aus der Quelldatei fest

<script src="https://gist.github.com/groupdocs-comparison-gists/c9dfcc0917a4d9124c134e77056669d4.js"></script>

## Legen Sie Metadaten aus der Zieldatei fest

<script src="https://gist.github.com/groupdocs-comparison-gists/0a632a692a09ab484ac19dba075241eb.js"></script>

## Legen Sie benutzerdefinierte Metadaten fest

<script src="https://gist.github.com/groupdocs-comparison-gists/abec6b3417cc08a6b51d83a102379ecd.js"></script>

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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-Verwendung **[GroupDocs-Vergleichs-App](https://products.groupdocs.app/) vergleichen. Vergleich)**.

