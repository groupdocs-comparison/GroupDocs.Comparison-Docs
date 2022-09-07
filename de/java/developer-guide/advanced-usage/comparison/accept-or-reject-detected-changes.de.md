---
id: Akzeptieren-oder-ablehnen-erkannter-Änderungen
url: comparison/java/accept-or-reject-detected-changes
title: "Erkannte Änderungen akzeptieren oder ablehnen"
weight: 1
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie Änderungen anwenden oder verwerfen, die während des Dokumentvergleichsprozesses mithilfe der GroupDocs.Comparison for Java API erkannt wurden."
keywords: "Änderungen auf das verglichene Dokument anwenden, Vergleichsänderungen ablehnen, Vergleichsänderungen dokumentieren"
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
name: Wie man Änderungen annimmt oder ablehnt
        description: "Erfahren Sie, wie Sie durch Vergleich erkannte Änderungen akzeptieren oder ablehnen"
Schritte:
- Name: Dokumente vergleichen
text: Ausgangs- und Zieldokument wie gewohnt vergleichen
- name: Ermittelte Änderungen abrufen
text: Verwenden Sie die Methode 'getChanges()' des Comparer-Objekts, um auf alle erkannten Änderungen zuzugreifen
- Name: Akzeptieren oder verwerfen Sie jede Änderung
text: Verwenden Sie die Methode 'setComparisonAction(ComparisonAction.REJECT)', um jede Änderung zu akzeptieren oder abzulehnen
- Name: Änderungen übernehmen
text: Verwenden Sie die Methode 'applyChanges()' des Vergleichsobjekts, um Änderungen anzuwenden
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** bietet die Möglichkeit, bestimmte Änderungen zwischen Quell- und Zieldateien anzuwenden oder zu verwerfen und das resultierende Dokument mit (oder ohne) ausgewählten Änderungen zu speichern.

Im Folgenden sind die Schritte zum Anwenden/Ablehnen von Änderungen an der resultierenden Datei aufgeführt.

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad des Zieldokuments oder den Stream an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) auf;
* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf und rufen Sie die Liste der erkannten Änderungen ab;
* Setzen Sie [ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) des erforderlichen Änderungsobjekts auf [ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) oder [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) Wert;
* Rufen Sie die Methode [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.io.OutputStream,%20com.groupdocs.comparison.options.ApplyChangeOptions)) auf und Sammlung von Änderungen daran übergeben;

Klasse [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions):

* [getChanges()](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions#getChanges()) – Array von Änderungen, die auf das Ergebnis angewendet werden müssen (oder nicht). dokumentieren;
* [setSaveOriginalState](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions#setSaveOriginalState()) – Behält den Originalzustand des Vergleichsergebnisses nach dem Anwenden von Änderungen bei.

Das folgende Codebeispiel zeigt, wie erkannte Änderungen akzeptiert/abgelehnt werden.

## Akzeptieren oder Ablehnen von Änderungen für Dokumente, die auf der lokalen Festplatte gespeichert sind

<script src="https://gist.github.com/groupdocs-comparison-gists/c3d730c6ae104b20c9a71743bd648776.js"></script>

## Akzeptieren oder Ablehnen von Änderungen für Dokumente, die als Stream bereitgestellt werden

<script src="https://gist.github.com/groupdocs-comparison-gists/2b802b7d8e6d4ebe9d12ff4d7390dbf2.js"></script>

## Das folgende Codebeispiel zeigt, wie erkannte Änderungen mit der SaveOriginalState-Option akzeptiert/abgelehnt werden

<script src="https://gist.github.com/groupdocs-comparison-gists/9b7f737eba537c3e9916568dce25441c.js"></script>

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
