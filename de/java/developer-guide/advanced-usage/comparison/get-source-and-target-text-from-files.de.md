---
id: hole-quell-und-zieltext-aus-dateien
url: comparison/java/get-source-and-target-text-from-files
title: "Holen Sie sich Quell- und Zieltext aus Dateien"
weight: 7
description: "In diesem Artikel wird erläutert, wie Sie mit GroupDocs.Comparison for Java Quell- und Zieltexte bestimmter Änderungen erhalten."
keywords: "Ziel-txt abrufen, Quell-txt abrufen, Dokumente unterscheiden, Dokumente vergleichen, Dateien vergleichen"
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
name: So erhalten Sie Text von Quell- und Zieldokumenten
        description: "Erfahren Sie, wie Sie Text aus Quell- und Zieldokumenten erhalten"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Vergleichsprozess ausführen
text: Ruft die 'compare'-Methode auf, um den Vergleichsprozess auszuführen, und den Pfad zum Ergebnisdokument
- name: Liste der Änderungen abrufen
text: Verwenden Sie die Methode 'getChanges()' des Vergleichsobjekts, um eine Liste der Änderungen zu erhalten
- Name: Text von Quell- und Zieldokumenten abrufen
text: Verwenden Sie die Methoden 'getSourceText()' und 'getTargetText()' des Vergleichsobjekts, um Text von Quell- und Zieldokumenten abzurufen
---
[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) ermöglicht das Abrufen von Quell- und Zieltexten bestimmter Änderungen in der Ergebnisdatei.

Um eine Liste der geänderten Ausgangs- und Zieltexte zu erhalten, gehen Sie wie folgt vor:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf;
* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf.

Das folgende Codebeispiel zeigt, wie Sie bestimmte Texte aus einer Datei abrufen.

## Holen Sie sich den Zieltext von der lokalen Festplatte

<script src="https://gist.github.com/groupdocs-comparison-gists/d37858b84f9e3606fc80d3a645b87e31.js"></script>

## Holen Sie sich den Zieltext aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/8e69835903ec356fa36ded4f7cb5d88b.js"></script>

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
Zusammen mit einer voll funktionsfähigen Java-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
