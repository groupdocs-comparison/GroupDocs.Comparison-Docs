---
id: wie-man-dateien-in-java-oder-kotlin-vergleicht
url: comparison/java/how-to-compare-files-in-java-or-kotlin
title: "So vergleichen Sie Dateien in Java oder Kotlin"
weight: 9
description: "Sie werden feststellen, wie Sie GroupDocs.Comparison für Java verwenden können, um Unterschiede von wenigen Dateien oder Dokumenten zu sehen. Der Mechanismus zur Erkennung von Änderungen kann gemäß den Anforderungen konfiguriert werden"
keywords: "Vergleichen Sie Text, vergleichen Sie Word, vergleichen Sie Pdf, wie man Dokumente in Java vergleicht, Kotlin"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Dateien diff
        description: "Das Produkt ermöglicht das Vergleichen von Dateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So überprüfen Sie, ob zwei Dateien identisch sind
        description: "Erfahren Sie, wie Sie überprüfen, ob zwei Dateien in einem Java- oder Kotlin-Projekt identisch sind"
Schritte:
- name: Quelldatei laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die die Quelldatei als Konstruktorparameter übergibt
- name: Zieldateien laden
text: Fügen Sie eine oder mehrere Zieldateien hinzu, um sie mit der Quelldatei zu vergleichen
- name: Quell- und Zieldatei vergleichen
Text: Führen Sie den Vergleichsprozess durch, indem Sie den Pfad übergeben, in dem die Ergebnisdatei gespeichert werden soll
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) ist eine Java-Bibliothek, mit der Sie Dokumente vergleichen und Unterschiede erkennen können. Vergleichen Sie Microsoft Word, Excel, PowerPoint, OpenDocument, PDF, Text, HTML und viele andere Dokumente, rufen Sie eine Liste der Änderungen zwischen Quell- und Zieldokumenten ab, übernehmen oder verwerfen Sie Änderungen und speichern Sie Ergebnisse mit [GroupDocs.Comparison](https://products .groupdocs.com/comparison)-API. Darüber hinaus kann GroupDocs.Comparison Stil- und Formatierungsänderungen erkennen – wie Fett, Kursiv, Unterstrichen, Durchgestrichen, Schriftarten usw.

Die von GroupDocs.Comparison verwendeten Algorithmen zur Erkennung von Änderungen ermöglichen es Ihnen, Unterschiede in verschiedenen Dokumententeilen und -blöcken zu erkennen:

* Textblöcke – Absätze, Wörter und Zeichen
* Tabellen
* Bilder
* Formen usw.

Hier sind einfache Schritte, um zwei Textdateien zu vergleichen und Unterschiede aufzuzeigen:

* Initialisieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Quelldokument.
* Fügen Sie die zweite Datei mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) des Comparer-Objekts hinzu.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um das Ergebnis des Vergleichs zu erhalten.

Das folgende Code-Snippet demonstriert den einfachsten Fall eines Dokumentvergleichs mit ein paar Codezeilen.

---

<details open><summary>Vergleichen Sie Dokumente mit lokalen Dateien</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

Sie können auch Streams verwenden, um Dokumente zu vergleichen. Nicht nur Dateistream, es ist kein Problem, Dateien aus dem Internet zu vergleichen, ohne sie lokal zu speichern, oder Dateien direkt zu vergleichen.

---

<details open><summary>Vergleichen Sie Dokumente mithilfe von Streams</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

Angenommen, Sie haben zwei Verträge im DOCX-Format, die in unterschiedlichen Jahren abgeschlossen wurden. Wenn Sie den obigen Code verwenden, um diese Verträge zu vergleichen, erhalten Sie eine DOCX-Datei, in der gelöschte Elemente wie unten gezeigt rot markiert, blau hinzugefügt und grün geändert werden:

![Comparing two contracts](/comparison/java/images/how-to-get-diff-of-contracts.png)


## Erkannte Unterschiede akzeptieren oder ablehnen

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) bietet die Möglichkeit, bestimmte Änderungen zwischen Quell- und Zieldokumenten anzuwenden oder zu verwerfen und das resultierende Dokument mit (oder ohne) ausgewählten Änderungen zu speichern.

Im Folgenden sind die Schritte zum Anwenden/Ablehnen von Änderungen auf das resultierende Dokument aufgeführt.

* Instanziieren Sie das Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit dem Pfad oder Stream des Quelldokuments.
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) auf und geben Sie den Pfad oder Stream des Zieldokuments an.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) für den Vergleichsprozess auf.
* Rufen Sie die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) auf und rufen Sie die Liste der erkannten Änderungen ab.
* Setzen Sie ComparisonAction des erforderlichen Änderungsobjekts auf [ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) oder [ComparisonAction.Reject](https:/ /apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT).
* Rufen Sie die Methode [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.ApplyChangeOptions)) auf und übergeben Sie das Objekt von [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) mit der Sammlung von Änderungen daran.

---

<details open><summary>Das folgende Codebeispiel zeigt, wie erkannte Unterschiede akzeptiert/zurückgewiesen werden.</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

### Dokumentseitenvorschau erstellen

Mit [GroupDocs.Comparison](https://products.groupdocs.com/comparison) können Sie mithilfe von [generatePreview](https://apireference.groupdocs.com/comparison/java/com .groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))-Methode einer [Document](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document)-Klasse .
Die Klasse [PreviewOptions] (https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) wird verwendet, um den Vorschaugenerierungsprozess zu verwalten – geben Sie Seitenzahlen, Bildformat usw. an.

Die folgenden Schritte zeigen, wie Sie eine Dokumentvorschau mit der [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) API generieren:

* Erstellen Sie eine neue Instanz der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) und übergeben Sie den Pfad des Quelldokuments als Konstruktorparameter.
* Zieldokument(e) mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) zum Vergleichsobjekt hinzufügen .
* [getSource](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) und [getTargets](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Comparer#getTargets())-Methoden des [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)-Objekts ermöglicht den Zugriff auf Quell- und Zieldokumente und stellt bereit [GeneratePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))-Methode
* Instanziieren Sie das Objekt [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) mit:
* Rückruf für jede Seitenstromerstellung (siehe Ereignishandler [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates.CreatePageStream));
* Bildvorschauformat – PNG / JPG / BMP;
* zu verarbeitende Seitenzahlen;
* benutzerdefinierte Größe von Vorschaubildern (falls erforderlich).
* Rufen Sie [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) Methode der Quelle und Ziele auf [Document]( https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) Objekte, die [PreviewOptions] übergeben (https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ PreviewOptions) dazu.

---

<details open><summary>Erhalten Sie eine Seitenvorschau für das resultierende Dokument</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/565efa20595c05ecb81d9ca44045afdf.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fc4c8a219bdd0419222bd76275219fd2.js"></script>

</details>
</blockquote></details>

---

### Mehrere Dokumente vergleichen

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) ermöglicht den Vergleich von mehr als zwei Dokumenten. Das folgende Codebeispiel zeigt, wie mehrere Dokumente programmgesteuert verglichen werden.

---

<details open><summary>So vergleichen Sie mehrere Dokumente in Java</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7b6ad368a55e6df16c2f0b9d86edebe5.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad47af4d760d17752962f86be72fb8ec.js"></script>

</details>
</blockquote></details>

---

## Installation

Maven ist der einfachste Weg zum Herunterladen und Installieren von [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java). Bitte besorgen Sie sich [eine temporäre Lizenz](https://purchase.groupdocs.com/temporary-license), um die Bibliothek ohne Funktionseinschränkungen zu testen.

Bitte lesen Sie die [Dokumentation](/comparison/java/installation/), um mehr über die Bibliothek zu erfahren. Wir bieten auch kostenlosen technischen Support, also zögern Sie nicht, [uns zu kontaktieren](https://forum.groupdocs.com/) – wir helfen Ihnen gerne weiter.

### Siehe auch

* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Unterschiede in Fotos erkennt](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java oder Kotlin
* How to [compare Json files](/comparison/java/how-to-compare-json-applying-rejecting-changes) applying or rejecting changes
