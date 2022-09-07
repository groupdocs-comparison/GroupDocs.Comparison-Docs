---
id: Load-Custom-Fonts
url: comparison/java/load-custom-fonts
title: "Laden Sie benutzerdefinierte Schriftarten"
weight: 4
description: "In diesem Artikel wird erläutert, wie Sie benutzerdefinierte Schriftarten in PDF-, Word-, Excel- und PowerPoint-Dokumenten laden, wenn Sie GroupDocs.Comparison für Java verwenden."
keywords: "Benutzerdefinierte Schriftarten, Schriftarten"
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
name: So laden Sie benutzerdefinierte Schriftarten
        description: "Erfahren Sie, wie Sie benutzerdefinierte Schriftarten laden"
Schritte:
- name: Objekt „LoadOptions“ erstellen
Text: Objekt der Klasse „LoadOptions“ erstellen
- name: Schriftpfade hinzufügen
text: Schriftpfade zu einer Liste hinzufügen, die mit Hilfe der 'getFontDirectories()'-Methode verfügbar ist
- name: Objekt der Klasse „Comparer“ erstellen
text: Erstellen Sie ein 'Comparer'-Objekt, das das Quelldokument übergibt, und laden Sie Optionen mit Schriftartpfaden als Konstruktorargumente
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) ermöglicht es Ihnen, Dokumente zu vergleichen, deren Inhalt nicht standardmäßige Schriftarten enthält.

Im Folgenden sind die Schritte zum Verbinden benutzerdefinierter Schriftarten und zum Vergleichen von Dokumenten aufgeführt:

* Instanziiere das Objekt [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) und stelle eine Liste von Verzeichnissen für benutzerdefinierte Schriftarten bereit;
* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldokumentpfad oder -stream und [LoadOptions](https://apireference.groupdocs.com/ Comparison/Java/com.groupdocs.comparison.options.load/LoadOptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Aufruf [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)) Methode und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf.

Das folgende Codebeispiel zeigt, wie benutzerdefinierte Schriftarten verbunden und Dokumente verglichen werden.

<script src="https://gist.github.com/groupdocs-comparison-gists/426fbb1a2e2ad8130ec02e21d04ef718.js"></script>

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

