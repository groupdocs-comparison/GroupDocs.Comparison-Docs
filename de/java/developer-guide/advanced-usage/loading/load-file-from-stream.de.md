---
id: load-file-from-stream
url: comparison/java/load-file-from-stream
title: "Datei aus Stream laden"
weight: 2
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
name: So laden Sie eine Datei aus dem Eingabestream
        description: "Erfahren Sie, wie Sie eine Datei aus dem Eingabestream laden"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Erstellt ein 'Comparer'-Objekt, das den Quelleingabestrom als Konstruktorargument übergibt
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
Falls Sie die Datei in Form eines Streams haben. Um den Aufwand für das Speichern von Streams als Datei auf der Festplatte zu vermeiden, bietet **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** eine Möglichkeit, direkt mit Dateistreams zu arbeiten.

Folgende Schritte sind zu befolgen:

* Dateistream erhalten;
* Geöffneten Quellstream an [Comprer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) Klassenkonstruktor übergeben oder geöffneten Zieldateistream an [add](https://apireference .groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)) Methode.
    



Das folgende Code-Snippet beschreibt, wie eine Datei aus dem Stream geladen wird.

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

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

