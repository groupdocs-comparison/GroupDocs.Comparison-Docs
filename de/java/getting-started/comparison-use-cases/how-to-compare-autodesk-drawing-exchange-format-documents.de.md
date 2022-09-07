---
id: How-to-compare-autodesk-drawing-exchange-format-documents
url: comparison/java/how-to-compare-autodesk-drawing-exchange-format-documents
title: "So vergleichen Sie Dokumente im Autodesk Drawing eXchange-Format"
weight: 23
description: "In diesem Artikel erfahren Sie, wie Sie Dokumente im Autodesk Drawing eXchange-Format (DXF) vergleichen können."
keywords: "So vergleichen Sie AutoCAD-Dateien, CAD-Dateien unterscheiden sich, Autodesk-Zeichnung vergleichen, DXF vergleichen"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
name: AutoCad DXF-Dateien vergleichen
        description: "Das Produkt ermöglicht den Vergleich von AutoCad DXF-Dateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So vergleichen Sie DXF-Dokumente (Autodesk Drawing eXchange Format).
        description: "Erfahren Sie, wie Sie DXF-Dokumente (Autodesk Drawing eXchange Format) vergleichen"
Schritte:
- name: Quell-AutoCad-DXF-Dokument laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die das AutoCad-DXF-Quelldokument als Konstruktorparameter übergibt
- name: Ziel-AutoCad-DXF-Dokument laden
Text: Fügen Sie ein oder mehrere AutoCad DXF-Zieldokumente hinzu, um sie mit dem Quelldokument zu vergleichen
- name: Vergleichen Sie Quell- und Ziel-AutoCad-DXF-Dokumente
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Normalerweise ist es sehr schwierig, Änderungen festzustellen, die in Autodesk DXF-Dokumenten (Drawing eXchange Format) vorgenommen wurden. Gleichzeitig ist es ein sehr beliebtes Thema, besonders heutzutage, wo viele Unternehmen Mitarbeiter haben, die remote arbeiten. Glücklicherweise können Sie mit [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) ganz einfach zwei DXF-Dokumente sowie andere [unterstützte Dateiformate]({{< ref "comparison/java/ erste-schritte/unterstützte-dokumentformate.md" >}})

## Hervorheben von Änderungen im Vergleich zum Autodesk-Zeichnungsformat

Das Ergebnis des Vergleichs kann als PDF-Datei gespeichert werden, wobei geänderte, gelöschte oder eingefügte Elemente hervorgehoben werden. Sie können die Hervorhebungsfarben einfach ändern, sodass Änderungen anders gekennzeichnet werden. Standardfarben sind:

* Gelöschte Objekte – <font color="red">**rot**</font>
* Eingefügte Objekte – <font color="blue">**blau**</font>
* Geänderte Objekte – <font color="green">**grün**</font>

## So vergleichen Sie Dokumente im Autodesk Drawing eXchange-Format mit GroupDocs.Comparison

Um DXF-Dokumente (Autodesk Drawing eXchange Format) zu vergleichen, sollten Sie als nächstes vorgehen:

1. Erstellen Sie eine neue Instanz der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) und übergeben Sie den Pfad des Quelldokuments oder den Stream als Argument
2. Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und übergeben Sie den Pfad oder Stream des Zieldokuments als Argument
3. Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) auf, um den Vergleichsprozess auszuführen

Das folgende Java-Codebeispiel demonstriert einen oben beschriebenen Ansatz:

<script src="https://gist.github.com/groupdocs-comparison-gists/c7a7f2c57521c83202818207264b6536.js"></script>

Dasselbe können Sie in Kotlin tun:

<script src="https://gist.github.com/groupdocs-comparison-gists/b115da918c69f21d1ce7a36dc2874c98.js"></script>

Hier Beispiele für Quell-, Ziel- und Ergebnisdokumente:

| Quell-DXF-Dokument (Autodesk Drawing eXchange Format) | Ziel-DXF-Dokument (Autodesk Drawing eXchange Format) |
|------------------------------------------------------------- -------------------------------------------------| -------------------------------------------------- ------------------------------------------------|
| ![](comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-source.png) | ![](comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-target.png) |

| Ergebnis PDF-Dokument |
|: ------------------------------------------------ ------------------------------------------------:|
| ![](comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-result.png) |


### So nutzen Sie zusätzliche Vergleichsmöglichkeiten

Die Bibliothek [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) hat viele Optionen, die verwendet werden können, um den Vergleichsprozess sowie die Ergebnisdatei anzupassen. Hier sind nur ein paar Möglichkeiten aufgezeigt. Weitere Details finden Sie [in der Dokumentation](/comparison/java/getting-started/)

#### Übersichtsseite erstellen

Sie können ganz einfach die Generierung einer speziellen Seite aktivieren, auf der zusammenfassende Informationen über Änderungen im Dokument angezeigt werden. Darüber hinaus können Sie die Generierung einer erweiterten Zusammenfassungsseite aktivieren, um viel detailliertere Informationen zu erhalten.

Hier ist ein Codebeispiel für Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/6820d8c552709a6bb49923f2633ce20f.js"></script>

Dasselbe können Sie in der Kotlin-Anwendung tun:

<script src="https://gist.github.com/groupdocs-comparison-gists/40d05bf0aaf79e156fb57123d59e62f6.js"></script>

#### Anpassen des Stils ändern

Um den benutzerdefinierten Änderungsstil zu verwenden, konfigurieren Sie einfach den Vergleicher so, dass er die Änderungen so hervorhebt, wie Sie es möchten.

Hier ist ein Codebeispiel für Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

In Kotlin funktioniert es genauso:

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

### Holen Sie sich eine kostenlose API-Lizenz

Die meisten Einstellungen, z. B. Generieren der Übersichtsseite, Sensitivität des Vergleichs usw., sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

In diesem Artikel wird über den Vergleich von DXF-Dokumenten (Autodesk Drawing eXchange Format) mit der Bibliothek [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) geschrieben. Die Bibliothek kann einfach in jede Java- oder Kotlin-, Desktop- oder Webanwendung auf jeder Plattform eingebettet werden. Es gibt Beispiele für die Verwendung der Vergleichs-API in Webanwendungen auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Sie können frei modifiziert und zum Vergleichen von AutoCad-Zeichnungen, Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und anderen [unterstützten Dateiformaten](/comparison/java/supported-document-formats/) verwendet werden.

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Kostenlose Online-App
Zusammen mit einer voll funktionsfähigen Java-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-Verwendung **[GroupDocs-Vergleichs-App](https://products.groupdocs.app/) vergleichen. Vergleich)**.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* So [vergleichen Sie AutoCAD](/comparison/java/how-to-compare-autocad-drawings) Zeichnungen
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* How to [use Google Drive API as file source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) zum Vergleichen von Dokumenten in Java oder Kotlin

