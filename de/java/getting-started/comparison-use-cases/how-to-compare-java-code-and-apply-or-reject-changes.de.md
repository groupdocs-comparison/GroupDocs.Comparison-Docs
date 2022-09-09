---
id: wie-man-java-code-vergleicht-und-änderungen-anwendet-oder-ablehnt
url: comparison/java/how-to-compare-java-code-and-apply-or-reject-changes
title: "Wie man Java-Code vergleicht und Änderungen anwendet oder ablehnt"
weight: 28
description: "Der Artikel beschreibt, wie man Java-Code vergleicht und Änderungen mit GroupDocs.Comparison anwendet oder ablehnt"
keywords: "Vergleich und Kontrast, Java-Code vergleichen, Java mit Kotlin und Java vergleichen, Vergleichstool für Java-Code"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
name: API zum Vergleichen von Java-Code
        description: "Das Produkt ermöglicht den Vergleich von Java-Code"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So vergleichen Sie Java-Code in der Anwendung
        description: "Sie können jeden Java-Code einfach vergleichen und dann Änderungen akzeptieren oder ablehnen"
Schritte:
- name: Vergleichsbibliothek in einem Projekt konfigurieren
text: Sie müssen das Groupdocs-Repository und die Abhängigkeit in Ihrem Projekt konfigurieren
- name: Vergleichsprozess für Java-Code ausführen und alle Unterschiede abrufen
text: Vergleichen Sie Java-Code, indem Sie nur wenige Codezeilen schreiben, um den Unterschied zwischen ihnen zu sehen
- name: Änderungen im Java-Code prüfen, um sie zu akzeptieren oder abzulehnen
Text: Überprüfen Sie jede Änderung und akzeptieren oder lehnen Sie jede davon ab und speichern Sie eine gültige resultierende Java-Datei
---
Java ist eine klassenbasierte, objektorientierte Programmiersprache auf hoher Ebene, die darauf ausgelegt ist, so wenig Implementierungsabhängigkeiten wie möglich zu haben. Viele Unternehmen erstellen Produkte mit Java. Das bedeutet, dass viele Teams Java-Code schreiben und der Code dann zusammengefügt wird. Manchmal machen junge Entwickler Fehler. Auf diese Weise sollten erfahrene Entwickler Änderungen im Code prüfen. Einige Änderungen sind richtig und müssen akzeptiert werden, während andere falsch sind und abgelehnt werden müssen. [GroupDocs.Comparison](https://products.groupdocs.com/comparison) ist die beste Lösung für diese Fälle.

### So vergleichen Sie Java-Code in der Anwendung

Sie müssen lediglich [GroupDocs.Comparison-Bibliothek](https://repository.groupdocs.com/comparison/) in Ihrem Projekt konfigurieren. Danach können Sie das Problem lösen, indem Sie nur ein paar Zeilen Code schreiben.

#### Vergleichsbibliothek in einem Projekt konfigurieren

Fügen Sie zunächst das GroupDocs-Repository zum Projekt hinzu, damit die Bibliothek automatisch heruntergeladen werden kann

<details open><summary>GroupDocs-Repository hinzufügen</summary><blockquote>
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

Geben Sie zweitens die erforderliche Bibliotheksabhängigkeit an

_Die neueste Version der Vergleichsbibliothek finden Sie [hier](https://repository.groupdocs.com/comparison/)_

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

#### Vergleichsprozess für Java-Code ausführen und alle Unterschiede abrufen

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) ist eine sehr moderne und leistungsstarke Bibliothek. Es gibt viele Möglichkeiten, Dateien zu vergleichen, Details zu Änderungen zu erhalten, Änderungen zu analysieren, sie zu akzeptieren oder abzulehnen, Koordinaten für jede Änderung abzurufen und so weiter. In diesem Artikel wird nur ein kleiner Teil der Möglichkeiten gezeigt. Weitere Details zu anderen Einrichtungen finden Sie in [der Dokumentation](/comparison/java/getting-started/)

<details open><summary>Um Quell- und Ziel-Java-Codedateien zu vergleichen, gehen Sie als Nächstes vor</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/78372877c238f2227f5c489e698ef695.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a865cf6080a512b0b1cb4534e74e75f6.js"></script>

</details>
</blockquote></details>

Als Ergebnis finden Sie die nächsten beiden Dateien:

* `.java`-Ergebnisdatei mit speziellen Markierungen, die jede Änderung im Dokument markieren
* `.html` menschenlesbare Ergebnisvergleichsdatei

Diese Dateien können verwendet werden, um Änderungen zu analysieren, die im Zieldokument im Vergleich zum Quelldokument vorgenommen wurden. Aber es ist noch nicht fertig, der nächste Schritt ist viel nützlicher und interessanter.

#### Änderungen im Java-Code prüfen, um sie zu akzeptieren oder abzulehnen

Mit [GroupDocs.Comparison](https://products.groupdocs.com/comparison) können Sie viele Dateiformate vergleichen. Darüber hinaus können Sie eine Liste der Änderungen erhalten, diese ablehnen oder akzeptieren, die auf die Java-Ergebnisdatei angewendet werden. Dies kann sehr nützlich sein, wenn einige Änderungen ungültig sind und rückgängig gemacht werden müssen, während andere gut sind und auf das Dokument angewendet werden müssen.

<details open><summary>Beispiel für das Anwenden oder Ablehnen von Änderungen in der Java-Codedatei</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4c035f1ddf3932d8fc89ecc1519a3005.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/c45c087baf5ca2bc7a848112e18180d7.js"></script>

</details>
</blockquote></details>

Im obigen Beispiel erhält es eine Liste von Änderungen, um jede von ihnen zu analysieren. Der Code prüft den Wert der Methode „getSourceText()“. Wenn es `size;` oder `for (int i = 0; i < HASH_TABLE_SIZE` (Teile von geänderten Zeilen in der Java-Codedatei) enthält, wird die Änderung akzeptiert, um beibehalten zu werden, andernfalls wird die Änderung abgelehnt, um die Zeile wie beizubehalten es war in der Quelldatei. Um das oben Beschriebene zu verstehen, überprüfen Sie die Bilder unten. Nach dem Ablehnen oder Akzeptieren werden die Änderungen angewendet und als neue Datei gespeichert.

Als Ergebnis finden Sie zwei Dateien:

* „.java“ – gültige Java-Codedatei, in der abgelehnte Änderungen rückgängig gemacht wurden, während angenommene Änderungen beibehalten wurden
* `.html` - für Menschen lesbare Datei, sehr ähnlich dem Ergebnis, das im vorherigen Schritt generiert wurde, aber ohne Änderungen, die abgelehnt wurden

Hier sind Screenshots aller generierten Dateien:

| Java-Quellcodedatei | Ziel-Java-Codedatei | Ergebnis HTML-Datei | Ergebnis Html-Datei mit angewendeten Änderungen |
|------------------------------------------------------------- ---------------------------------------|----- -------------------------------------------------- --------------------------------------|----------- -------------------------------------------------- ---------------------|----------------------- -------------------------------------------------- ---------------------|
| ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-source.png) | ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-target.png) | ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-result.png) | ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-applied.png) |

Auf den Bildern können Sie sehen, dass Änderungen `0` -> `3` und `1` -> `5` abgelehnt wurden, während Änderungen `long` -> `int` und `--` -> `++` waren Gerettet. Die gültige Java-Code-Datei wurde ebenfalls gespeichert. Sie können es unten sehen

| Resultierende Json-Datei |
|: ------------------------------------------------ ----------------------------------------------:|
| ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-resultant.png) |

### Holen Sie sich eine kostenlose API-Lizenz

In der Vergleichsbibliothek gibt es viele Funktionen, zum Beispiel [Empfindlichkeit des Vergleichs](/comparison/java/adjusting-comparison-sensitivity/), [Zusammenfassungsseite erstellen](/comparison/java/get-only-summary-page/) und vieles mehr. Einige von ihnen sind nur mit gültiger Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Kostenlose Online-App
Zusammen mit der voll funktionsfähigen Java/Kotlin-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Anwendungen.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG-, XML- und andere Dokumente mit der kostenlosen Online-Vergleichsanwendung [GroupDocs-Vergleichsanwendung](https://products.groupdocs.app /Vergleich).

### Mehr Details

Auf unserer [GitHub-Seite] (https://github.com/groupdocs-comparison/GroupDocs .Vergleich-für-Java). Sie können sie frei ändern und verwenden, um Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und vieles mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/) zu vergleichen.

Details, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [json-Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) Änderungen mit Java oder Kotlin anwendet oder ablehnt
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Wie man [Vergleich und Kontrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) von Essays sieht
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin

