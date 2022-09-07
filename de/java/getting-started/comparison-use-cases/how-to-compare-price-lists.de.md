---
id: wie man preislisten vergleicht
url: comparison/java/how-to-compare-price-lists
title: "So vergleichen Sie Preislisten"
weight: 5
description: "Dieser Artikel beschreibt, wie Sie Dateien mit der Microsoft Excel-Funktion und der GroupDocs.Comparison-API für Java vergleichen. Sie lernen auch, wie Sie zwei oder mehr Tabellen vergleichen und den Unterschied in Dateien ermitteln"
keywords: "Excel-Dateien vergleichen, Tabellenkalkulation vergleichen, Excel-Dateien vergleichen"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Excel-Vergleich
        description: "Das Produkt ermöglicht den Vergleich von Excel-Tabellen"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So vergleichen Sie Excel-Tabellen
        description: "Erfahren Sie, wie Sie Excel-Tabellen in einem Java- oder Kotlin-Projekt vergleichen"
Schritte:
- Name: Quell-Excel-Tabelle laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die die Quelltabelle als Konstruktorparameter übergibt
- name: Ziel-Excel-Tabellen laden
Text: Fügen Sie eine oder mehrere Ziel-Excel-Tabellen hinzu, um sie mit der Quelltabelle zu vergleichen
- name: Quell- und Ziel-Excel-Tabellen vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Angenommen, Sie haben zwei Excel-Arbeitsmappen oder vielleicht zwei Versionen derselben Arbeitsmappe, die Sie vergleichen möchten. Oder vielleicht möchten Sie potenzielle Probleme finden, wie manuell eingegebene (statt berechnete) Summen oder fehlerhafte Formeln. Wenn Sie über Microsoft Office Professional Plus 2013 verfügen, können Sie mit Microsoft Spreadsheet Compare einen Bericht zu den gefundenen Unterschieden und Problemen erstellen.

{{< alert style="info" >}}Wichtig: Spreadsheet Compare ist nur mit Office Professional Plus 2013 oder Office 365 ProPlus verfügbar.{{< /alert >}}

Um zwei Excel-Arbeitsmappen mit Office Professional Plus 2013 zu vergleichen, sollten Sie:

* Klicken Sie auf **Home > Dateien vergleichen**. Das Dialogfeld „Dateien vergleichen“ wird angezeigt.
    ![](comparison/java/images/how-to-compare-price-lists.jpg)
* Klicken Sie auf das blaue Ordnersymbol neben dem Feld **Vergleichen**, um zum Speicherort der früheren Version Ihrer Arbeitsmappe zu navigieren.

![](comparison/java/images/how-to-compare-price-lists_1.jpg)


* Klicken Sie auf das grüne Ordnersymbol neben dem Feld **Nach**, um zum Speicherort der Arbeitsmappe zu navigieren, die Sie mit der früheren Version vergleichen möchten, und klicken Sie dann auf **OK**.
* Wählen Sie im linken Bereich die Optionen aus, die Sie in den Ergebnissen des Arbeitsmappenvergleichs sehen möchten, indem Sie die Optionen wie **Formeln**, **Makros** oder **Zellformat** aktivieren oder deaktivieren. Oder einfach **Alle auswählen**.

![](comparison/java/images/how-to-compare-price-lists_2.png)
* Klicken Sie auf **OK**, um den Vergleich durchzuführen.

## So vergleichen Sie Excel-Dateien mit GroupDocs.Comparison

Microsoft Office Professional Plus 2013 bietet Tabellenkalkulationsvergleiche, aber **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** bietet eine Möglichkeit, Arbeitsblätter programmgesteuert zu vergleichen, und Sie können nicht nur zwei verschiedene Dateien vergleichen, sondern gleich mehrere. Angenommen, es gibt drei oder mehr Preislisten für einige Jahre (z. B.: "2018", "2019", "2020") im XLSX-Format oder anderen [unterstützten Dateiformaten] ({{< ref "comparison/java/ erste-schritte/unterstützte-dokumentformate.md" >}}). andere und Sie müssen deren Inhalt vergleichen. Hier ist ein Beispiel für den Vergleich von drei Preislisten mit der GroupDocs.Comparsion API. Normalerweise müssen Sie nur diesen Schritten folgen:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an. Wiederholen Sie diesen Schritt für jedes Zieldokument;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) auf.

| | Dateien |
|---------------------|---------------------- -----------------------------------|
| Preisliste für 2018 | ![](comparison/java/images/how-to-compare-price-lists_3.png) |
| Preisliste für 2019 | ![](comparison/java/images/how-to-compare-price-lists_4.png) |
| Preisliste für 2020 | ![](comparison/java/images/how-to-compare-price-lists_5.png) |

Hier ist der Code, der verwendet wird, um drei Preislisten zu vergleichen.

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc74c8d9ae6abf118bb1551446e2ca4.js"></script>

Als Ergebnis erhalten wir eine XSLX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> , die hinzugefügten in <font color="blue">**blau**</font> und die geänderten in <font color="green">**grün**</font> markiert sind.

| Ergebnis Preisliste |
|------------------------------------------------------------- -------------|
| ![](comparison/java/images/how-to-compare-price-lists_6.png) |

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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-Verwendung **[GroupDocs-Vergleichs-App](https://products.groupdocs.app/) vergleichen. Vergleich)**.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So erstellen Sie eine Vergleichsanwendung (/comparison/java/how-to-use-micronaut-comparison-sample) mit Micronaut Framework
* Wie [Autocad-Zeichnungsvorschau anzeigen](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) in der Kotlin-Compose-Anwendung
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin

