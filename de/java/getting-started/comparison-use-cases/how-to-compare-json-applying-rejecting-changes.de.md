---
id: how-to-compare-json-applying-rejecting-changes
url: comparison/java/how-to-compare-json-applying-rejecting-changes
title: "So vergleichen Sie JSON-Dateien, indem Sie Änderungen anwenden oder ablehnen"
weight: 27
description: "Der Artikel beschreibt, wie Sie JSON-Dateien vergleichen, indem Sie Änderungen mit GroupDocs.Comparison anwenden oder ablehnen"
keywords: "Vergleich und Kontrast, Json-Dateien vergleichen, Json mit Kotlin und Java vergleichen, Vergleichstool für Json-Dateien"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
name: Tool zum Vergleichen von Json-Dateien
        description: "Das Produkt ermöglicht den Vergleich von Json-Dateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So vergleichen Sie Json-Dateien in der Java- oder Kotlin-Anwendung
        description: "Sie können alle Json-Dateien einfach mit dem Akzeptieren oder Ablehnen von Änderungen vergleichen"
Schritte:
- name: Vergleichsbibliothek zum Projekt hinzufügen
text: Sie müssen das Groupdocs-Repository und die Abhängigkeit zu Ihrem Projekt hinzufügen
- name: Vergleichen von Quell- und Ziel-Json-Dateien, um alle Unterschiede anzuzeigen
text: Vergleichen Sie Json-Dateien in nur wenigen Codezeilen, um den Unterschied zwischen ihnen zu sehen
- name: Akzeptieren oder Ablehnen von Änderungen in der Json-Datei
text: Akzeptieren oder verwerfen Sie Änderungen und speichern Sie eine gültige resultierende JSON-Datei
---
Json-Dateien sind heutzutage sehr beliebt. Sie dienen der Übertragung von Daten im Internet, der Konfiguration von Anwendungen und so weiter. Auf diese Weise müssen Benutzer sehr oft Json-Dateien vergleichen, um zu sehen, ob sie geändert wurden oder nicht. Gleichzeitig kann es sehr nützlich sein, die einen Änderungen abzulehnen und die anderen zu akzeptieren. Da Sie solche Funktionen benötigen, ist [GroupDocs.Comparison](https://products.groupdocs.com/comparison) die beste Lösung für Sie.

### So vergleichen Sie Json-Dateien in Java- oder Kotlin-Anwendungen

Sie müssen lediglich [GroupDocs.Comparison-Bibliothek](https://repository.groupdocs.com/comparison/) zu einem Projekt hinzufügen und nur wenige Codezeilen schreiben

#### Vergleichsbibliothek zum Projekt hinzugefügt

Als erstes müssen Sie das GroupDocs-Repository zum Projekt hinzufügen

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

Zweitens müssen Sie die erforderliche Abhängigkeit hinzufügen

_Die neueste Version der Vergleichs-API finden Sie [hier](https://repository.groupdocs.com/comparison/)_

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

#### Quell- und Ziel-Json-Dateien vergleichen, um alle Unterschiede zu sehen

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) ist eine sehr leistungsstarke Bibliothek mit vielen Optionen zum Vergleichen von Dateien, Analysieren von Änderungen, Abrufen von Details zu jeder Änderung, Akzeptieren oder Ablehnen jeder Änderung und so weiter. Hier wird nur ein winziger Teil der Fähigkeiten verwendet. Weitere Informationen dazu finden Sie in [der Dokumentation](/comparison/java/getting-started/)

<details open><summary>Hier ist der Code, den Sie zum Vergleichen von Quell- und Ziel-JSON-Dateien benötigen</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9395725d254c7500ed2f30dc558fd174.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8eb90b7f07e6240ec875e5e195a0a374.js"></script>

</details>
</blockquote></details>

Als Ergebnis erhalten Sie zwei Dateien:

* `.json`-Datei mit speziellen Labels, die jede Änderung im Dokument anzeigen
* `.html`-Datei mit menschenlesbarem Vergleichsergebnis

Diese Dateien können verwendet werden, um Änderungen anzuzeigen und zu analysieren. Aber das ist nicht alles, was wir tun wollen, der nächste Schritt ist viel interessanter und nützlicher.

#### Akzeptieren oder Ablehnen von Änderungen in der JSON-Datei

Die Bibliothek [GroupDocs.Comparison](https://products.groupdocs.com/comparison) bietet nicht nur Vergleichsfunktionen, sondern auch die Möglichkeit, eine Liste der Änderungen zu erhalten, sie abzulehnen oder zu akzeptieren und auf das Ergebnisdokument anzuwenden. Dies kann sehr nützlich sein, wenn einige Änderungen ungültig sind und rückgängig gemacht werden müssen, während andere gut sind und auf das Dokument angewendet werden müssen.

<details open><summary>Hier ist der Code, den Sie benötigen, um Änderungen in der Json-Datei anzuwenden oder abzulehnen</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/00519168fed54a68e3edbb087a0e0ef8.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/2b54bd01f16bce036b2bd9ec32f58473.js"></script>

</details>
</blockquote></details>

Im obigen Code erhalten wir eine Liste der Änderungen und verarbeiten jede von ihnen. Wir analysieren den Wert der Methode `getSourceText()`. Falls es `defaultListTemplate`, `defaultFileTemplate` oder `useJSP` (Eigenschaften aus der Json-Datei) enthält, wird die Änderung akzeptiert, alle anderen Änderungen werden abgelehnt. Um zu verstehen, was passiert, schauen Sie sich die Bilder unten an. Nach der Aktualisierung werden Änderungen beim Speichern als neue Datei übernommen.

Das Ergebnis wird in zwei Dateien gespeichert

* `.json` gültige JSON-Datei ohne Änderungen, die abgelehnt wurden, aber mit Änderungen, die akzeptiert wurden
* `.html` menschenlesbare Ergebnisdatei, sehr ähnlich dem Ergebnis des Vergleichsprozesses, aber ohne verworfene Änderungen

Hier sind Screenshots aller Dateien:

| Json-Quelldatei | Ziel-Json-Datei | Ergebnis HTML-Datei | Ergebnis Html-Datei nach Übernahme der Änderungen |
|------------------------------------------------------------- --------------------------------------|----------- -------------------------------------------------- ---------------------|----------------------- -------------------------------------------------- --------------|----------------------------------- -------------------------------------------------- --------------------------|
| ![](comparison/java/images/how-to-compare-json-applying-rejecting-changes-source.png) | ![](comparison/java/images/how-to-compare-json-applying-rejecting-changes-target.png) | ![](comparison/java/images/how-to-compare-json-applying-rejecting-changes-result.png) | ![](comparison/java/images/how-to-compare-json-applying-rejecting-changes-applied.png) |

Wie Sie sehen können, wurden Änderungen `pobox` -> `hacker`, `200` -> `88` und `100` -> `6` zurückgewiesen, während Änderungen innerhalb der Eigenschaften `defaultListTemplate`, `defaultFileTemplate` und `useJSP` wurden im Dokument belassen. Ein gültiges resultierendes Json-Dokument wurde ebenfalls gespeichert. Sie können es unten sehen

| Resultierende Json-Datei |
|: ------------------------------------------------ ----------------------------------------:|
| ![](comparison/java/images/how-to-compare-json-applying-rejecting-changes-resultant.png) |

### Holen Sie sich eine kostenlose API-Lizenz

Es stehen viel mehr Optionen zur Verfügung, zum Beispiel [Empfindlichkeit des Vergleichs](/comparison/java/adjusting-comparison-sensitivity/), [Zusammenfassungsseite erstellen](/comparison/java/get-only-summary-page/) und viel mehr. Einige von ihnen sind nur mit gültiger Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Kostenlose Online-App
Zusammen mit der voll funktionsfähigen Java/Kotlin-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Anwendungen.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-Vergleichsanwendung [GroupDocs-Vergleichsanwendung](https://products.groupdocs.app/comparison ).

### Mehr Details

Auf unserer [GitHub-Seite] (https://github.com/groupdocs-comparison/GroupDocs .Vergleich-für-Java). Sie können sie frei ändern und verwenden, um Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und vieles mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/) zu vergleichen.

Details, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Wie man [Vergleich und Kontrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) von Essays sieht
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin

