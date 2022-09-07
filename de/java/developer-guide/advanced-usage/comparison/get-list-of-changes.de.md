---
id: get-list-of-changes
url: comparison/java/get-list-of-changes
title: "Liste der Änderungen erhalten"
weight: 6
description: "In diesem Artikel wird erläutert, wie Sie eine Sammlung von Änderungen zwischen verglichenen Dokumenten erhalten, wenn Sie GroupDocs.Comparison für Java verwenden."
keywords: "Holen Sie sich Datei-Diff, Dokument-Diff, vergleichen Sie Dokumente, vergleichen Sie Dateien"
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
name: So erhalten Sie eine Liste der Änderungen
        description: "Erfahren Sie, wie Sie eine Liste der Änderungen erhalten"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen
- name: Liste der Änderungen abrufen
text: Verwenden Sie die Methode 'getChanges()' des Vergleichsobjekts, um die Liste der Änderungen abzurufen
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht es, eine Liste der Änderungen zwischen Quell- und Zieldateien zu erhalten.

Im Folgenden sind die Schritte zum Abrufen der Änderungsliste aufgeführt.

* [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)-Objekt mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf;
* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf.
    



Das folgende Codebeispiel veranschaulicht, wie eine Liste aller Änderungen abgerufen wird.

## Rufen Sie eine Liste der Änderungen von der lokalen Festplatte ab

<script src="https://gist.github.com/groupdocs-comparison-gists/883e152bcb4f92becd8cc5051118c36a.js"></script>

## Holen Sie sich eine Liste der Änderungen aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/a39965c7ca12a3a78f65821c59d20c29.js"></script>

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

