---
id: get-file-info
url: comparison/java/get-file-info
title: "Dateiinformationen erhalten"
weight: 2
description: ""
Schlüsselwörter:
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
name: So erhalten Sie Dateiinformationen
        description: "Erfahren Sie, wie Sie mithilfe der Vergleichs-API Informationen über die Datei erhalten"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Erstellt ein 'Comparer'-Objekt, das den Dateipfad als Konstruktorargument übergibt
- Name: Dokumentinformationen mit einer speziellen Methode abrufen
text: Rufen Sie die 'getSource()'-Methode auf, um das 'Document'-Objekt zu erhalten. Rufen Sie dann die Methode „getDocumentInfo()“ des Objekts „Document“ auf, um Dokumentinformationen abzurufen
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht das Abrufen von Dateiinformationen, darunter:

* [FileType](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getFileType()) – Dateityp des Dokuments (PDF, Word-Dokument, Excel-Tabelle, PowerPoint-Präsentation oder Bild etc.);
* [PageCount](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPageCount()) – Anzahl der Dokumentseiten;
* [FileSize](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getSize()) - Dateigröße des Dokuments;
* [PagesInfo](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPagesInfo()) – repräsentiert Informationen über die Seite.

Die folgenden Codebeispiele zeigen, wie Dateiinformationen abgerufen werden.

## Rufen Sie Dateiinformationen für die Datei von der lokalen Festplatte ab

<script src="https://gist.github.com/groupdocs-comparison-gists/cba10d2dea13e2c62383d7e88c3e6615.js"></script>

## Holen Sie sich die Datei für die Datei aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/19baec4618b31a67fa06db5a74e68497.js"></script>

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

