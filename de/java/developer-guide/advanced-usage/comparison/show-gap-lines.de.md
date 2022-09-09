---
id: show-gap-lines
url: comparison/java/show-gap-lines
title: "Lückenlinien anstelle von Änderungen anzeigen"
weight: 13
description: "Dieser Artikel erklärt, wie Sie die Anzeige des resultierenden Dokuments so anpassen, dass der geänderte Inhalt in GroupDocs.Comparison für Java durch leere Zeilen ersetzt wird."
keywords: "LeaveGaps, Lückenlinien, Leerzeilen"
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
name: So zeigen Sie Lücken anstelle von Änderungen an
        description: "Erfahren Sie, wie Sie Lücken anstelle von Änderungen anzeigen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Objekt zum Vergleichen von Optionen einrichten
Text: Erstellen Sie ein Objekt der Klasse „CompareOptions“ und verwenden Sie seine Methoden „setShowInsertedContent(false)“, „setShowDeletedContent(false)“ und „setLeaveGaps(true)“, um die entsprechenden Einstellungen zu konfigurieren
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um einen Vergleichsprozess auszuführen, der Vergleichsoptionen als zweites Argument übergibt
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht die Anpassung der Form des resultierenden Dokuments.

Standardmäßig werden Änderungen aus den beiden Eingabedateien (*Quell*- und *Ziel*-Dateien) zum resultierenden Dokument hinzugefügt und visuell hervorgehoben. Dies kann mit [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) und [ShowDeletedContent](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowDeletedContent(boolean))-Eigenschaften.

Sie können auch die Eigenschaft [LeaveGaps](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setLeaveGaps(boolean)) verwenden, um die Anzeige des resultierenden Dokuments anzupassen um geänderte Inhalte durch Leerzeilen zu ersetzen. Um diese Eigenschaft zu verwenden, müssen Sie auch die folgenden Eigenschaften aktivieren: [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) und [ShowDeletedContent ](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowDeletedContent(boolean)).

Hier sind die einfachen Schritte, um das obige Ergebnis zu erhalten:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziiere [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) Objektsätze [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) und/oder [ShowDeletedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) und notwendigerweise [LeaveGaps](https://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) Eigenschaften;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt aus dem vorherigen Schritt.

## Beispielcodeblock, um das gewünschte Ergebnis zu erhalten

---

<script src="https://gist.github.com/groupdocs-comparison-gists/b59e5ff289223ac376574b284165125d.js"></script>

## Beispielcodeausführung

---

| Standardergebnis | Ergebnis ohne LeaveGaps-Eigenschaft |
|: ------------------------------------------------ -------------:|:---------------------------------------------- ------------------------------:|
| ![](/comparison/java/images/show-gap-lines-default-result.png) | ![](/comparison/java/images/show-gap-lines-without-leavegaps.png) |

| Standardergebnis | Ergebnis mit LeaveGaps-Eigenschaft |
|: ------------------------------------------------ -------------:|:---------------------------------------------- ----------------------------:|
| ![](/comparison/java/images/show-gap-lines-default-result.png) | ![](/comparison/java/images/show-gap-lines-with-leavegaps.png) |

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
You are welcome e to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
