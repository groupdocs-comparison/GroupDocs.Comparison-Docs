---
id: get-changes-coordinates
url: comparison/java/get-changes-coordinates
title: "Änderungskoordinaten erhalten"
weight: 5
description: "In diesem Artikel wird erläutert, wie Sie Koordinaten für erkannte Änderungen in der Vorschau einer Dokumentseite erhalten, wenn Sie Dokumente mit GroupDocs.Comparison für Java vergleichen"
keywords: "Dokumente vergleichen, Änderungskoordinaten abrufen"
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
name: So erhalten Sie Koordinaten von Änderungen
        description: "Erfahren Sie, wie Sie Koordinaten von Änderungen im Dokument erhalten"
Schritte:
- name: Objekt „CompareOptions“ erstellen
Text: Objekt der Klasse „CompareOptions“ erstellen
- Name: Optionen einrichten
Text: Verwenden Sie die Methoden 'setCalculateCoordinates(true)' des Optionsobjekts, damit der Vergleicher die Koordinaten vorbereitet
- name: Vergleichsoptionen verwenden
Text: Beim Aufrufen der Methode 'compare()' eines Vergleichsobjekts werden Vergleichsoptionen als zweites Argument übergeben
- name: Änderungsliste mit Koordinaten abrufen
text: Rufen Sie die 'getChanges()'-Methode eines Vergleichsobjekts auf, um eine Liste der Änderungen mit der darin enthaltenen Koordinate zu erhalten
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht es, Änderungen zwischen Quell- und Zieldokumenten zu erkennen und Änderungskoordinaten in Dokumentvorschaubildern zu erhalten. Diese Koordinaten können sehr nützlich sein, um erkannte Änderungen in Dokumentvorschaubildern mit einigen Grafiken hervorzuheben (z. B. ein rotes Rechteck um jede erkannte Änderung platzieren).

Im Folgenden sind die Schritte zum Abrufen von Änderungskoordinaten aufgeführt.

* [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)-Objekt mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an.
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) und legen Sie [CalculateCoordinates](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setCalculateCoordinates(boolean)) Setter auf *true*;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) auf und Übergeben Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) aus dem vorherigen Schritt.
* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf
    



Das folgende Codebeispiel zeigt, wie Änderungskoordinaten abgerufen werden.

## Beispiel für die Koordinatenberechnung

<script src="https://gist.github.com/groupdocs-comparison-gists/fd4a88331289a9d88fad5e1f0bb0c5e2.js"></script>

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

