---
id: get-only-summary-page
url: comparison/java/get-only-summary-page
title: "Holen Sie sich nur die Zusammenfassungsseite"
weight: 9
description: "In diesem Artikel wird erläutert, wie Sie beim Vergleichen von Dokumenten mit GroupDocs.Comparison für Java nur die Zusammenfassungsseite erhalten."
keywords: "Dokumente vergleichen, Übersichtsseite, SummaryPage, ShowOnlySummaryPage"
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
Name: So erhalten Sie die Zusammenfassungsseite
        description: "Erfahren Sie, wie Sie nach dem Vergleich zweier Dokumente eine Zusammenfassungsseite erhalten"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Vergleichsoptionen konfigurieren
text: Objekt von 'CompareOptions' erstellen und seine Eigenschaft 'setShowOnlySummaryPage(true)' einrichten
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf und übergeben Sie die Vergleichsoptionen als zweites Argument, um den Vergleichsprozess auszuführen
---

***

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** ermöglicht es Ihnen, Änderungen zwischen Quell- und Zieldateien zu erkennen und nur eine Zusammenfassungsseite bereitzustellen.

Im Folgenden sind die Schritte aufgeführt, um nur die Zusammenfassungsseite zu erhalten:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziiere das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und setze [setShowOnlySummaryPage(...)](https://apireference.groupdocs. com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowOnlySummaryPage(boolean)) auf *true*;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt aus dem vorherigen Schritt.

Das folgende Codebeispiel zeigt, wie nur die Zusammenfassungsseite abgerufen wird.

## Beispiel-Codeblock, um nur die Zusammenfassungsseite zu erhalten

---

<script src="https://gist.github.com/groupdocs-comparison-gists/bfc0826204c5a3bafab7ab9ace333dab.js"></script>

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
