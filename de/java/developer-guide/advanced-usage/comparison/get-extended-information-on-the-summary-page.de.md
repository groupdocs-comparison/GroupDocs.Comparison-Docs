---
id: erhalten-erweiterte-informationen-auf-der-zusammenfassungsseite
url: comparison/java/get-extended-information-on-the-summary-page
title: "Erhalten Sie erweiterte Informationen auf der Übersichtsseite"
weight: 10
description: "In diesem Artikel wird erläutert, wie Sie mit GroupDocs.Comparison for Java erweiterte Informationen zum Vergleich von Dokumenten auf der Zusammenfassungsseite erhalten."
keywords: "Dokumente vergleichen, Übersichtsseite, SummaryPage, erweiterte Informationen, ExtendedSummaryPage"
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
name: So erhalten Sie erweiterte Informationen auf der Übersichtsseite
        description: "Erfahren Sie, wie Sie auf der Zusammenfassungsseite erweiterte Informationen erhalten"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Objekt zum Vergleichen von Optionen einrichten
text: Erstellen Sie ein Objekt der Klasse „CompareOptions“ mit seiner Methode „setExtendedSummaryPage(true)“, um die erweiterte Zusammenfassungsseite zu konfigurieren
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um einen Vergleichsprozess auszuführen, der Vergleichsoptionen als zweites Argument übergibt
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** ermöglicht es Ihnen, Änderungen zwischen Quell- und Zieldateien zu erkennen und Änderungen auf der separaten Seite anzuzeigen – [SummaryPage](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setGenerateSummaryPage(boolean)).
Außerdem können Sie erweiterte Informationen zum Vergleich von Dokumenten erhalten, die auf der [SummaryPage](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setGenerateSummaryPage(boolean)) angezeigt werden. .

Im Folgenden sind die Schritte aufgeführt, um erweiterte Informationen zu erhalten:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und legen Sie [ExtendedSummaryPage](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setExtendedSummaryPage(boolean)) Eigenschaft auf *true*;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt aus dem vorherigen Schritt.

Das folgende Codebeispiel zeigt, wie Sie erweiterte Informationen zum Vergleich von Dokumenten erhalten.

## Beispiel-Codeblock zum Abrufen erweiterter Informationen

---

<script src="https://gist.github.com/groupdocs-comparison-gists/956c10cbdd05aad7fb86137f4f9a0c01.js"></script>

## Beispiel für die Anzeige der Übersichtsseite mit erweiterten Informationen

---

![](/comparison/java/images/how-to-get-extended-information-image.png)

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
