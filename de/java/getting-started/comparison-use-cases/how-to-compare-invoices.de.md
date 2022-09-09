---
id: wie-rechnungen-vergleichen
url: comparison/java/how-to-compare-invoices
title: "So vergleichen Sie Rechnungen"
weight: 3
description: "Sie erfahren, wie Sie GroupDocs.Comparison für Java in Ihrer Produktion beim Rechnungsvergleich einsetzen können. Sehen Sie sich die Dateivergleichsempfindlichkeitskonfiguration und andere Anwendungsfälle der GroupDocs.Comparison-API an"
keywords: "Vergleichen Sie docx-Dateien, Rechnungsvergleich, wie man Rechnungen vergleicht"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Rechnungen abgleichen
        description: "Das Produkt ermöglicht den Abgleich von Rechnungen"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: Wie man Rechnungen abgleicht
        description: "Erfahren Sie, wie Sie Rechnungen in einem Java- oder Kotlin-Projekt abgleichen"
Schritte:
- name: Quellrechnung laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die die Quellrechnung als Konstruktorparameter übergibt
- name: Zielrechnungen laden
Text: Fügen Sie eine oder mehrere Zielrechnungen hinzu, um sie mit der Ausgangsrechnung zu vergleichen
- Name: Quell- und Zielrechnungen vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Manchmal müssen Sie beim Vergleichen von Dateien maximale Genauigkeit erreichen. Angenommen, Sie haben zwei Versionen eines wichtigen Dokuments und müssen Unterschiede Zeichen für Zeichen finden oder umgekehrt, Sie müssen die Dokumente vergleichen, aber die Details sind für Sie nicht wichtig, und Sie benötigen nur Wörter, die Änderungen aufweisen . **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** bietet die Möglichkeit, Dokumente mit Empfindlichkeitseinstellungen zu vergleichen

Beispielsweise liegen zwei Rechnungen im DOCX-Format vor, deren Inhalt Sie mit maximaler Detailgenauigkeit und Vergleichsempfindlichkeit vergleichen müssen.

| Quellenrechnung | Zielrechnung |
|------------------------------------------------------------- --------|----------------------------------------- ------------------|
| ![](/comparison/java/images/how-to-compare-invoices.png) | ![](/comparison/java/images/how-to-compare-invoices_1.png) |

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison) bietet die Möglichkeit, zwei Dateien im DOCX-Format (oder anderen [unterstützten Dateiformaten]) zu vergleichen ({{< ref "comparison/java /getting-started/supported-document-formats.md" >}})) mit Anpassung der Detaillierungsstufe und [Vergleichsempfindlichkeit](https://docs.groupdocs.com/display/comparisonjava/Set+Comparison+Sensitivity+While +Vergleichen+Dokumente).

Im Folgenden finden Sie die Schritte zum Vergleichen zweier DOCX-Dateien mit bestimmten Einstellungen für die Detaillierungsstufe und [Vergleichsempfindlichkeit.]({{< ref "comparison/java/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >>}})

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) mit dem gewünschten [setSensitivityOfComparison](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setSensitivityOfComparison(int)) und [setDetalisationLevel](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setDetalisationLevel(int)) Wert;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) auf und Übergeben Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) an die Methode.
    


Die folgenden Codebeispiele zeigen, wie zwei DOCX-Dateien verglichen werden.

<script src="https://gist.github.com/groupdocs-comparison-gists/c0ea4e8b64b330c78449bafa4d733b04.js"></script>

Als Ergebnis erhalten wir eine DOCX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> markiert sind, die hinzugefügten – in <font color="blue">**blau**</font> und die geänderten – in <font color="green">**grün**</font>

| Ergebnisrechnung |
|------------------------------------------------------------- ----------|
| ![](/comparison/java/images/how-to-compare-invoices_2.png) |

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

