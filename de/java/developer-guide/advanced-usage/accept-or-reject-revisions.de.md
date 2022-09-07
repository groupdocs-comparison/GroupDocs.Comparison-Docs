---
id: Überarbeitungen akzeptieren oder ablehnen
url: comparison/java/accept-or-reject-revisions
title: "Überarbeitungen akzeptieren oder ablehnen"
weight: 4
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie Revisionen anwenden oder verwerfen, die während des Dokumentvergleichs mithilfe der integrierten Microsoft Word-Funktionalität gefunden wurden."
keywords: "Revision, Revisionsbearbeitung, Revision akzeptieren oder ablehnen, Änderung zur Revision anwenden"
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
name: Wie man Revisionen annimmt oder ablehnt
        description: "Erfahren Sie, wie Sie Überarbeitungen akzeptieren oder ablehnen"
Schritte:
- name: 'RevisionHandler'-Objekt erstellen
text: Objekt der Klasse 'RevisionHandler' erstellen und Quelldokument als Konstruktorargument übergeben
- name: Liste der Revisionen abrufen
text: Verwenden Sie die Methode 'getRevisions()', um die Liste der Revisionen zu erhalten
- Name: Überprüfen Sie den Typ jeder Revision und wenden Sie die erforderliche Aktion an
Text: Überprüfen Sie Revisionstypen mit der Methode „getType()“, die einen der „RevisionType.*“-Werte zurückgibt, und wenden Sie die erforderliche Aktion mit der Methode „setAction(RevisionAction.Accept)“ an.
- name: Objekt der Klasse „ApplyRevisionOptions“ erstellen
Text: Erstellen Sie eine Instanz der Klasse „ApplyRevisionOptions“ und verwenden Sie ihre Methoden „setChanges(changesList)“, um Änderungen vorzunehmen
- Name: Revisionsänderungen anwenden
text: Verwenden Sie die Methode 'applyRevisionChanges()' des 'RevisionHandler'-Objekts und übergeben Sie den Ergebnisdokumentpfad und die Revisionsoptionen als Argumente
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** bietet die Möglichkeit, Revisionen aus einem Docx-Dateiformat abzurufen, zu verarbeiten und das Verarbeitungsergebnis zu speichern.
Unten sind die Schritte zum *Übernehmen* von Revisionen aus einem Dokument, *Annehmen/Ablehnen* von Revisionen und *Schreiben* des Verarbeitungsergebnisses in eine endgültige Datei.

* Instanziiere das Objekt [RevisionHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [getRevisions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#getRevisions()) auf und rufen Sie die Liste der erkannten Revisionen ab;
* Legen Sie [Action](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionInfo#setAction(com.groupdocs.comparison.words.revision.RevisionAction)) der erforderlichen Änderung fest Widerspruch gegen [RevisionAction.Accept](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept) oder [RevisionAction.Reject](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) value;
* Rufen Sie die Methode [applyRevisionChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions)) auf, an die Sie die neu erstellte Instanz des [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions)-Objekts und den Pfad oder Stream übergeben müssen des resultierenden Dokuments, Sammeln von Änderungen in den Revisionen.

Es ist auch möglich, alle Änderungen zusammen zu verarbeiten und eine Aktion für alle Änderungen anzuwenden. Im Folgenden finden Sie die Schritte zur Handhabung aller Änderungen:
* Instanziiere das Objekt [RevisionHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [applyRevisionChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions)) auf, an die Sie die neu erstellte Instanz des Objekts [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) übergeben und die Aktion ([ RevisionAction.Accept](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept), [RevisionAction.Reject](https://apireference.groupdocs.com/ Comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) oder [RevisionAction.None](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction #None)), die für alle Revisionen gelten.

Klasse [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions):
* [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getChanges()) – Liste der Revisionsänderungen, die auf das endgültige Dokument angewendet werden müssen.
* [CommonHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getCommonHandler()) – Eigenschaft, mit der Sie eine Aktion definieren können, um alle Revisionen zu behandeln.

Wenn Sie den Pfad oder die Datei zum resultierenden Dokument nicht an die Methode [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) übergeben, werden die Änderungen übernommen in dieselbe Datei geschrieben werden, aus der die Revisionen entnommen wurden.

Das folgende Codebeispiel zeigt, wie Sie Revisionen aus einem Dokument abrufen, erkannte Revisionen akzeptieren / ablehnen und Änderungen am resultierenden Dokument speichern.

## Überarbeitungen von der lokalen Festplatte akzeptieren oder ablehnen

<script src="https://gist.github.com/groupdocs-comparison-gists/959d27303cb17b3f1c026ca018626137.js"></script>

## Überarbeitungen aus dem Stream akzeptieren oder ablehnen

<script src="https://gist.github.com/groupdocs-comparison-gists/4e175bc335e86438f4dc6e742e8b4c57.js"></script>

## Alle Überarbeitungen akzeptieren oder ablehnen

<script src="https://gist.github.com/groupdocs-comparison-gists/f66fbdb53c66bd82c03d5697d47bf9d0.js"></script>

## Ergebnis der Revisionsverarbeitung
Unten sind die Quell- und Ausgabedateien, die auf dem zuvor vorgestellten Code basieren.

| Quelldatei | Ergebnisdatei |
|-----------------------------------------------|- -------------------------------------------------- ---|
| ![](Vergleich/java/images/revision-file.png) | ![](Vergleich/java/images/result-revision-file.png) |

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
