---
id: Customize-Changes-Styles
url: comparison/java/customize-changes-styles
title: "Passen Sie die Änderungsstile an"
weight: 4
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie den Dokumentvergleichsbericht anpassen und das Erscheinungsbild erkannter Änderungen ändern, wenn Sie GroupDocs.Comparison für Java verwenden."
keywords: "Stiländerungserkennung, Dokumentstile vergleichen, Dokumentvergleich"
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
Name: So passen Sie Änderungsstile an
        description: "Erfahren Sie, wie Sie Änderungsstile anpassen"
Schritte:
- name: Objekt „StyleSettings“ erstellen
text: Objekt der Klasse 'StyleSettings' erstellen
- Name: Stileinstellungen ändern
Text: Aktualisieren Sie die Eigenschaften des Objekts, um die Stileinstellungen zu ändern
- name: Objekt „CompareOptions“ erstellen
Text: Objekt der Klasse „CompareOptions“ erstellen
- Name: Stileinstellungsoptionen festlegen
Text: Verwenden Sie die Methoden 'setInsertedItemStyle()', 'setDeletedItemStyle()' oder 'setChangedItemStyle()', um geeignete Stile festzulegen
- name: Vergleichsoptionen verwenden
Text: Beim Aufrufen der Methode 'compare()' eines Vergleichsobjekts werden Vergleichsoptionen als zweites Argument übergeben
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** bietet Vergleichsoptionen mit einigen Standardwerten, die beides bieten – angemessene Vergleichsgeschwindigkeit und -qualität. Es ist jedoch möglich, Vergleichsoptionen aus einer Vielzahl von Parametern und deren Werten anzupassen, um bestimmte Anforderungen zu erfüllen. Das folgende Beispiel zeigt, wie verschiedene Änderungstypen geändert werden.

Im Folgenden sind die Schritte zum Vergleichen zweier Dokumente mit benutzerdefinierten Änderungsstileinstellungen aufgeführt:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) mit den gewünschten Parametern;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt zu Methode;
    



Das folgende Code-Snippet zeigt, wie Dateien mit bestimmten Optionen verglichen werden.

## Vergleichen Sie Dateien von der lokalen Festplatte mit benutzerdefinierten Änderungsstilen

<script src="https://gist.github.com/groupdocs-comparison-gists/e0cebcc9c017d1226d0571aca1b18c56.js"></script>

## Vergleichen Sie Dateien aus dem Stream mit benutzerdefinierten Änderungsstilen

<script src="https://gist.github.com/groupdocs-comparison-gists/c39aba0ce82cbddd74c367ff89a1e906.js"></script>

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

