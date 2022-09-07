---
id: how-to-compare-source-code-files
url: comparison/net/how-to-compare-source-code-files
title: "So vergleichen Sie Quellcodedateien"
weight: 6
description: "Dieser Artikel beschreibt, wie Sie Dateien mit GroupDocs.Comparison für .NET vergleichen. Außerdem erfahren Sie, wie Sie zwei oder mehr Quellcodedateien vergleichen und ihren Vergleich beeinflussen können."
keywords: "Quellcode-Dateien vergleichen, Quellcode-Dateien, wie man Quellcode-Dateien vergleicht Dateien, ComparisonAction, ComparisonAction.Accept, ComparisonAction.Reject"
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
name: So vergleichen Sie Quellcodedateien in .NET
    description: "So vergleichen Sie Quellcodedateien in .NET Schritt für Schritt"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfad der Quelldatei oder den Stream-Parameter. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Dateien vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts ohne Parameter auf.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
- name: Änderungen verwerfen
text: Um Änderungen abzulehnen, greifen Sie auf das Feld ComparisonAction des Array-Elements zu und legen Sie den Reject-Wert aus der Enumeration ComparisonAction fest.
- Name: Änderungen übernehmen
text: Um Änderungen zu übernehmen, rufen Sie die Methode ApplyChanges des Klassenobjekts Comparer auf. Die Methode nimmt einen Dateistromparameter der resultierenden Datei und des Objekts der ApplyChangeOptions-Klasse, die ein ChangeInfo-Array enthalten sollte.
---

***

Es gibt viele Vergleichstools, die es mehreren Benutzern ermöglichen, ihre Änderungen effektiv zu verwalten, zu akzeptieren oder abzulehnen, wenn sie an Quellcode zusammenarbeiten, der in CSharp, Java, Python, Ruby und anderen Programmiersprachen geschrieben wurde. Die meisten dieser Tools sind Desktop-Anwendungen, die kostenlos oder kostenpflichtig sind, leistungsstarke Funktionen bieten, ihre Vor- und Nachteile haben, aber alle davon ausgehen, dass Sie Dateien manuell vergleichen.

Sehen wir uns einen häufigen Anwendungsfall an, wenn Sie zwei Versionen einer C#-Quellcodedatei (CSharp) überprüfen müssen, die von zwei verschiedenen Personen bearbeitet wurden, und die richtige Variante für jeden bearbeiteten Codeblock auswählen müssen. Bitte überprüfen Sie die source.cs- und target.cs-Dateien, die wir im folgenden Bild vergleichen werden.

![](comparison/net/images/how-to-compare-source-code-files1.png)

Wie wir sehen können, gibt es mehrere Unterschiede zwischen den verglichenen Dateien:
* Klassennamen sind unterschiedlich - *CropImage* vs *ImageCropTests*;
* *Test1*-Methode ist in einer *target.cs*-Datei nicht vorhanden;
* Bitmap-Bildpfad wurde in *Test2* geändert - *input.png* vs. *original.png*;
* Die Methode *Start* wurde in *Launch* umbenannt und ihr Inhalt wurde ebenfalls geändert - Methodenaufruf *Test1* entfernt;
* einige Leerzeilen entfernt etc.

Das folgende Bild zeigt alle erwähnten Änderungen, die von einigen Desktop-Vergleichstools erkannt wurden. Es funktioniert einwandfrei, alle Unterschiede werden erkannt und in einer Benutzeroberfläche hervorgehoben.

![](comparison/net/images/how-to-compare-source-code-files2.png)

Manchmal benötigen Sie jedoch einige Funktionen, die vorhandene Vergleichstools nicht bieten, oder Sie möchten den Vergleichsprozess auf Ihre eigene Weise implementieren. Dann benötigen Sie auf jeden Fall eine Möglichkeit, Dokumente programmatisch zu vergleichen und entdeckte Änderungen per Code zu verwalten. Hier kommen die Funktionen von **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison/net)** zu Hilfe, also sehen wir uns an, wie man Quellcodedateien damit vergleicht.

## Vergleichen Sie CSharp-, Java-, C++-, JavaScript-, Python- und Ruby-Dateien mit GroupDocs.Comparison
 

 ---

Mit der **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison/net)** API können Sie zwei oder mehr Quellcodedateien vergleichen, Unterschiede zwischen ihnen erkennen und dann entscheiden, was mit jeder zu tun ist erkannte Änderung - akzeptieren oder verwerfen Sie sie, bevor Sie das resultierende Dokument speichern, erstellen Sie einen HTML-Bericht mit Vergleichsergebnissen usw.

Im Allgemeinen müssen Sie diesen Schritten folgen, um zwei Quellcodedateien zu vergleichen (eine Liste anderer unterstützter Formate finden Sie [hier](https://wiki.lisbon.dynabic.com/display/comparison/Supported+File+Formats)):

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad des Zieldokuments oder den Stream an;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) auf und führen Sie einen Dateivergleich durch.







In diesem Stadium können Sie den Vergleichsbericht im HTML-Format speichern und überprüfen. Wenn Sie eine Sammlung erkannter Änderungen zur weiteren Verarbeitung programmgesteuert abrufen müssen, müssen Sie:

* Rufen Sie die Methode [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) auf und rufen Sie die Liste der erkannten Änderungen ab;
* Stellen Sie die gewünschte [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) für das benötigte Änderungsobjekt auf [ComparisonAction.Accept](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) oder [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction)-Wert;
* Instanziieren Sie das Objekt [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions), das eine Liste der Änderungen enthält, die auf das resultierende Dokument angewendet (oder abgelehnt) werden sollen;
* Rufen Sie die Methode [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) auf und speichern Sie das Dokument.

Mehr über die Eigenschaft ComparisonAction erfahren Sie [hier](https://wiki.lisbon.dynabic.com/display/comparison/How+to+merge+source+code+files).

Die folgenden Codebeispiele zeigen, wie Sie zwei CS-Dateien vergleichen und erkannte Änderungen in einem bestimmten Bereich akzeptieren oder ablehnen.

```csharp
using (Comparer comparer = new Comparer("source.cs"))
{
    comparer.Add("target.cs");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject; // This is how to reject first detected difference;
    changes[1].ComparisonAction = ComparisonAction.Reject; // This is how to reject second detected difference;
    changes[2].ComparisonAction = ComparisonAction.Reject; // This is how to reject third detected difference;
    comparer.ApplyChanges(File.Create("result.cs"), new ApplyChangeOptions { Changes = changes });
}     


```

Als Ergebnis erhalten wir eine zusammengeführte CS-Datei, in der die gelöschten Elemente <font color="red">rot</font> , die hinzugefügten <font color="blue">blau</font> und die geänderten <font color="green">grün</font> markiert sind.


Außerdem erhalten Sie eine Datei im HTML-Format mit geänderten Stellen im Code.

| Die resultierende HTML-Datei | Die Ergebnis-HTML-Datei, die die ComparisonAction-Eigenschaft | verwendet
| --- | --- |
| ![](comparison/net/images/how-to-compare-source-code-files_result1.PNG) | ![](comparison/net/images/how-to-compare-source-code-files_result2.PNG) |

## Mehr Ressourcen

---

### Erweiterte Nutzungsthemen
Weitere Informationen zu Dokumentvergleichsfunktionen finden Sie im [Abschnitt zur erweiterten Verwendung]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

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

Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

