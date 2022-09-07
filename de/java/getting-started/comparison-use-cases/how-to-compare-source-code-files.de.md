---
id: how-to-compare-source-code-files
url: comparison/java/how-to-compare-source-code-files
title: "So vergleichen Sie Quellcodedateien"
weight: 6
description: "Dieser Artikel beschreibt, wie Sie Programmierdateien vergleichen und mit angewendeten oder verworfenen Änderungen zu einer Datei zusammenführen können. GroupDocs.Comparison for Java bietet die Möglichkeit, Unterschiede in Dateien wie CS, Java, Python, C ++, Ruby und anderen zu finden"
keywords: "CS-Dateien vergleichen, Java-Dateien vergleichen, Dokumente zusammenführen"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Code abweichen
        description: "Das Produkt ermöglicht den Codevergleich"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name:
        description: "Erfahren Sie, wie Sie Code in einem Java- oder Kotlin-Projekt vergleichen"
Schritte:
- name: Quellcodedatei laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die die Quellcodedatei als Konstruktorparameter übergibt
- name: Zielcodedateien laden
Text: Fügen Sie eine oder mehrere Zielcodedateien hinzu, um sie mit der Quellcodedatei zu vergleichen
- name: Quell- und Zielcodedateien vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---

***

Es gibt viele Vergleichstools, die es mehreren Benutzern ermöglichen, ihre Änderungen effektiv zu verwalten, zu akzeptieren oder abzulehnen, wenn sie an Quellcode zusammenarbeiten, der in CSharp, Java, Python, Ruby und anderen Programmiersprachen geschrieben wurde. Die meisten dieser Tools sind Desktop-Anwendungen, die kostenlos oder kostenpflichtig sind, leistungsstarke Funktionen bieten, ihre Vor- und Nachteile haben, aber alle davon ausgehen, dass Sie Dateien manuell vergleichen.

Sehen wir uns einen häufigen Anwendungsfall an, wenn Sie zwei Versionen einer C#-Quellcodedatei (CSharp) überprüfen müssen, die von zwei verschiedenen Personen bearbeitet wurden, und die richtige Variante für jeden bearbeiteten Codeblock auswählen müssen. Bitte überprüfen Sie die source.cs- und target.cs-Dateien, die wir im folgenden Bild vergleichen werden.

![](comparison/java/images/how-to-compare-source-code-files1.png)

Wie wir sehen können, gibt es mehrere Unterschiede zwischen den verglichenen Dateien:
* Klassennamen sind unterschiedlich - *CropImage* vs *ImageCropTests*;
* *Test1*-Methode ist in einer *target.cs*-Datei nicht vorhanden;
* Bitmap-Bildpfad wurde in *Test2* geändert - *input.png* vs. *original.png*;
* Die Methode *Start* wurde in *Launch* umbenannt und ihr Inhalt wurde ebenfalls geändert - Methodenaufruf *Test1* entfernt;
* einige Leerzeilen entfernt etc.

Das folgende Bild zeigt alle erwähnten Änderungen, die von einigen Desktop-Vergleichstools erkannt wurden. Es funktioniert einwandfrei, alle Unterschiede werden erkannt und in einer Benutzeroberfläche hervorgehoben.

![](comparison/java/images/how-to-compare-source-code-files2.png)

Manchmal benötigen Sie jedoch einige Funktionen, die vorhandene Vergleichstools nicht bieten, oder Sie möchten den Vergleichsprozess auf Ihre eigene Weise implementieren. Dann benötigen Sie auf jeden Fall eine Möglichkeit, Dokumente programmatisch zu vergleichen und entdeckte Änderungen per Code zu verwalten. Hier kommen die Funktionen von **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison)** zu Hilfe, also sehen wir uns an, wie man Quellcodedateien damit vergleicht.

## Vergleichen Sie CSharp-, Java-, C++-, JavaScript-, Python- und Ruby-Dateien mit GroupDocs.Comparison
 

---

Mit der **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison)** API können Sie zwei oder mehr Quellcodedateien vergleichen, Unterschiede zwischen ihnen erkennen und dann entscheiden, was mit jeder erkannten Änderung geschehen soll - Akzeptieren oder verwerfen vor dem Speichern des resultierenden Dokuments, Generieren eines HTML-Berichts mit Vergleichsergebnissen usw.

Im Allgemeinen müssen Sie diesen Schritten folgen, um zwei Quellcodedateien zu vergleichen (eine Liste anderer unterstützter Formate finden Sie [hier](https://wiki.lisbon.dynabic.com/display/comparison/Supported+File+Formats)):

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad des Zieldokuments oder den Stream an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf und führen Sie einen Dateivergleich durch.

In diesem Stadium können Sie den Vergleichsbericht im HTML-Format speichern und überprüfen. Wenn Sie eine Sammlung erkannter Änderungen zur weiteren Verarbeitung programmgesteuert abrufen müssen, müssen Sie:

* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf und rufen Sie die Liste der erkannten Änderungen ab;
* Setzen Sie [ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) des erforderlichen Änderungsobjekts auf [ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) oder [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) Wert;
* Instanziieren Sie das Objekt [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions), das eine Liste der Änderungen enthält, die auf das resultierende Dokument angewendet (oder abgelehnt) werden sollen;
* Aufruf [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,% 20com.groupdocs.comparison.options.ApplyChangeOptions)) und speichern Sie das Dokument.

Mehr über die Eigenschaft ComparisonAction erfahren Sie [hier](https://wiki.lisbon.dynabic.com/display/comparison/How+to+merge+source+code+files).

Die folgenden Codebeispiele zeigen, wie Sie zwei CS-Dateien vergleichen und erkannte Änderungen in einem bestimmten Bereich akzeptieren oder ablehnen.

<script src="https://gist.github.com/groupdocs-comparison-gists/a7fa2bad5b8034df93e8e68d3cba83fc.js"></script>

Als Ergebnis erhalten wir eine zusammengeführte CS-Datei, in der die gelöschten Elemente <font color="red">rot</font> , die hinzugefügten <font color="blue">blau</font> und die geänderten <font color="green">grün</font> markiert sind.

Außerdem erhalten Sie eine Datei im HTML-Format mit geänderten Stellen im Code.

| Die resultierende HTML-Datei | Die Ergebnis-HTML-Datei, die die ComparisonAction-Eigenschaft | verwendet
|------------------------------------------------------------- --------------------|------------------------ -------------------------------------------------- |
| ![](comparison/java/images/how-to-compare-source-code-files_result1.png) | ![](comparison/java/images/how-to-compare-source-code-files_result2.png) |

## Mehr Ressourcen

---

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


