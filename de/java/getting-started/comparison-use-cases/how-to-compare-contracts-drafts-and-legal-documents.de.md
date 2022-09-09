---
id: wie-man-vertragsentwürfe-und-rechtliche-dokumente-vergleicht
url: comparison/java/how-to-compare-contracts-drafts-and-legal-documents
title: "So vergleichen Sie Vertragsentwürfe und Rechtsdokumente"
weight: 2
description: "Dieser Artikel beschreibt, wie Sie Verträge, Entwürfe und Rechtsdokumente mit der Blacklining-Funktion von Microsoft Word und der GroupDocs.Comparison-API vergleichen."
keywords: "Verträge vergleichen, Entwürfe vergleichen, Blacklining vergleichen, Redlining vergleichen"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Vertrag vergleichen
        description: "Das Produkt ermöglicht den Vergleich von Vertragsangeboten"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So vergleichen Sie Verträge in Java oder Kotlin
        description: "Erfahren Sie, wie Sie Verträge in Java- oder Kotlin-Projekten vergleichen"
Schritte:
- Name: Quellvertrag laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die den Quellvertrag als Konstruktorparameter übergibt
- name: Zielvertrag laden
Text: Fügen Sie einen oder mehrere Zielverträge hinzu, um sie mit dem Ausgangsvertrag zu vergleichen
- name: Quell- und Zielverträge vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Ein normaler Mitarbeiter sieht sich oft mit der Notwendigkeit konfrontiert, zwei Versionen desselben Dokuments zu vergleichen. Beispielsweise ist es nach Erhalt einer unterzeichneten Version einer Vereinbarung wichtig sicherzustellen, dass die Gegenpartei keine wesentlichen Änderungen vorgenommen hat, die sich auf die Bedingungen der Transaktion auswirken. Und bei der nächsten Genehmigungsrunde des Entwurfsdokuments im Unternehmen müssen Sie sich nur die geänderten Abschnitte ansehen, um keine Zeit mit dem erneuten Lesen des gesamten Textes zu verschwenden.

Die Lösung „**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)**“ vergleicht automatisch zwei Versionen und generiert einen Bericht mit komfortabler Visualisierung der Unterschiede. Dadurch werden die Arbeitskosten für den Vergleich von Dokumenten reduziert und die Wahrscheinlichkeit von Fehlern aufgrund des menschlichen Faktors verringert.

## So vergleichen Sie Microsoft Word-Dokumente


Als Ergebnis der Erstellung einer Textdatei müssen wir diese mehreren Änderungen unterziehen. Und es ist bemerkenswert, dass die interessierte Person einer nicht endgültigen Version des Dokuments zustimmen kann. Die endgültige Textdatei, die von einer anderen Person vereinbart wird, kann erheblich von der zuvor vereinbarten Originalversion abweichen. Und solche Situationen können sich jeden Tag wiederholen. Um den Vorgang des Vergleichens von Dateien teilweise zu automatisieren, können Sie Microsoft Word-Ressourcen verwenden

* Öffnen Sie zuerst Microsoft Word. Gehen Sie zur Registerkarte „**Bewertung**“, klicken Sie im Abschnitt „**Vergleich**“ auf „**Vergleichen**“.
* Das Popup-Fenster „**Versionsvergleich**“ erscheint, vor dem Sie jetzt zwei Arten von Dokumenten laden müssen: das Original und das modifizierte.

![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents.png)

* Nachdem Sie zwei Versionen eines Textdokuments ausgewählt haben, klicken Sie auf **OK**
    ![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents_1.png)


* Die Vergleichsergebnisse werden in einem neuen Fenster geöffnet und sehen etwa so aus:

![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents_2.png)

* Im hervorgehobenen Quadrat mit der Nummer "1" erscheinen alle gelöschten und eingefügten Wörter. Der Bereich mit der Nummer „2“ rechts zeigt das verglichene Dokument mit dem Vorhandensein im Text und den gelöschten und an ihrer Stelle eingefügten Wörtern.
Der Arbeitsbereich mit der Nummer „3“ zeigt uns das Quelldokument (vor der Änderung), während der Bereich mit der Nummer „4“ uns das geänderte Dokument mit den vorgenommenen Änderungen zeigt.
Das verbleibende Arbeitsfeld mit der Nummer "5" ist eine Reihe von Werkzeugen, die zum Bearbeiten der endgültigen Version des zu entwickelnden Dokuments erforderlich sind.
* Wenn Sie zum ersten Mal auf "**Akzeptieren**" / "**Ablehnen**" drücken, wählen Sie das Wort aus, das Sie akzeptieren oder ablehnen, beim zweiten Klicken wechseln Sie zu einer der vorgeschlagenen Optionen.
* Rot durchgestrichene Wörter werden zum Löschen markiert, während rot unterstrichene Wörter ersetzt werden.


## So vergleichen Sie Verträge mit GroupDocs.Comparison

Manchmal reichen die Vergleichsfunktionen von Microsoft Word möglicherweise nicht aus, um Ihre Anforderungen zu erfüllen – Sie benötigen beispielsweise eine eigene Methode zur Implementierung der Vergleichslogik oder Sie entwickeln Ihre eigene Anwendung. [**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) bietet eine Möglichkeit, Dokumente programmgesteuert zu vergleichen und gefundene Unterschiede im Code für eine Vielzahl von [unterstützten Dateiformaten] zu verwalten ({{< ref "comparison/java/getting-started/supported-document-formats.md" >}}). Hier ist ein Beispiel für den Vergleich zweier Verträge mit der GroupDocs.Comparsion-API. Normalerweise müssen Sie nur diesen Schritten folgen:

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) auf.

Angenommen, Sie haben zwei Verträge im DOCX-Format, die in unterschiedlichen Jahren abgeschlossen wurden (z. B. für 2018 und 2019). Jetzt werden Sie vergleichen, wie sich die Bedingungen nach einiger Zeit verändert haben.

| Quelldatei - Vertrag 2018 unterzeichnet | Target File- Vertrag 2019 unterzeichnet |
|------------------------------------------------------------- --------------------------------------|----------- -------------------------------------------------- --------------------------------------|
| ![](/comparison/java/images/how-to-compare-contracts-designs-and-legal-documents_3.png) | ![](/comparison/java/images/how-to-compare-contracts-designs-and-legal-documents_4.png) |

Hier ist der Code, der verwendet wird, um zwei Verträge zu vergleichen.

<script src="https://gist.github.com/groupdocs-comparison-gists/2fe078a7c1db4dd932ee0ab907d71732.js"></script>

Als Ergebnis erhalten wir eine DOCX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> , die hinzugefügten in <font color="blue">**blau**</font> und die geänderten in <font color="green">**grün**</font> markiert sind.

![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents_5.png)

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

