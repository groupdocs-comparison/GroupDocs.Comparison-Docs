---
id: how-to-merge-source-code-files
url: comparison/java/how-to-merge-source-code-files
title: "So führen Sie Quellcodedateien zusammen"
weight: 8
description: "In diesem Artikel wird erläutert, wie Sie die Dateizusammenführung in GroupDocs.Comparison für Java steuern."
keywords: "Dokumente zusammenführen, Dokumente unterscheiden, Dokumente vergleichen, Dateien vergleichen"
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
name: Wie man Quellcodedateien zusammenführt
        description: "Erfahren Sie, wie Sie Quellcodedateien mithilfe von Vergleichen zusammenführen"
Schritte:
- Name: Dokumente vergleichen
text: Ausgangs- und Zieldokument wie gewohnt vergleichen
- name: Ermittelte Änderungen abrufen
text: Verwenden Sie die Methode 'getChanges()' des 'Comparer'-Objekts, um auf alle erkannten Änderungen zuzugreifen
- Name: Akzeptieren oder verwerfen Sie jede Änderung
text: Verwenden Sie die Methode 'setComparisonAction()', um jede Änderung mit den Konstanten 'ComparisonAction.ACCEPT' und 'ComparisonAction.REJECT' zu akzeptieren oder abzulehnen
- name: Quellcodedateien zusammenführen
Text: Verwenden Sie die 'applyChanges()'-Methode des Vergleichsobjekts, um das Objekt von 'ApplyChangeOptions' mit Änderungen zu übergeben, um Änderungen anzuwenden
---

***

[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) bietet die Möglichkeit, Quellcodedateien mithilfe der [ComparisonAction](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction) Eigenschaften:

* [ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) akzeptiert die gefundenen Änderungen und fügt sie ohne Hervorhebung zur Datei hinzu;
* [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) verwirft gefundene Änderungen und entfernt sie aus der Ergebnisdatei.

Im Folgenden sind die Schritte zum Anwenden/Ablehnen von Änderungen an der resultierenden Datei aufgeführt.

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad des Zieldokuments oder den Stream an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) auf;
* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf und rufen Sie die Liste der erkannten Änderungen ab;
* Setzen Sie [ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) des erforderlichen Änderungsobjekts auf [ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) oder [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) Wert;
* Rufen Sie die Methode [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.io.OutputStream,%20com.groupdocs.comparison.options.ApplyChangeOptions)) auf und Sammlung von Änderungen daran übergeben.

## Beispiel einer Merge-Quellcodedatei mithilfe von GroupDocs.Comparison

---

Beispielsweise müssen Sie mehrere Versionen von Quellcodedateien vergleichen und zusammenführen und Änderungen akzeptieren oder verwerfen, die von verschiedenen Personen vorgenommen wurden.

![](comparison/java/images/how-to-merge-source-code-file-source.png)
![](comparison/java/images/how-to-merge-source-code-file-target.png)

Die Unterschiede zeigen, dass zwei Methoden in die Datei **source.cs** geschrieben werden: *AddNumbers* und *Sum*.

Wenn Sie ComparisonAction nicht verwendet haben, werden in der resultierenden Datei alle Änderungen festgeschrieben und diese Methoden werden entfernt, aber wenn Sie das Zusammenführen von Dateien steuern müssen, wird die [ComparisonAction](https://apireference.groupdocs. com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) wird Ihnen dabei helfen.

## Beispiel für die Verwendung von ComparisonAction

---

Die folgenden Codebeispiele zeigen, wie zwei Quellcodedateien zusammengeführt werden.

<script src="https://gist.github.com/groupdocs-comparison-gists/0eada62d9c41ac852ad8ff18951e8abc.js"></script>

## Das Ergebnis der Zusammenführung von Dateien

---

Als Ergebnis erhalten wir eine zusammengeführte Quellcodedatei, in der die gelöschten Elemente in <font color="red">**rot**</font> , die hinzugefügten in <font color="blue">**blau**</font> und die geänderten in <font color="green">**grün**</font> markiert sind.

Außerdem erhalten Sie eine Datei im HTML-Format mit geänderten Stellen im Code.

| Ergebnisquellcodedatei | Ergebnis-HTML-Datei |
|------------------------------------------------------------- ------------------------|-------------------- -------------------------------------------------- |
| ![](comparison/java/images/how-to-merge-source-code-file-result-CS.png) | ![](comparison/java/images/how-to-merge-source-code-file-result-HTML.png) |

Wie Sie den resultierenden Dateien entnehmen können, wurde nur eine der beiden Methoden entfernt.

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
