---
id: show-revisionen
url: comparison/java/show-revisions
title: "Revisionen anzeigen"
weight: 12
description: "In diesem Artikel wird erläutert, wie Sie die Anzeige von Revisionen im resultierenden Dokument in GroupDocs.Comparison für Java anpassen."
keywords: "ShowRevisionen, Überarbeitung"
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
name: So deaktivieren Sie die Anzeige von Revisionen im Ergebnisdokument
        description: "Erfahren Sie, wie Sie die Anzeige von Revisionen im Ergebnisdokument deaktivieren"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Objekt zum Vergleichen von Optionen einrichten
text: Objekt der Klasse „CompareOptions“ erstellen und dessen Methode „setShowRevisions(false)“ verwenden, um die Anzeige von Revisionen zu deaktivieren
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um einen Vergleichsprozess auszuführen, der Vergleichsoptionen als zweites Argument übergibt
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** bietet die Möglichkeit, die Anzeige von Überarbeitungen im resultierenden Dokument zu vergleichen und anzupassen.

**Revision** – Änderungen, die beim Vergleichen von Dokumenten mit integrierten Word-Tools empfangen wurden.

Standardmäßig ist die Anzeige von Revisionen *aktiviert*. Im Folgenden finden Sie die Schritte zum Deaktivieren der Anzeige von Revisionen:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und legen Sie [ShowRevisions](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setShowRevisions(boolean)) Eigenschaft auf *false*;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt aus dem vorherigen Schritt.

## Beispielcodeblock zum Deaktivieren der Anzeige von Revisionen

---

<script src="https://gist.github.com/groupdocs-comparison-gists/e43eb36dafa0ef2d0690fe5d2ab38460.js"></script>

## Beispiel eines Ergebnisses mit aktivierter Revisionsanzeige

---

| Geschlossener Zustand | Offener Zustand |
|: ------------------------------------------------ -------------------:|:------------------------------------ --------------------------------------:|
| ![](Vergleich/java/images/show-revisions-true-close-revisions.png) | ![](Vergleich/java/images/show-revisions-true-open-revisions.png) |

## Beispiel eines Ergebnisses mit deaktivierter Revisionsanzeige

---

| Anzeigerevisionen deaktivieren |
|: ------------------------------------------------ ----:|
| ![](Vergleich/java/images/show-revisions-false.png) |

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
