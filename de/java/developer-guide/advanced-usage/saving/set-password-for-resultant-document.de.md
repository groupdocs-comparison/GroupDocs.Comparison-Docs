---
id: set-password-for-resultant-document
url: comparison/java/set-password-for-resultant-document
title: "Legen Sie das Passwort für das resultierende Dokument fest"
weight: 2
description: "In diesem Artikel wird erläutert, wie Sie das Dokumentkennwort nach dem Dateivergleich in Ihren Java-Anwendungen mithilfe von GroupDocs.Comparison für Java festlegen."
keywords: "Dokument vergleichen und mit Passwort schützen"
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
Name: Wie man das Passwort für das resultierende Dokument festlegt
        description: "Erfahren Sie, wie Sie ein Passwort für das resultierende Dokument festlegen"
Schritte:
- name: 'Comparer'-Objekt erstellen
text: Objekt der Klasse „Comparer“ erstellen und Quelldokument als Konstruktorargument übergeben
- Name: Fügen Sie ein oder mehrere Zieldokumente hinzu
text: Verwenden Sie die 'Add'-Methode, um ein oder mehrere Dokumente zum Vergleichen hinzuzufügen
- name: Objekt zum Vergleichen von Optionen einrichten
text: Erstellen Sie ein Objekt der Klasse „CompareOptions“ und rufen Sie seine Methode „setPasswordSaveOption(PasswordSaveOption.User)“ auf, um die entsprechenden Einstellungen zu aktivieren
- Name: Dokumentspeicherobjekt einrichten
text: Erstellen Sie ein Objekt der Klasse 'SaveOptions' und verwenden Sie dessen Methode 'setPassword()', um das Passwort des Ergebnisdokuments zu übergeben
- name: Vergleichsprozess ausführen
Text: Rufen Sie die 'compare'-Methode auf, um einen Vergleichsprozess auszuführen, der Vergleichsoptionen als zweites Argument übergibt und Optionen als drittes Argument speichert
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht es, das resultierende Dokument mit einem Passwort zu schützen.

Im Folgenden sind die Schritte zum Schutz des resultierenden Dokuments aufgeführt:
* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an.
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) mit
* Legen Sie die Eigenschaft [PasswordSaveOption](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setPasswordSaveOption(int)) von [CompareOptions](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.options/CompareOptions) Objekt zu [PasswordSaveOption.User](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PasswordSaveOption#User );
* Objekt [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) instanziieren und mit [Password](https://apireference.groupdocs.com/) festlegen Comparison/Java/com.groupdocs.comparison.options.save/SaveOptions#setPassword(java.lang.String)) Setter gewünschtes Passwort für resultierendes Dokument;
* Aufruf [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,% 20com.groupdocs.comparison.options.CompareOptions)) Methode und übergeben Sie [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) und [CompareOptions](https ://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) Objekte zu einer Methode;
    



Das folgende Code-Snippet zeigt, wie Dokumente verglichen und das resultierende Dokument mit einem Passwort geschützt werden

<script src="https://gist.github.com/groupdocs-comparison-gists/c0c27c8c12411d3c228f9df899b4fc92.js"></script>

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

