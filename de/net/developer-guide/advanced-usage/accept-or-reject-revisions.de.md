---
id: Überarbeitungen akzeptieren oder ablehnen
url: comparison/net/accept-or-reject-revisions
title: "Überarbeitungen akzeptieren oder ablehnen"
weight: 4
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie Revisionen anwenden oder verwerfen, die während des Dokumentvergleichs mithilfe der integrierten Microsoft Word-Funktionalität gefunden wurden."
keywords: "Revision, Revisionsbearbeitung, Revision akzeptieren oder ablehnen, Änderung zur Revision anwenden"
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
name: So akzeptieren oder verwerfen Sie Revisionen in .NET
    description: "Erfahren Sie Schritt für Schritt, wie Sie Revisionen in .NET akzeptieren oder ablehnen"
Schritte:
- name: Erstellt ein Objekt
text: Erstellen Sie ein Objekt der RevisionHandler-Klasse. Der Konstruktor nimmt den Revisionspfad oder den Revisionsdateistrom.
- name: Überarbeitung abrufen
text: Rufen Sie die GetRevisions-Methode des RevisionHandler-Objekts auf und weisen Sie den Wert der RevisionInfo-Liste zu.
- Name: Überarbeitung annehmen oder ablehnen
Text: Wenn der Typ des Listenelements gleich dem Einfügungswert der Aufzählung RevisionType ist, dann wird der Wert der Aufzählung RevisionAction dem Aktionsfeld des Elements zugewiesen.
- Name: Revisionsänderungen anwenden
text: Um Änderungen zu übernehmen, rufen Sie die Methode ApplyRevisionChanges des RevisionHandler-Objekts auf. Die Methode nimmt einen Dateipfadparameter der resultierenden Datei und des Objekts der ApplyRevisionOptions-Klasse, die ein Changes-Feld enthalten sollte, das von der RevisionInfo-Liste initialisiert wird.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bietet die Möglichkeit, Revisionen aus einem Docx-Dateiformat abzurufen, zu verarbeiten und das Verarbeitungsergebnis zu speichern.
Unten sind die Schritte zum *Übernehmen* von Revisionen aus einem Dokument, *Annehmen/Ablehnen* von Revisionen und *Schreiben* des Verarbeitungsergebnisses in eine endgültige Datei.

* Instanziiere das Objekt [RevisionHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [GetRevisions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/getrevisions) auf und rufen Sie die Liste der erkannten Revisionen ab;
* Setzen Sie [Action](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisioninfo/properties/action) des erforderlichen Änderungsobjekts auf [RevisionAction.Accept](https://apireference .groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) oder [RevisionAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) Wert;
* Rufen Sie die Methode [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index) auf, an die Sie die neu erstellte Instanz von übergeben müssen das Objekt [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) und übergeben Sie ihm den Pfad oder Stream des resultierenden Dokuments, wobei Änderungen in den Revisionen erfasst werden.

Es ist auch möglich, alle Änderungen zusammen zu verarbeiten und eine Aktion für alle Änderungen anzuwenden. Im Folgenden finden Sie die Schritte zur Handhabung aller Änderungen:
* Instanziiere das Objekt [RevisionHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index) auf, an die Sie die neu erstellte Instanz von übergeben müssen das Objekt [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) und übergeben Sie ihm die Aktion ([RevisionAction.Accept](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.words.revision/revisionaction), [RevisionAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) oder [RevisionAction .None](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction)), das für alle Überarbeitungen gilt.

[ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions)-Klasse:
* [Änderungen](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/properties/changes) – Liste der Revisionsänderungen, die auf das endgültige Dokument angewendet werden müssen.
* [CommonHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/fields/commonhandler) – Eigenschaft, mit der Sie eine Aktion definieren können, um alle Revisionen zu behandeln.

Wenn Sie den Pfad oder die Datei zum resultierenden Dokument nicht an die Methode [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges) übergeben, wird die Änderungen werden in dieselbe Datei geschrieben, aus der die Revisionen stammen.

Das folgende Codebeispiel zeigt, wie Sie Revisionen aus einem Dokument abrufen, erkannte Revisionen akzeptieren / ablehnen und Änderungen am resultierenden Dokument speichern.

## Überarbeitungen von der lokalen Festplatte akzeptieren oder ablehnen

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## Überarbeitungen aus dem Stream akzeptieren oder ablehnen

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(File.OpenRead("Document_with_revision.docx")))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## Alle Überarbeitungen akzeptieren oder ablehnen

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
	revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { CommonHandler = RevisionAction.Accept });
}
```

## Ergebnis der Revisionsverarbeitung
Unten sind die Quell- und Ausgabedateien, die auf dem zuvor vorgestellten Code basieren.

| Quelldatei | Ergebnisdatei |
| --- | --- |
| ![](Vergleich/net/images/revision-file.png) | ![](Vergleich/net/images/result-revision-file.png) |

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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

