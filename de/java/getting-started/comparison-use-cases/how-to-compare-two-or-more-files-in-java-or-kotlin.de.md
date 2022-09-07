---
id: wie-man-zwei-oder-mehr-dateien-in-java-oder-kotlin-vergleicht
url: comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin
title: "So vergleichen Sie zwei oder mehr Dateien in Java oder Kotlin"
weight: 10
description: "In dem Artikel geht es um den Vergleich von zwei oder mehr Excel-, Word-, Präsentations- oder anderen Dateien und Dokumenten"
keywords: "Excel vergleichen, Word vergleichen, Präsentationen vergleichen, Diff-Tool für Java, Kotlin"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Vergleich mehrerer Dokumente
        description: "Das Produkt ermöglicht den Vergleich mehrerer Dokumente"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name:
        description: "Erfahren Sie, wie Sie mehrere Dokumente in einem Java- oder Kotlin-Projekt vergleichen"
Schritte:
- name: Quelldokument laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die das Quelldokument als Konstruktorparameter übergibt
- name: Zieldokumente laden
Text: Fügen Sie ein oder mehrere Zieldokumente hinzu, um sie mit dem Quelldokument zu vergleichen
- name: Quell- und mehrere Zieldokumente vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---

Dokumentenvergleich ist eine der häufigsten Anforderungen für die heutige Welt. Ob es darum geht, Word-Dateien, Excel-Dateien, Präsentationen, PDF-Dokumente oder sogar Textdateien oder andere Dokumentformate zu vergleichen, Genauigkeit ist der Schlüsselfaktor beim Vergleichen.

Dieser Artikel gibt Ihnen eine Vorstellung davon, wie [GroupDocs.Comparison](https://products.groupdocs.com/comparison) Programmierern den Vergleich von zwei oder mehr Dokumenten auf vielfältige Weise erleichtert. On-Premise-APIs von GroupDocs.Comparison sind derzeit für .NET und Java verfügbar, dieser Artikel richtet sich jedoch an Java- oder Kotlin-Entwickler.

### Vergleichen Sie Excel-, Word-Dateien oder andere Dokumente in Java oder Kotlin

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) ermöglicht Entwicklern den Vergleich von zwei Dokumenten (tatsächlich mehr als 2). Das resultierende Dokument zeigt die Änderungen zwischen den beiden Dateien im Vergleich. Unten gezeigter Code, wie Sie zwei Excel-Dateien in nur 3 Codezeilen in Java oder Kotlin vergleichen können.


* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments.
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) auf, um den Zieldokumentpfad anzugeben (s).
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um den Vergleichsprozess auszuführen.

---

<details open><summary>Vergleichen von Dokumenten nach Pfaden</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/d2ba23fdd66d71b44ef14b71cf9a1b69.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6f39584978729a7329efafa6c3f89dfb.js"></script>

</details>
</blockquote></details>

---

Der Vergleich von Excel-Tabellen oder Microsoft Word-Dokumenten gehört nur zu den Dokumentformaten, die von der Java-API von [GroupDocs.Comparison](https://products.groupdocs.com/comparison) unterstützt werden. Unten ist die Liste der unterstützten Formate. Besuchen Sie die [Dokumentation](/comparison/java/supported-document-formats/), um auf dem Laufenden zu bleiben.

| Dokumententyp | Formate |
|------------------------------------------------------------- ----------------|-------------------------------- ------------------|
| [Textverarbeitung](https://wiki.fileformat.com/word-processing/) | DOC, DOCX, DOCM, PUNKT, DOTX, DOTM, RTF, TXT |
| [Tabellenkalkulationen](https://wiki.fileformat.com/spreadsheet/) | XLS, XLSX, XLSM, XLT, XLTM, XLSB, XLSM, CSV |
| [Präsentationen](https://wiki.fileformat.com/presentation/) | PPT, PPTX, PPS, PPSX, POT, POTX |
| [OpenDocument](https://wiki.fileformat.com/word-processing/) | ODT, ODP, OTP, ODS, OTT |
| [Portabel](https://wiki.fileformat.com/view/pdf/) | Pdf |
| [Microsoft](https://docs.fileformat.com/visio/) | Visio-Zeichnungen VSD, VSDX, VSS, VST, VDX |
| [Notizen machen](https://wiki.fileformat.com/note-taking/) | EINS |
| [Web](https://wiki.fileformat.com/web/) | HTM, HTML, MHT, MHTML |
| [eBooks](https://wiki.fileformat.com/ebook/) | MOBI |
| [Bilder](https://wiki.fileformat.com/image/) | BMP, GIF, JPG, JPEG, PNG, DICOM, DJVU, DWG, DXF |
| [E-Mails](https://wiki.fileformat.com/email/) | EML, EMLX, MSG |

### Vergleichen Sie zwei oder mehr Tabellenkalkulationen oder OneNote-Dokumente in Java oder Kotlin

Nach der Veröffentlichung von [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 20.4 unterstützt die API jetzt:

* Vergleich von mehr als zwei Microsoft Excel- und OpenOffice-Tabellen (XLS, XLSX, ODS, CSV, …)
* Vergleichen Sie mehrere Microsoft OneNote-Dokumente

Die API unterstützt bereits den Vergleich mehrerer Dateien für verschiedene Dokumentformate. Das folgende Code-Snippet zeigt, wie einfach mehrere Excel-Dateien in Java oder Kotlin verglichen werden können

---

<details open><summary>Vergleich mehrerer Excel-Dokumente</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/5e338fb9c2a7401015edafb9779bcc4d.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/205830e46292994ccd43fece4d5e93a9.js"></script>

</details>
</blockquote></details>

---

### Vergleichen Sie Dokumente aus dem Stream in Java oder Kotlin

Als Programmierer dürfen Sie nicht nur Dokumente vergleichen, die auf der lokalen Festplatte verfügbar sind, sondern Sie können auch Dokumente aus Streams vergleichen.


* Erstellen Sie einfach das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Quelldokument-Stream.
* Fügen Sie alle zu vergleichenden Zieldokumente mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) von Comparer hinzu Objekt.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um das Ergebnisdokument in den Ausgabestrom zu schreiben.

---

<details open><summary>Vergleich mehrerer Excel-Dokumente aus Streams</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/09d353ac257edd0fec5a4a058d2a2c75.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ce4b5dba4acca392b96d55d80208e3be.js"></script>

</details>
</blockquote></details>

---

### Vergleichen Sie passwortgeschützte Word-Dokumente / Excel-Tabellen in Java oder Kotlin

Passwortschutz ist in der offiziellen Dokumentation üblich. Die Verwendung der [Dokumentenvergleichs-Java-API] (https://products.groupdocs.com/comparison) ermöglicht ihren Benutzern/Entwicklern, passwortgeschützte Dokumente zu vergleichen.

Nur eine kleine Änderung im Code zum Vergleichen von Dokumenten, die nicht passwortgeschützt sind. Verwenden Sie beim Laden des Dokuments [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions), um das Dokumentkennwort anzugeben. Nachfolgend finden Sie den Beispielvergleichscode zu Ihrer Unterstützung.

---

<details open><summary>Vergleich mehrerer passwortgeschützter Excel-Dokumente aus Streams</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8c2a3079211b7489e37fa3e8b715d80c.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/62e7f2b878fcefbf4f79a49fa15949ae.js"></script>

</details>
</blockquote></details>

---

### Vergleich von Dokumenten mit spezifischen Einstellungen

Einen Schritt vor dem Vergleichen können Sie mit dem Code ähnlich dem unten erwähnten mehrere Dokumente mit Ihren benutzerdefinierten Vergleichseinstellungen vergleichen.

[CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) bietet Ihnen die Möglichkeit, Ihre Vergleichsoptionen wie Schriftarten für erkannte Änderungen usw. festzulegen.

---

<details open><summary>Vergleich mehrerer Dokumente mit bestimmten Stileinstellungen</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/0757e56451c630d17d44a846a2faafc2.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e1360304d78aebb5a4fc16503210e63a.js"></script>

</details>
</blockquote></details>

---

### Vergleichen Sie Programmiersprachendateien in Java oder Kotlin

GroupDocs erweitert kontinuierlich die Unterstützung, um mehr Dateiformate zu vergleichen. Nach dem Release v 20.4 können Sie jetzt auch JSON-Dateien über die Java-API vergleichen. Im Folgenden sind die Dateiformate der Programmiersprache aufgeführt, die kürzlich zur [Liste der unterstützten Dokumentformate](/comparison/java/supported-document-formats/) hinzugefügt wurden:

| Sprache | Dateiformat |
|--------------|--------------------------------- -------------|
| ActionScript | Ziel C/C++ |
| Monteur | Perl |
| C-basiert | PHP |
| CScharf | Pythonschlange |
| Groovig | Rubin |
| JavaScript | Skala |
| Java | Shell/Batch-Skript, Protokoll, Diff, Konfiguration, WENIGER |
| JSON | SQL |

Sie können Ihre eigene Anwendung mit den oben hervorgehobenen Funktionen erstellen. Wir freuen uns, wenn Sie uns im [Forum](https://forum.groupdocs.com/c/comparison) kontaktieren, um zu diskutieren, ein Problem zu lösen oder Ihr Feedback zu teilen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Unterschiede in Fotos erkennt](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java oder Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
