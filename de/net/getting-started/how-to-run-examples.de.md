---
id: How-to-Run-Beispiele
url: comparison/net/how-to-run-examples
title: "So führen Sie Beispiele aus"
weight: 6
description: "In diesem Artikel erfahren Sie, wie Sie Beispiele ausführen. Wir bieten mehrere Lösungen, wie Sie GroupDocs.Comparison-Beispiele ausführen können, indem Sie Ihre eigenen erstellen oder unsere sofort einsatzbereiten Back-End- oder Front-End-Beispiele verwenden."
keywords: "Wie man Vergleiche durchführt, Grundlegende Verwendung, Wie man Beispiele durchführt"
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
Name: So führen Sie Beispiele in .NET aus
      description: "So führen Sie Beispiele in .NET Schritt für Schritt aus"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter ein.
---
{{< alert style="warning" >}}Bevor Sie ein Beispiel ausführen, vergewissern Sie sich, dass GroupDocs.Comparison erfolgreich installiert wurde.{{< /alert >}}

Wir bieten mehrere Lösungen an, wie Sie **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)**-Beispiele ausführen können, indem Sie Ihre eigenen erstellen oder unsere Back-End- oder Front-End-Beispiele verwenden out-of-the-box.

Bitte wählen Sie eine aus der folgenden Liste aus:


## Erstellen Sie ein Projekt von Grund auf neu

* Öffnen Sie Visual Studio und gehen Sie zu **Datei** -> **Neu** -> **Projekt**.
* Wählen Sie den entsprechenden Projekttyp aus - Konsolen-App, ASP.NET-Webanwendung usw.
* Installieren Sie **GroupDocs.Comparison for .NET** von Nuget oder der offiziellen GroupDocs-Website, indem Sie dieser [Anleitung] folgen ({{< ref "comparison/net/getting-started/installation.md" >}}).
* Codieren Sie Ihre erste Anwendung mit **GroupDocs.Comparison for .NET** wie folgt
```scharf
string sourceDocumentPath = @"C:\source.docx"; // HINWEIS: Geben Sie hier den tatsächlichen Pfad zum Quelldokument ein
string targetDocumentPath = @"C:\target.docx"; // HINWEIS: Geben Sie hier den tatsächlichen Pfad zum Quelldokument ein
string outputPath = @"C:\result.docx"; // HINWEIS: Geben Sie hier den tatsächlichen Pfad zum Quelldokument ein
    

using (Vergleicher Vergleicher = neuer Vergleicher (sourceDocumentPath))
{
Vergleicher.Hinzufügen (ZieldokumentPfad);
Vergleicher.Vergleichen (Ausgangspfad);
}
```
* Erstellen und führen Sie Ihr Projekt aus.
* Gerenderte Dokumentseiten werden an dem im Parameter *"outputPath"* angegebenen Pfad gespeichert.

## Führen Sie Back-End-Beispiele aus

Das vollständige Beispielpaket von **GroupDocs.Comparison** wird auf [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET) gehostet. Sie können die ZIP-Datei entweder [hier] herunterladen (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET/archive/master.zip) oder das Repository von GitHub mit Ihrem bevorzugten Git-Client klonen .
Falls Sie die ZIP-Datei herunterladen, extrahieren Sie die Ordner auf Ihrer lokalen Festplatte. Die extrahierten Dateien und Ordner sehen wie im folgenden Bild aus:

![](/comparison/net/images/how-to-run-examples.jpg)

In extrahierten Dateien und Ordnern finden Sie die CSharp-Lösungsdatei. Das Projekt wird in **Microsoft Visual Studio 2019** erstellt. Der Ordner **Ressourcen** enthält alle Beispieldokumente und Bilddateien, die in den Beispielen verwendet werden.
Um die Beispiele auszuführen, öffnen Sie die Projektmappendatei in Visual Studio und erstellen Sie das Projekt. Um fehlende Referenzen von **GroupDocs.Comparison** hinzuzufügen, siehe [Installationsanleitung]({{< ref "comparison/net/getting-started/installation.md" >}}). Alle Funktionen werden von **RunExamples.cs** aufgerufen.
Entkommentieren Sie die Funktion, die Sie ausführen möchten, und kommentieren Sie den Rest.

![](/comparison/net/images/how-to-run-examples_1.png)

## Führen Sie MVC-Beispiele aus

Sie können [GroupDocs.Comparison for .NET MVC Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC) folgendermaßen ausführen:

* Laden Sie [Quellcode](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC/archive/master.zip) von GitHub herunter oder klonen Sie dieses Repository
```scharf
Git-Klon https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC
```
* Lösung im VisualStudio öffnen. Aktualisieren Sie allgemeine Parameter in **web.config** und beispielbezogene Eigenschaften in **configuration.yml**, um Ihre Anforderungen zu erfüllen.
* Öffnen Sie [http://localhost:8080/comparison](http://localhost:8080/comparison) in Ihrem bevorzugten Browser

Weitere Einzelheiten zur Projektkonfiguration finden Sie in diesem [Leitfaden] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC#configuration).

## Führen Sie WebForms-Beispiele aus

Sie können [GroupDocs.Comparison for .NET Web.Forms Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms) wie folgt ausführen:
* Laden Sie [Quellcode](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms/archive/master.zip) von GitHub herunter oder klonen Sie dieses Repository
```scharf
Git-Klon https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms
```
* Lösung im VisualStudio öffnen. Aktualisieren Sie allgemeine Parameter in **web.config** und beispielbezogene Eigenschaften in **configuration.yml**, um Ihre Anforderungen zu erfüllen.
* Öffnen Sie [http://localhost:8080/comparison](http://localhost:8080/comparison) in Ihrem bevorzugten Browser

Weitere Einzelheiten zur Projektkonfiguration finden Sie in diesem [Leitfaden] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms#configuration).

## Von Docker aus ausführen

Verwenden Sie das Bild [Docker](https://www.docker.com/), um GroupDocs.Comparison für .NET-Funktionen auf einfache Weise auszuprobieren. Hier ist der Befehl zum Ausführen von GroupDocs.Comparison für .NET über das Docker-Image.

```csharp
mkdir DocumentSamples
mkdir Licenses
docker run -p 8080:8080 --env application.hostAddress=localhost -v `pwd`/DocumentSamples:/home/groupdocs/app/DocumentSamples -v `pwd`/Licenses:/home/groupdocs/app/Licenses groupdocs/comparison
## Open http://localhost:8080/comparison in your favorite browser.
```

## Beitragen

Wenn Sie ein Beispiel hinzufügen oder verbessern möchten, ermutigen wir Sie, zum Projekt beizutragen. Alle Beispiele in diesem Repository sind Open Source und können in Ihren eigenen Anwendungen frei verwendet werden.
Um einen Beitrag zu leisten, können Sie das Repository forken, den Code bearbeiten und eine Pull-Anforderung erstellen. Wir werden die Änderungen überprüfen und bei Bedarf in das Repository aufnehmen.

