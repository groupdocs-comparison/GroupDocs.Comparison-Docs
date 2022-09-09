---
id: wie-man-bilder-mit-java-oder-kotlin-vergleicht
url: comparison/java/how-to-compare-images-using-java-or-kotlin
title: "So vergleichen Sie Bilder, um die Unterschiede in Java oder Kotlin zu sehen"
weight: 7
description: "Sie erfahren, wie Sie GroupDocs.Comparison für Java in Ihrer Produktion verwenden können, wenn Sie Bilder vergleichen, um die Unterschiede zu sehen. Sehen Sie sich die Dateivergleichsempfindlichkeitskonfiguration und andere Anwendungsfälle der GroupDocs.Comparison-API an"
keywords: "Bilder vergleichen, Bildunterschiede erkennen, Bilder in Java vergleichen, Kotlin"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Bilder vergleichen
        description: "Das Produkt ermöglicht den Vergleich von Bildern"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So finden Sie Unterschiede zwischen zwei Bildern
        description: "Erfahren Sie, wie Sie Unterschiede zwischen zwei Bildern in einem Java- oder Kotlin-Projekt finden"
Schritte:
- name: Quellbild laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die das Quellbild als Konstruktorparameter übergibt
- name: Zielbilder laden
Text: Fügen Sie ein oder mehrere Zielbilder hinzu, um sie mit dem Quellbild zu vergleichen
- name: Quell- und Zielbilder vergleichen
Text: Führen Sie den Vergleichspfad durch, in dem das Ergebnisbild gespeichert werden soll
---
Egal, ob Sie eine Anwendung mit der Funktion „Unterschiede erkennen“ erstellen oder zwei Bilder programmgesteuert in einer Ihrer Java- (oder Kotlin-)basierten Bildverarbeitungsanwendungen vergleichen möchten, Sie sind an der richtigen Stelle. Mit unserem Produkt können Sie ganz einfach JPG, PNG, BMP oder Bilder mit einigen anderen Dateiformaten vergleichen. Lassen Sie uns, ohne Zeit zu verschwenden, Bilder in Java und Kotlin mit dem **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** vergleichen.

![Idea of comparing images](/comparison/java/images/how-to-compare-images.png)

## Java-Bildvergleichs-API

Ich werde die API [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) zum Vergleichen von Bildern in diesem Artikel verwenden. Diese API unterstützt den Vergleich von JPG-, PNG-, BMP-, DICOM-, DCM- und DjVu-Bildern zusammen mit vielen anderen unterstützten Dateiformaten.

Sie können die ZIP-Datei mit JAR-Bibliothek, Dokumentation und anderen nützlichen Dateien aus dem [Download-Bereich] (https://downloads.groupdocs.com/comparison/java) herunterladen oder die API in Ihrer Java/Kotlin-Anwendung über Maven, Gradle installieren oder jedes andere Projektmanagement-Tool, das Maven-Repositories unterstützt.

---

<details open><summary>Verbinden Sie das GroupDocs-Repository</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>Gradl</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

---

<details open><summary>GroupDocs.Comparison-Abhängigkeit hinzufügen</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f4d8f0b56d1dfa24dea18c68cd9d8001.js"></script>

</details>
<details><summary>Gradl</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b760d58061daa45d9b211e2701aa52b5.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

</details>
</blockquote></details>

---

### Vergleichen Sie Bilder in Java oder Kotlin, um Unterschiede hervorzuheben

Der Vergleich zweier Bilder in Java ist mit [GroupDocs.Comparison](https://products.groupdocs.com/comparison) innerhalb der Java-Anwendung zu einfach. Die folgenden Schritte erklären, wie wir zwei beliebige JPG-, PNG-, BMP- oder andere Bilder vergleichen können. Es erkennt erfolgreich die Änderungen und hebt sie im Ausgabe-/Ergebnisbild hervor.

* Definieren Sie das erste Bild mit der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer).
* Fügen Sie das zweite Bild mit der Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) des Comparer-Objekts hinzu.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um beide Bilder zu vergleichen und das hervorgehobene resultierende Bild zu speichern die Unterschiede zwischen den beiden Bildern.

---

<details open><summary>Der folgende Code zeigt, wie zwei Bilder in Java verglichen werden. Als Beispiel vergleicht es zwei JPG-Bilder und speichert die Ausgabe mit Unterschieden.</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

In diesem Code werden die am Anfang des Artikels gezeigten Bilder verwendet. Bilder auf der linken Seite werden verglichen, und die Ausgabe wird auf der rechten Seite angezeigt, die die Unterschiede hervorhebt.

### Fazit
In diesem Artikel haben wir gelernt, wie man zwei Bilder in Java mit der Bildvergleichs-API vergleicht. Jetzt können Sie Ihre eigene Bildvergleichsanwendung erstellen, die Bilder vergleichen und die gefundenen Unterschiede für ihre Benutzer hervorheben kann.

Um sich einen vollständigen Überblick über die Funktionen der API zu verschaffen, können Sie die [Dokumentation] (https://docs.groupdocs.com/comparison/java) durchgehen. Sie können sich auch an das [Free Support Team](https://forum.groupdocs.com/c/comparison) oder das [Free Consulting Team](https://groupdocs-free-consulting.github.io) wenden, die sogar Code schreiben um Ihnen zu helfen, die Verwendung von GroupDocs-APIs gemäß Ihren Anforderungen zu verstehen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Unterschiede in Fotos erkennt](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java oder Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
