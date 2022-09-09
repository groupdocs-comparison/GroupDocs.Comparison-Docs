---
id: Vergleich-von-Variablen-und-Dokument-Eigenschaften
url: comparison/java/compare-of-variables-and-document-properties
title: "Vergleich von Variablen und Dokumenteigenschaften"
weight: 11
description: "Dieser Artikel erklärt, wie Sie den Vergleich von Dokumenteigenschaften in GroupDocs.Comparison für Java aktivieren."
keywords: "Variableneigenschaften, erstellte Eigenschaften, benutzerdefinierte Eigenschaften, Dokumenteigenschaften vergleichen, CompareVariableProperty, CompareDocumentProperty"
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
Text: Erstellen Sie ein Objekt der Klasse „CompareOptions“ und verwenden Sie seine Methoden „setCompareVariableProperty(true)“ und „setCompareDocumentProperty(true)“, um die entsprechenden Einstellungen zu aktivieren
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um einen Vergleichsprozess auszuführen, der Vergleichsoptionen als zweites Argument übergibt
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** ermöglicht es Ihnen, verschiedene Eigenschaften eines WORD-Dokuments zu vergleichen, z. B. *Variable*, *Erstellt* und *Benutzerdefinierte* Eigenschaften.

Die folgenden Felder der Klasse CompareOptions werden verwendet, um Vergleichsfunktionen für Dokumenteigenschaften zu ermöglichen:

* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)) - um den Vergleich von *variablen* Eigenschaften zu aktivieren;
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareDocumentProperty(boolean)) - um den Vergleich von *erstellten* und *benutzerdefinierten* Eigenschaften zu aktivieren.

Im Folgenden sind die Schritte zum Aktivieren der Vergleichsdokumenteigenschaften aufgeführt:

* [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)-Objekt mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und legen Sie [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)) Eigenschaft auf *true* ([CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions# setCompareDocumentProperty(boolean)) auf *true* für *erstellte* und *benutzerdefinierte* Eigenschaften);
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) Objekt aus dem vorherigen Schritt.

## Beispiel-Codeblock zum Aktivieren des Vergleichs von variablen, gebauten und benutzerdefinierten Eigenschaften

---

<script src="https://gist.github.com/groupdocs-comparison-gists/eb7a2b4514a63bf8846a4520787f4fc5.js"></script>

## Das Ergebnis des Vergleichs von Eigenschaften

---

Das Ergebnis des Immobilienvergleichs wird auf einer separaten Seite präsentiert - *Eigenschaftsübersichtsseite*.

![](/comparison/java/images/properties-summary-page.png)

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
