---
id: how-to-merge-source-code-files
url: comparison/net/how-to-merge-source-code-files
title: "So führen Sie Quellcodedateien zusammen"
weight: 8
description: "In diesem Artikel wird erläutert, wie Sie das Zusammenführen von Dateien in GroupDocs.Comparison für .NET steuern."
keywords: "Dokumente zusammenführen, Dokumente unterscheiden, Dokumente vergleichen, Dateien vergleichen"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Dokumentenvergleich
      description: "Vergleichen Sie Dokumente nativ mit hoher Leistung unter Verwendung der C#-Sprache und GroupDocs.Comparison für .NET"
Produktcode: Vergleich
Produktplattform: net
showVideo: Stimmt
wie man:
name: So erhalten Sie Quell- und Zieltext in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie Quell- und Zieltext in .NET erhalten"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Quelldateipfad. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
- name: Änderungen ablehnen oder akzeptieren
text: Um Änderungen abzulehnen oder zu akzeptieren, greifen Sie auf das Feld ComparisonAction des Array-Elements zu und legen Sie den Wert Ablehnen oder Akzeptieren aus der Enumeration ComparisonAction fest.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
- Name: Änderungen übernehmen
text: Um Änderungen zu übernehmen, rufen Sie die Methode ApplyChanges des Klassenobjekts Comparer auf. Die Methode nimmt einen Dateistromparameter der resultierenden Datei und des Objekts der ApplyChangeOptions-Klasse, die ein ChangeInfo-Array enthalten sollte.
---

***

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) bietet die Möglichkeit, Quellcodedateien mithilfe der [ComparisonAction](https://apireference.groupdocs.com/comparison /net/groupdocs.comparison.result/changeinfo/properties/comparisonaction) Eigenschaften:

* [ComparisonAction.Accept](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/comparisonaction) akzeptiert die gefundenen Änderungen und fügt sie der Datei hinzu, ohne sie hervorzuheben;
* [ComparisonAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/comparisonaction) verwirft gefundene Änderungen und entfernt sie aus der Ergebnisdatei.

Im Folgenden sind die Schritte zum Anwenden/Ablehnen von Änderungen an der resultierenden Datei aufgeführt.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad des Zieldokuments oder den Stream an;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf;
* Rufen Sie die Methode [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) auf und rufen Sie die Liste der erkannten Änderungen ab;
* Setzen Sie [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) des erforderlichen Änderungsobjekts auf [ComparisonAction.Accept](https://apireference.groupdocs .com/net/comparison/groupdocs.comparison.result/comparisonaction) oder [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction)-Wert;
* Rufen Sie die Methode [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) auf und übergeben Sie die Sammlung der Änderungen an sie.

## Beispiel einer Merge-Quellcodedatei mithilfe von GroupDocs.Comparison

---

Beispielsweise müssen Sie mehrere Versionen von Quellcodedateien vergleichen und zusammenführen und Änderungen akzeptieren oder verwerfen, die von verschiedenen Personen vorgenommen wurden.

![](/comparison/net/images/how-to-merge-source-code-file-source.png)
![](/comparison/net/images/how-to-merge-source-code-file-target.png)

Die Unterschiede zeigen, dass zwei Methoden in die Datei **source.cs** geschrieben werden: *AddNumbers* und *Sum*.

Wenn Sie ComparisonAction nicht verwendet haben, werden in der resultierenden Datei alle Änderungen festgeschrieben und diese Methoden werden entfernt, aber wenn Sie das Zusammenführen von Dateien steuern müssen, wird die [ComparisonAction](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.result/changeinfo/properties/comparisonaction) wird Ihnen dabei helfen.

## Beispiel für die Verwendung von ComparisonAction

---

Die folgenden Codebeispiele zeigen, wie zwei Quellcodedateien zusammengeführt werden.
```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    comparer.Compare(resultPath);

    ChangeInfo[] changes = comparer.GetChanges();
    for (int i = 0; i < 10; i++)
    {
        changes[i].ComparisonAction = ComparisonAction.Accept;
    }

    for (int i = 10; i < changes.Length; i++)
    {
    	changes[i].ComparisonAction = ComparisonAction.Reject;
    }

    comparer.ApplyChanges(File.Create(resultPath), new ApplyChangeOptions { Changes = changes });
}
```
## Das Ergebnis der Zusammenführung von Dateien

---

Als Ergebnis erhalten wir eine zusammengeführte Quellcodedatei, in der die gelöschten Elemente in <font color="red">**rot**</font> , die hinzugefügten in <font color="blue">**blau**</font> und die geänderten in <font color="green">**grün**</font> markiert sind.

Außerdem erhalten Sie eine Datei im HTML-Format mit geänderten Stellen im Code.

| Ergebnisquellcodedatei | Ergebnis-HTML-Datei |
| --- | --- |
| ![](/comparison/net/images/how-to-merge-source-code-file-result-CS.png) | ![](/comparison/net/images/how-to-merge-source-code-file-result-HTML.png) |

Wie Sie den resultierenden Dateien entnehmen können, wurde nur eine der beiden Methoden entfernt.

## Mehr Ressourcen

---

### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Dokumentenvergleich für ein modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Kostenlose Online-App
Zusammen mit der voll ausgestatteten .NET-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
