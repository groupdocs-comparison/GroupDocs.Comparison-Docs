---
id: wie-man-powerpoint-präsentationen-vergleicht
url: comparison/java/how-to-compare-powerpoint-presentations
title: "So vergleichen Sie PowerPoint-Präsentationen"
weight: 4
description: "Der Artikel beschreibt ein mögliches Beispiel für den Einsatz des GroupDocs.Comparison für Java in Ihrer Arbeitspraxis und die Möglichkeit eines Softwareprodukts zum Auffinden von Stilunterschieden innerhalb von PowerPoint-Präsentationen"
keywords: "Präsentation vergleichen, Stiländerungen vergleichen, PPTX vergleichen, So vergleichen Sie PowerPoint-Dateien"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: PowerPoint-Folienvergleich
        description: "Das Produkt ermöglicht den Vergleich von PowerPoint-Folien"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So vergleichen Sie PowerPoint-Folien
        description: "Erfahren Sie, wie Sie PowerPoint-Folien in einem Java- oder Kotlin-Projekt vergleichen"
Schritte:
- Name: PowerPoint-Quelle laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die die PowerPoint-Quelle als Konstruktorparameter übergibt
- Name: Ziel-PowerPoints laden
Text: Fügen Sie ein oder mehrere Ziel-PowerPoints hinzu, um sie mit der Quelle zu vergleichen
- name: Quell- und Ziel-PowerPoints vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Möglicherweise müssen Sie zwei Versionen einer PowerPoint-Präsentation vergleichen, um die Unterschiede zwischen ihnen zu sehen (z. B. wenn ein Kollege sie direkt bearbeitet hat, ohne die Änderungen zu bemerken). Und das geht am schnellsten mit der integrierten Vergleichsfunktion von PowerPoint. Um dies zu verwenden:

* Öffnen Sie die Originalversion Ihrer Präsentation
* Gehen Sie zu **Bewertung** > **Vergleichen**
* Klicken Sie auf **Vergleichen**, um ein Browserfenster zu öffnen
* Wählen Sie die bearbeitete Version der Präsentation aus und klicken Sie auf **Zusammenführen**

Sie gelangen dann in den Überprüfungsmodus. Dadurch wird das Überprüfungsfenster geöffnet, das eine Liste aller Bearbeitungen in der Präsentation auf der rechten Seite des Bildschirms anzeigt.

![](comparison/java/images/how-to-compare-powerpoint-presentations.png)

## So vergleichen Sie zwei Präsentationen mit GroupDocs.Comparison

Eine solche Funktionalität, die von Drittanbieterprogrammen bereitgestellt wird, reicht eindeutig nicht aus. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** bietet viele Funktionen zum Vergleichen einer Vielzahl von [unterstützten Dateiformaten]({{< ref "comparison/java/getting-started/ supported-document-formats.md" >}}), einschließlich PowerPoint-Präsentationsformat. Machen wir ein Beispiel: Sie haben zu unterschiedlichen Zeiten eine Präsentation gehalten, aber die Elemente auf den Folien sind nicht so angeordnet, wie Sie es ursprünglich getan haben. Um herauszufinden, wo sich die Folien unterscheiden, können Sie zwei Dateien im PPTX-Format mit der Funktionalität **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** zusammen mit einer integrierten Option, die hilft, Änderungen in Stilen zu finden.

| Ursprüngliche Präsentation | Geänderte Darstellung |
|------------------------------------------------------------- ---------------------|----------------------- -------------------------------------------------- ---|
| ![](Vergleich/java/images/how-to-compare-powerpoint-presentations_1.png) | ![](Vergleich/java/images/how-to-compare-powerpoint-presentations_2.png) |

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) bietet die Möglichkeit, zwei Dateien im PPTX-Format (oder anderen [unterstützten Dateiformaten]) zu vergleichen ({{< ref "comparison /java/getting-started/supported-document-formats.md" >}}))

Im Folgenden sind die Schritte zum Vergleichen von zwei PPTX-Dateien aufgeführt.

* Instanziiere das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) mit den gewünschten Parametern;
* Call[ Compare ](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) method and Übergeben Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) an die Methode;

Die folgenden Codebeispiele zeigen, wie zwei PPTX-Dateien verglichen werden.

<script src="https://gist.github.com/groupdocs-comparison-gists/b4e2d61b246bba68f353feeff2cce6bd.js"></script>

Als Ergebnis erhalten wir eine PPTX-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> markiert sind, die hinzugefügten – in <font color="blue">**blau**</font> und die geänderten – in <font color="green">**grün**</font>

| Ergebnisfolie |
|------------------------------------------------------------- --------------------------|
| ![](Vergleich/java/images/how-to-compare-powerpoint-presentations_3.png) |

Um Kommentare im Präsentationsdokument zu vergleichen, müssen Sie die Eigenschaft „DetalisationLevel“ auf „High“ setzen:

<script src="https://gist.github.com/groupdocs-comparison-gists/847f4abe4420c4f476f6432ae3b67db1.js"></script>

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

