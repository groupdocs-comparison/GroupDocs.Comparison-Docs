---
id: get-changes-coordinates
url: comparison/net/get-changes-coordinates
title: "Änderungskoordinaten erhalten"
weight: 5
description: "In diesem Artikel wird erläutert, wie Sie Koordinaten für erkannte Änderungen in der Vorschau einer Dokumentseite erhalten, wenn Sie Dokumente mit GroupDocs.Comparison für .NET vergleichen"
keywords: "Dokumente vergleichen, Änderungskoordinaten abrufen"
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
name: So erhalten Sie Änderungskoordinaten in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie Änderungskoordinaten in .NET erhalten"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie CalculateCoordinates mit dem Wert true an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und setzen Sie den Vergleichsoptionsparameter.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
- name: Ausgabe ändert Koordinaten
Text: Zeigen Sie Informationen zu den Änderungskoordinaten mithilfe des Box-Felds für jedes Element des Änderungsinfo-Objekts an und verwenden Sie dann das Feld mit dem Namen der Koordinate.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** ermöglicht es, Änderungen zwischen Quell- und Zieldokumenten zu erkennen und Änderungskoordinaten in Dokumentvorschaubildern zu erhalten. Diese Koordinaten können sehr nützlich sein, um erkannte Änderungen in Dokumentvorschaubildern mit einigen Grafiken hervorzuheben (z. B. ein rotes Rechteck um jede erkannte Änderung platzieren).

Im Folgenden sind die Schritte zum Abrufen von Änderungskoordinaten aufgeführt.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) und legen Sie [CalculateCoordinates](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/compareoptions/properties/calculatecoordinates) Eigenschaft auf true;
* Rufen Sie die Methode [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) Objekt aus dem vorherigen Schritt;
* Rufen Sie die Methode [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) auf.

Das folgende Codebeispiel zeigt, wie mehrere Dokumente mit bestimmten Optionen verglichen werden.

## Beispiel für die Koordinatenberechnung

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions(){ CalculateCoordinates = true };
    comparer.Compare(compareOptions);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    	Console.WriteLine("Change Type: {0}, X: {1}, Y: {2}, Text: {3}", change.Type, change.Box.X, change.Box.Y, change.Text);
}
```

## Mehr Ressourcen

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
