---
id: wie-man-fotos-unterschiede-in-java-oder-kotlin-erkennt
url: comparison/java/how-to-spot-photos-differences-in-java-or-kotlin
title: "So erkennen Sie Unterschiede in Fotos mit Java oder Kotlin"
weight: 11
description: "Der Artikel handelt vom Vergleichen von Fotos in Java oder Kotlin, um die Unterschiede mithilfe der Vergleichs-API zu erkennen"
keywords: "Fotos vergleichen, Unterschiede von Fotos, Diff-Tool für Fotos in Java, Kotlin"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Werkzeug für die Ermittlung von Differenzen
        description: "Das Tool ermöglicht es, Unterschiede zwischen Fotos zu erkennen"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So erkennen Sie Unterschiede zwischen Fotos
        description: "Erfahren Sie, wie Sie Unterschiede zwischen Fotos in Java- oder Kotlin-Projekten erkennen"
Schritte:
- Name: Fotovergleichs-API
Text: Herunterladen und Konfigurieren der Vergleichs-API
- Name: Fotos vergleichen, um Unterschiede hervorzuheben
Text: Nachdem Sie ein Comparer-Objekt erstellt haben, das Quell- und Zielfotos übergibt, rufen Sie einfach eine spezielle Methode auf, um das Ergebnisdokument zu erhalten
---

In diesem Artikel besprechen wir, wie Sie programmgesteuert Unterschiede zwischen zwei Fotos finden. Nachdem Sie dies durchgegangen sind, werden Sie es einfach finden, Fotos zu vergleichen und die identifizierten Unterschiede mit Java oder Kotlin hervorzuheben.

### Fotovergleichs-API auf Java oder Kotlin

In diesem Artikel verwende ich die Java-API von [GroupDocs.Comparison](https://products.groupdocs.com/comparison) zum Vergleichen von Fotos. Neben den am häufigsten verwendeten Bildformaten wie PNG, JPG/JPEG und GIF gibt es eine große Auswahl an [unterstützten Dateiformaten](/comparison/java/supported-document-formats/) zum Vergleich. Darüber hinaus ermöglicht die API den Vergleich von Textverarbeitungsdokumenten, Tabellenkalkulationen, Präsentationen, Zeichnungen, Webseiten, E-Mail-Nachrichten, Quellcodedateien und vielem mehr.

#### Herunterladen und konfigurieren

Holen Sie sich die Fotovergleichsbibliothek aus dem [Downloadbereich](https://downloads.groupdocs.com/comparison/java). Für Maven-, Gradle- oder Kotlin-basierte Java-Anwendungen ist der Installationsprozess sehr einfach und auf der [entsprechenden Dokumentationsseite] (comparison/java/installation) beschrieben. Später können Sie die Beispiele dieses Artikels sowie viele weitere von [GitHub](https://github.com/groupdocs-comparison) ausprobieren. Einzelheiten finden Sie auch in der [API-Referenz] (https://apireference.groupdocs.com/comparison/java).

### Vergleichen Sie Fotos in Java, um Unterschiede hervorzuheben

Vergleichen Sie die Fotos und erhalten Sie das Ergebnis in nur 3 Zeilen Code. Sie können den Schritten folgen und den erwähnten Quellcode verwenden, um Ihre JPG-, PNG-, BMP-, DICOM-, DjVu-, GIF- und andere Bilder zu vergleichen. Sie können die Unterschiede oder Variationen zwischen diesen innerhalb der Java-Anwendung identifizieren.

* Wählen Sie das erste zu vergleichende Foto mit dem Konstruktor der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) aus.
* Fügen Sie das zweite Foto zum Vergleich mit der entsprechenden Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) hinzu Vergleichsobjekt.
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um das Vergleichsergebnis beider Fotos zu erhalten.

Hier ist der Code, vergleicht zwei JPG-Fotos und speichert die Ausgabe, die die identifizierten Unterschiede hervorhebt.

---

<details open><summary>Der folgende Code zeigt, wie zwei Fotos in Java verglichen werden</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

Quell- und Zielfotos

![Source and target photos](comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-source.jpg)

Ergebnisfoto

![Result photo](comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-result.jpg)

---

### Holen Sie sich eine kostenlose API-Lizenz

Sie können eine [kostenlose temporäre Lizenz] (https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne die Evaluierungseinschränkungen zu verwenden.

### Fazit

Abschließend aus diesem Artikel haben wir gelernt, wie man Fotos in Java vergleicht. Wir haben die identifizierten Unterschiede nach dem Vergleich weiter hervorgehoben. Jetzt können Sie Ihre eigene Fotovergleichs-App erstellen oder diese Funktionen in Ihren Java-Anwendungen verwenden.

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* So [beliebige Dateien vergleichen](/comparison/java/how-to-compare-any-files-using-compose-desktop) mit Compose Desktop
* How to [Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) als Docker-Container
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container
