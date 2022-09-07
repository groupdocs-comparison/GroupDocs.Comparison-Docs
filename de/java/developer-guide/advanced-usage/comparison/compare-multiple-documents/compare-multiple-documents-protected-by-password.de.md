---
id: vergleiche-mehrere-dokumente-passwortgeschützt
url: comparison/java/compare-multiple-documents-protected-by-password
title: "Vergleichen Sie mehrere passwortgeschützte Dokumente"
weight: 1
description: "Dieser Artikel beschreibt, wie Sie mehrere passwortgeschützte Word-Dokumente oder PowerPoint-Präsentationen mit GroupDocs.Comparison for Java API vergleichen."
keywords: "Vergleichen Sie mehrere passwortgeschützte Dokumente, vergleichen Sie mehrere geschützte Dokumente"
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
name: So vergleichen Sie mehrere passwortgeschützte Dokumente
        description: "Erfahren Sie, wie Sie mehrere passwortgeschützte Dokumente vergleichen"
Schritte:
- name: 'Comparer'-Objekt erstellen
Text: Objekt der Klasse „Comparer“ erstellen, Quelldokument übergeben und Optionen mit Passwort als Konstruktorargument laden
- name: Erstes Zieldokument hinzufügen
text: Verwenden Sie die 'Add'-Methode, um das erste Zieldokument hinzuzufügen und Optionen mit Passwort zum Vergleichen zu laden
- name: Zweites Zieldokument hinzufügen
text: Verwenden Sie die 'add'-Methode, um ein zweites Zieldokument hinzuzufügen und Optionen mit Passwort zum Vergleichen zu laden
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
{{< alert style="info" >}}HINWEIS: Diese Funktion ist nur für Word-Dokumente, PowerPoint- und Open Document-Präsentationen verfügbar.{{< /alert >}}

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht den Vergleich von mehr als 2 passwortgeschützten Dokumenten.

Im Folgenden finden Sie die Schritte zum Vergleichen passwortgeschützter Dokumente.

* Objekt [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) instanziieren und Passwort für das Quelldokument angeben;
* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldokumentpfad oder -stream und [LoadOptions](https://apireference.groupdocs.com/ Comparison/Java/com.groupdocs.comparison.options.load/LoadOptions) Objekt, das im vorherigen Schritt erstellt wurde;
* Instanziieren Sie ein weiteres [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions)-Objekt und geben Sie das Passwort für das Zieldokument an;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments und [LoadOptions]( https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) Objekt, das im vorherigen Schritt erstellt wurde. Wiederholen Sie diesen Schritt für jedes passwortgeschützte Zieldokument;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) auf.
        



Das folgende Codebeispiel zeigt, wie passwortgeschützte Dokumente verglichen werden.

## Vergleichen Sie mehrere geschützte Dokumente von der lokalen Festplatte

<script src="https://gist.github.com/groupdocs-comparison-gists/9978b3445782673d7c20705c50936bd4.js"></script>

## Vergleichen Sie mehrere geschützte Dokumente aus dem Stream

<script src="https://gist.github.com/groupdocs-comparison-gists/4409fcbfc437b1e1c82fcd0db650cc39.js"></script>

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

