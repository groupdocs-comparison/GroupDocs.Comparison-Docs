---
id: Akzeptieren-oder-ablehnen-erkannter-Änderungen
url: comparison/net/accept-or-reject-detected-changes
title: "Erkannte Änderungen akzeptieren oder ablehnen"
weight: 1
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie Änderungen anwenden oder verwerfen, die während des Dokumentvergleichsprozesses mithilfe der GroupDocs.Comparison for .NET-API erkannt wurden."
keywords: "Änderungen auf das verglichene Dokument anwenden, Vergleichsänderungen ablehnen, Vergleichsänderungen dokumentieren"
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
name: So akzeptieren oder verwerfen Sie erkannte Änderungen in .NET
      description: "Erfahren Sie Schritt für Schritt, wie Sie erkannte Änderungen in .NET akzeptieren oder ablehnen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor nimmt den Pfad der Quelldatei oder den Stream-Parameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei oder zum Tagret-Dateistream mit der Add-Methode hinzu.
- Name: Dateien vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts ohne Parameter auf.
- name: Erstellt ein Array für Dateiänderungen
text: Rufen Sie die GetChanges-Methode für das Comparer-Objekt auf und weisen Sie das Ergebnis einem Array vom Typ ChangeInfo zu.
- name: Änderungen ablehnen oder akzeptieren
text: Um Änderungen abzulehnen oder zu akzeptieren, greifen Sie auf das Feld ComparisonAction des Array-Elements zu und legen Sie den Wert Ablehnen oder Akzeptieren aus der Enumeration ComparisonAction fest.
- Name: Änderungen anwenden
text: Um Änderungen zu übernehmen, rufen Sie die Methode ApplyChanges des Klassenobjekts Comparer auf. Die Methode nimmt einen Dateistromparameter der resultierenden Datei und des Objekts der ApplyChangeOptions-Klasse, die ein ChangeInfo-Array enthalten sollte.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet die Möglichkeit, bestimmte Änderungen zwischen Quell- und Zieldokumenten anzuwenden oder zu verwerfen und das resultierende Dokument mit (oder ohne) ausgewählten Änderungen zu speichern.
Im Folgenden sind die Schritte zum Anwenden/Ablehnen von Änderungen auf das resultierende Dokument aufgeführt.

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad des Zieldokuments oder den Stream an;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf;
* Rufen Sie die Methode [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) auf und rufen Sie die Liste der erkannten Änderungen ab;
* Setzen Sie [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) des erforderlichen Änderungsobjekts auf [ComparisonAction.Accept](https://apireference.groupdocs .com/net/comparison/groupdocs.comparison.result/comparisonaction) oder [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction)-Wert;
* Rufen Sie die Methode [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) auf und übergeben Sie die Sammlung der Änderungen an sie.

[ApplyChangeOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions)-Klasse:

* [Änderungen](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions/properties/changes) – Liste der Änderungen, die auf das resultierende Dokument angewendet werden müssen (oder nicht);
* [SaveOriginalState](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions/properties/saveoriginalstate) – Behält den Originalzustand des Vergleichsergebnisses bei, nachdem Änderungen angewendet wurden.

Das folgende Codebeispiel zeigt, wie erkannte Änderungen akzeptiert/abgelehnt werden.

## Akzeptieren oder Ablehnen von Änderungen für Dokumente, die auf der lokalen Festplatte gespeichert sind

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges(File.Create("result.docx"), new SaveOptions(), new ApplyChangeOptions() { Changes = changes });
}
```

## Akzeptieren oder Ablehnen von Änderungen für Dokumente, die als Stream bereitgestellt werden

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(new SaveOptions(), new CompareOptions());
    ChangeInfo[] changes = comparer.GetChanges(new GetChangeOptions());
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges(File.Create("result.docx"), new SaveOptions(), new ApplyChangeOptions() { Changes = changes });
}
```

## Das folgende Codebeispiel zeigt, wie erkannte Änderungen mit der SaveOriginalState-Option akzeptiert/abgelehnt werden

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges("resultWithRejectedChange.docx", new ApplyChangeOptions() { Changes = changes, SaveOriginalState = true });
    changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Accept;
    comparer.ApplyChanges("resultWithAcceptedChange.docx", new ApplyChangeOptions() { Changes = changes });
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
