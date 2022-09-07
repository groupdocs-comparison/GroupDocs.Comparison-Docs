---
id: vergleiche-mehrere-dokumente-mit-spezifischen-vergleichseinstellungen
url: comparison/java/compare-multiple-documents-with-specific-compare-settings
title: "Vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen"
weight: 2
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie mehrere Dokumente mit unterschiedlichen Anpassungen vergleichen – Stilerkennung, Änderungsvergleichs-Detalisierungsebene und mehr."
keywords: "Vergleichen Sie mehrere Dokumente, Erkennung von Stiländerungen, Mehrfachvergleich von Dateien"
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
name: So vergleichen Sie mehrere Dokumente mit bestimmten Einstellungen
        description: "Erfahren Sie, wie Sie mehrere Dokumente mit bestimmten Einstellungen vergleichen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- name: Erstes Zieldokument hinzufügen
text: Verwenden Sie die 'add'-Methode, um das erste Zieldokument hinzuzufügen
- name: Zweites Zieldokument hinzufügen
text: Verwenden Sie die 'add'-Methode, um ein zweites Zieldokument hinzuzufügen
- name: Objekt der Klasse „CompareOptions“ erstellen
Text: Erstellen Sie das Objekt „CompareOptions“ und ändern Sie seine Eigenschaften, um den Vergleichsprozess zu konfigurieren
- Name: Vergleichsprozess mit bestimmten Einstellungen ausführen
Text: Rufen Sie die Methode „compare“ auf, die das Objekt der Klasse „CompareOptions“ übergibt, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
{{< alert style="info" >}}HINWEIS: Diese Funktion ist nur für Microsoft Word-Dokumente, Microsoft PowerPoint und Open Document-Präsentationen verfügbar.{{< /alert >}}

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** ermöglicht den Vergleich von mehr als 2 Dokumenten und die Angabe einiger spezifischer Vergleichsoptionen wie Styling für erkannte Änderungen, Vergleichsdetailebene usw.

Im Folgenden finden Sie die Schritte zum Vergleichen mehrerer Dokumente mit bestimmten Optionen.

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an. Wiederholen Sie diesen Schritt für jedes Zieldokument.
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und geben Sie die gewünschten Optionen an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) auf und Übergeben Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) aus dem vorherigen Schritt.

Das folgende Codebeispiel zeigt, wie mehrere Dokumente mit bestimmten Optionen verglichen werden.

## Vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen von der lokalen Festplatte

<script src="https://gist.github.com/groupdocs-comparison-gists/9afb39e82ef686e97c30191f8fa3ee21.js"></script>

## Vergleichen Sie mehrere Dokumente mit bestimmten Vergleichseinstellungen aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/0c32eddfc1a3baad1583ba7457c8ae3b.js"></script>

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

