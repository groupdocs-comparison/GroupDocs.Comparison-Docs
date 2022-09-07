---
id: dokumente vergleichen
url: comparison/java/compare-documents
title: "Dokumente vergleichen"
weight: 3
description: "Dieser Artikel zeigt, wie Sie Word-, Excel-, PowerPoint-, Outlook-, OneNote-, PDF-, Bild-, HTML-, AutoCAD-, Visio-, OpenDocument- und OneNote-Dokumente mit GroupDocs.Comparison für Java vergleichen."
keywords: "Dokumente vergleichen, Dokumentenvergleich in C#"
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
text: Erstellt ein 'Comparer'-Objekt, das das Quelldokument als Konstruktorargument übergibt
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
## Dateivergleichsfunktionen

Änderungserkennungsalgorithmen, die von **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** verwendet werden, ermöglichen die Erkennung von Änderungen in verschiedenen Dokumententeilen und -blöcken:

* Textblöcke - Absätze, Wörter und Zeichen;
* Tabellen;
* Bilder;
* Formen usw.

Zur besseren visuellen Trennung von erkannten Änderungen werden hinzugefügte, geänderte oder gelöschte Dokumentteile farblich hervorgehoben:

*Hinzugefügt – <font color="blue">**blau**</font>
* Modifiziert – <font color="green">**grün**</font>
* Stil – <font color="green">**grün**</font>
* Gelöscht – <font color="red">**rot**</font>

Änderungen des Styling-Farbschemas können bei Bedarf angepasst werden, geänderte Textblöcke können mit unterschiedlicher Formatierung gekennzeichnet werden - kursiv, fett, unterstrichen, durchgestrichen usw.

Hier sind einfache Schritte, um zwei Dokumente zu vergleichen:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) auf.

Das folgende Code-Snippet zeigt den einfachsten Fall des Dokumentenvergleichs mit ein paar Codezeilen.

## Vergleichen Sie Dokumente aus einer lokalen Datei

<script src="https://gist.github.com/groupdocs-comparison-gists/bcd9553b0796c190990221c33d060d2a.js"></script>

## Vergleichen Sie Dokumente aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

## Mehr Ressourcen
### Erweiterte Nutzungsthemen
Weitere Informationen zu Dokumentvergleichsfunktionen finden Sie im [Abschnitt zur erweiterten Verwendung]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}}).

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
