---
id: vergleiche-lesezeichen-in-word
url: comparison/java/compare-bookmarks-in-word
title: "Vergleichen Sie Lesezeichen in Word-Dokumenten"
weight: 12
description: "Dieser Artikel erklärt, wie Sie den Vergleich von Lesezeichen für das Word-Format in GroupDocs.Comparison für Java aktivieren."
keywords: "Lesezeichen, Wort, Wort, docx, doc, Lesezeichen vergleichen, Wortlesezeichen, CompareBookmarks, Lesezeichenvergleich"
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
name: So vergleichen Sie Lesezeichen in Word-Dokumenten
        description: "Erfahren Sie, wie Sie Lesezeichen in Word-Dokumenten vergleichen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Objekt zum Vergleichen von Optionen einrichten
text: Erstellen Sie ein Objekt der Klasse „CompareOptions“ und verwenden Sie seine Methode „setCompareBookmarks(true)“, um den Lesezeichenvergleich zu aktivieren
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um einen Vergleichsprozess auszuführen, der Vergleichsoptionen als zweites Argument übergibt
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** ermöglicht den Vergleich von Lesezeichen in WORD-Dokumenten.

Im Folgenden sind die Schritte zum Vergleichen von Lesezeichen von Dokumenten aufgeführt:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und initialisieren Sie das Objekt [CompareBookmarks](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions#setCompareBookmarks(boolean)) Eigenschaft mit **true**;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt aus dem vorherigen Schritt.

## Beispielcodeblock zur Veranschaulichung des Vergleichs von Lesezeichen

---

<script src="https://gist.github.com/groupdocs-comparison-gists/11f02eec9356367c4bd7ac9810114caa.js"></script>

## Das Ergebnis nach dem Vergleichen des Dokuments mit aktivierter CompareBookmarks-Option

---

Das Ergebnis der verglichenen Lesezeichen wird als eingefügte Kommentare mit Beschreibung im Dokument dargestellt. Siehe Beispiel unten auf dem Bild:

![](comparison/java/images/compared-bookmarks.png)

## Mehr Ressourcen

---
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
