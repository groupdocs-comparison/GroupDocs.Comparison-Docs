---
id: load-password-protected-documents
url: comparison/java/load-password-protected-documents
title: "Laden Sie passwortgeschützte Dokumente"
weight: 3
description: "Dieser Artikel erklärt, wie Sie passwortgeschützte PDF-, Word-, Excel- und PowerPoint-Dokumente laden, wenn Sie GroupDocs.Comparison für Java verwenden."
keywords: "Passwortgeschütztes Dokument laden, Geschütztes Dokument mit GroupDocs.Comparison laden"
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
name: So vergleichen Sie passwortgeschützte Dokumente
        description: "Erfahren Sie, wie Sie passwortgeschützte Dokumente vergleichen"
Schritte:
- name: 'Comparer'-Objekt erstellen
Text: Erstellen Sie ein 'Comparer'-Objekt, das als Konstruktorargument das Quelldokument und das Objekt von 'LoadOptions' mit Passwort übergibt
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'add'-Methode, um ein oder mehrere Dokumente zum Vergleich hinzuzufügen, indem Sie als zweites Argument ein Objekt von 'LoadOptions' mit dem Passwort übergeben
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht den Vergleich von passwortgeschützten Dokumenten.

Im Folgenden finden Sie die Schritte zum Vergleichen passwortgeschützter Dokumente.

* Objekt [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) instanziieren und Passwort für das Quelldokument angeben;
* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldokumentpfad oder -stream und [LoadOptions](https://apireference.groupdocs.com/ Comparison/Java/com.groupdocs.comparison.options.load/LoadOptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Instanziieren Sie ein weiteres [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions)-Objekt und geben Sie das Passwort für das Zieldokument an;
* Aufruf [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)) -Methode und geben Sie den Zieldokumentpfad oder -stream und das im vorherigen Schritt erstellte [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions)-Objekt an;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf.

Das folgende Codebeispiel zeigt, wie passwortgeschützte Dokumente verglichen werden.

<script src="https://gist.github.com/groupdocs-comparison-gists/8c2a3079211b7489e37fa3e8b715d80c.js"></script>

## Mehr Ressourcen

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

