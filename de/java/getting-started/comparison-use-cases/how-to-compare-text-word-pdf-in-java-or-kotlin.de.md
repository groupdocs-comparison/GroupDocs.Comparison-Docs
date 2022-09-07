---
id: how-to-compare-text-word-pdf-in-java-or-kotlin
url: comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin
title: "So vergleichen Sie Text, Word, PDF mit Java oder Kotlin"
weight: 8
description: "Sie erfahren, wie Sie GroupDocs.Comparison für Java in Ihrer Produktion verwenden können, wenn Sie Text-, Word- und PDF-Dateien vergleichen, um die Unterschiede zu sehen. Sehen Sie sich die Dateivergleichsempfindlichkeitskonfiguration und andere Anwendungsfälle der GroupDocs.Comparison-API an"
keywords: "Vergleichen Sie Text, vergleichen Sie Word, vergleichen Sie Pdf, wie man Dokumente in Java vergleicht, Kotlin"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
name: Word-Dokumente vergleichen
        description: "Das Produkt ermöglicht den Vergleich von Word- oder PDF-Dokumenten"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name:
        description: "Erfahren Sie, wie Sie Word- oder PDF-Dokumente in einem Java- oder Kotlin-Projekt vergleichen"
Schritte:
- Name: Quellwort oder PDF-Dokument laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die das Quellwort oder PDF-Dokument als Konstruktorparameter übergibt
- Name: Zielwort oder PDF-Dokumente laden
Text: Fügen Sie ein oder mehrere Zielwort- oder PDF-Dokumente hinzu, um sie mit dem Ausgangsdokument zu vergleichen
- Name: Vergleichen Sie Ausgangs- und Zielwort- oder PDF-Dokumente
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Nachdem Sie diesen Artikel durchgearbeitet haben, können Sie Textdateien, Word-Dateien, PDF-Dateien und andere Dokumente in Java-basierten Anwendungen vergleichen. Mithilfe dieser Funktion können wir Rechnungen, Verträge, Präsentationen, AutoCAD-Entwürfe, Preislisten oder Programmierdateien vergleichen. Wir haben auch die Möglichkeit, die identifizierten Änderungen hervorzuheben, und haben die Möglichkeit, Änderungen entweder zu akzeptieren oder abzulehnen. Sie können sogar unser eigenes [Dokumentenvergleichstool](https://products.groupdocs.app/comparison/total) erstellen, das dem von GroupDocs gestarteten ähnlich ist, indem Sie die Dokumentvergleichs-API für Java verwenden.

## API zum Vergleich von Java-Dokumenten

Als Voraussetzung erhalten Sie möglicherweise [GroupDocs.Comparison für Java](https://products.groupdocs.com/comparison/java) aus dem [Downloadbereich](https://downloads.groupdocs.com/comparison/ Java). Außerdem können Sie Ihrem Maven-, Gradle- oder Kotlin-DSL-Projekt anhand der [Installationsanleitung](/comparison/java/installation/) ganz einfach die Vergleichs-API hinzufügen.

### Vergleichen Sie Word-Dateien und zeigen Sie Unterschiede mit Java oder Kotlin

Die folgenden Schritte zeigen Ihnen, wie Sie zwei beliebige Word-Dokumente in nur wenigen Zeilen Java- oder Kotlin-Code vergleichen können. Als Ergebnis erhalten Sie das resultierende Dokument, das die identifizierten Änderungen hervorhebt.

* Initialisieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad des Quelldokuments.
* Fügen Sie das zweite zu vergleichende Dokument mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) von Comparer hinzu Objekt.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um das Ergebnis des Vergleichs zu erhalten. Die Vergleichsmethode nimmt den Namen des Ausgabedokuments als Parameter.

---

<details open><summary>Der folgende Code zeigt, wie zwei Word-Dokumente in Java verglichen werden</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

Hier ist ein Beispiel für das resultierende Word-Dokument, das durch den obigen Code generiert wurde. Es enthält die hervorgehobenen Unterschiede der verglichenen Dokumente. Der gelöschte Inhalt wird rot markiert, hinzugefügter Inhalt wird blau angezeigt, Grün zeigt jedoch den geänderten Inhalt.

![Word documents comparison result](comparison/java/images/how-to-compare-documents.png)

### Word-Dateien mit Java- oder Kotlin-Streams vergleichen

Sie können das Dokument auf ähnliche Weise als Stream an die Comparer-Klasse übergeben, um es mit dem zweiten Dokument zu vergleichen.

---

<details open><summary>Hier ist der Java/Kotlin-Code, um Ihnen eine klare Vorstellung zu geben</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

_Die Verwendung von Streams kann nützlich sein, um Dokumente zu vergleichen, ohne sie auf einer Festplatte zu speichern_

### Akzeptieren oder Ablehnen von Änderungen in Word-Dateien mit Java oder Kotlin

Nach dem Vergleichen von Dokumenten haben Sie die Möglichkeit, Änderungen entweder zu akzeptieren oder abzulehnen. Unten sehen Sie das Beispiel für das abwechselnde Akzeptieren und Ablehnen der Änderungen. Sie können jede Änderung einzeln mit dem ähnlichen Code anzeigen und Ihre Entscheidung treffen, jede Änderung gemäß Ihren Anforderungen zu akzeptieren/abzulehnen.

---

<details open><summary>Hier ist der Java/Kotlin-Code, um Ihnen eine klare Vorstellung zu geben</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

_Weitere Einzelheiten zum Akzeptieren und Ablehnen von Änderungen finden Sie in der [Dokumentation](https://docs.groupdocs.com/comparison/java/accept-or-reject-detected-changes/)_

### Vergleichen Sie Textdateien und zeigen Sie Unterschiede mit Java oder Kotlin

Mit der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) können wir auch beliebige Textdateien vergleichen. Unten ist der ähnliche Code zum Vergleichen von zwei Textdateien in Java oder Kotlin. Die Schritte sind genau die gleichen wie beim Vergleichen von zwei anderen Dokumenten:

* Initialisieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit der Quelltextdatei.
* Fügen Sie die zweite Datei mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) des Comparer-Objekts hinzu.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um das Ergebnis des Vergleichs zu erhalten.

---

<details open><summary>Der folgende Code zeigt, wie zwei Textdateien in Java oder Kotlin verglichen werden</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/0ceff72d9ce7fb91f457bfb670852981.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/46542d922b12c025aab2cd62486f8278.js"></script>

</details>
</blockquote></details>

---

Hier sind die Quell-, Ziel- und Ausgabetextdateien, die das Vergleichsergebnis des Abgleichs zweier Textdateien mit dem obigen Code zeigen.

![Comparing text files](comparison/java/images/how-to-compare-text-files.png)

Hier ist die [Liste aller Dateiformate](https://docs.groupdocs.com/comparison/java/supported-document-formats/), die von [GroupDocs.Comparison for Java](https://products.groupdocs. com/vergleich/java)

### PDF-Dateien mit Java oder Kotlin auf Textunterschiede vergleichen

Wir können PDF-Dateien mit demselben Code vergleichen, indem wir einfach die Dateierweiterungen in „.pdf“ ändern.

---

<details open><summary>Der folgende Code vergleicht zwei PDF-Dateien und zeigt Unterschiede auf</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4a1f80dd89b4d12f62e8423e09733ea7.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b0d4823f85f0ea9370dfbdd421664e90.js"></script>

</details>
</blockquote></details>

---

Hier ist ein Ergebnis des Vergleichs zweier PDF-Dateien in Java oder Kotlin.

![Comparing text files](comparison/java/images/how-to-compare-pdf-files-using-java-or-kotlin.png)

Viele weitere Open-Source-Beispiele sind unter [GitHub Repository](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) verfügbar. Sie können Beispiele mithilfe des Leitfadens [Erste Schritte](https://docs.groupdocs.com/comparison/java/getting-started/) herunterladen und schnell ausführen. Bei Fragen schauen Sie in die [Dokumentation](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/) oder erreichen uns jederzeit [im Forum](https:// forum.groupdocs.com/c/conversion/).

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Unterschiede in Fotos erkennt](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java oder Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
