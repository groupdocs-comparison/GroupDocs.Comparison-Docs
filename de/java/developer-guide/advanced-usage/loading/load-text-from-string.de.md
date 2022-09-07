---
id: lade-text-aus-string
url: comparison/java/load-text-from-string
title: "Text aus String laden"
weight: 5
description: "In diesem Artikel wird erläutert, wie Sie Werte aus Variablen vom Typ Zeichenfolge laden, wenn Sie GroupDocs.Comparison für Java verwenden."
keywords: "Werte aus Variablen vom Typ String laden, Text mit GroupDocs.Comparison laden"
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
name: So laden Sie Text aus einer Zeichenfolge
        description: "Erfahren Sie, wie Sie Text aus Zeichenfolgen erstellen"
Schritte:
- name: Objekt der Klasse „LoadOptions“ erstellen
text: 'LoadOptions'-Objekt erstellen
- name: Ladeoptionen konfigurieren
text: Verwenden Sie die Methode 'setLoadText(true)', um Comparer wissen zu lassen, dass das Konstruktorargument Quelltext sein wird
- name: Objekt der Klasse „Comparer“ erstellen
text: Erstellt ein 'Comparer'-Objekt, das Quelltext und Ladeoptionen als Konstruktorargumente übergibt
- Name: Zieltext hinzufügen
text: Verwenden Sie die 'add'-Methode, um Text zum Vergleichen hinzuzufügen und Optionen zu laden
- name: Vergleichsprozess ausführen
text: Rufen Sie die 'compare'-Methode auf, um den Vergleichsprozess auszuführen und den Pfad des Ergebnisdokuments zu erhalten
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) ermöglicht den Vergleich von Werten aus Variablen vom Typ *string*.
Im Folgenden sind die Schritte zum Vergleichen von Text aus Variablen aufgeführt:

* Instanziiere das Objekt [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) und setze [LoadText](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) auf true (dies zeigt an, dass die übergebene Zeichenfolge zu vergleichenden Text enthält, nicht den Dateipfad);
* Übergeben Sie den Inhalt der Quellzeichenfolge zusammen mit den erstellten [LoadOptions](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.options.load/LoadOptions)
* Übergeben Sie den Inhalt der Zielzeichenfolge an [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load .LoadOptions)) zusammen mit der Methode [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions), in der [LoadText](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) auf true gesetzt ist.

Das folgende Code-Snippet zeigt, wie Werte aus Variablen geladen werden:

<script src="https://gist.github.com/groupdocs-comparison-gists/425813e53c5d5fb0fd54bd7cbdbbc8cb.js"></script>
---

Kann auch mit verschiedenen Arten der Dokumentenübergabe (sei es Dateipfad oder Stream) kombiniert werden, wie im folgenden Codebeispiel gezeigt:

<script src="https://gist.github.com/groupdocs-comparison-gists/c600672647eab7f9c38ec9bd77466e67.js"></script>

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

