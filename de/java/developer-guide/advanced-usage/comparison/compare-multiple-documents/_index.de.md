---
id: Vergleiche mehrere Dokumente
url: comparison/java/compare-multiple-documents
title: "Vergleichen Sie mehrere Dokumente"
weight: 3
description: ""
Schlüsselwörter:
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
name: So vergleichen Sie Dokumente
        description: "Erfahren Sie, wie Sie Dokumente vergleichen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- name: Erstes Zieldokument hinzufügen
text: Verwenden Sie die 'Add'-Methode, um das erste Zieldokument zum Vergleich mit dem Quelldokument hinzuzufügen
- name: Zweites Zieldokument hinzufügen
text: Verwenden Sie die 'add'-Methode, um ein zweites Zieldokument zum Vergleich mit dem Quelldokument hinzuzufügen
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
{{< alert style="info" >}}HINWEIS: Diese Funktion ist nur für Textverarbeitungsdokumente, PowerPoint-Präsentationen, E-Mail- und Textdokumentformate verfügbar.{{< /alert >}}

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht den Vergleich von mehr als 2 Dokumenten.

Im Folgenden finden Sie die Schritte zum Vergleichen mehrerer Dokumente.

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an. Wiederholen Sie diesen Schritt für jedes Zieldokument.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf.

Das folgende Codebeispiel zeigt, wie mehrere Dokumente mit bestimmten Optionen verglichen werden.

## Vergleichen Sie mehrere Dokumente von der lokalen Festplatte

<script src="https://gist.github.com/groupdocs-comparison-gists/4234d069bdad865fe0d4ba00f199bbf4.js"></script>

## Vergleichen Sie mehrere Dokumente aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/6b447c4faa7b44ba103c96e8f2d8ab8d.js"></script>

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

