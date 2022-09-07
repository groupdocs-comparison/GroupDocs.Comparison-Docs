---
id: wie-man-dateien-mit-compose-desktop-vergleicht
url: comparison/java/how-to-compare-any-files-using-compose-desktop
title: "So vergleichen Sie Dateien in der Kotlin Compose Desktop-Anwendung"
weight: 12
description: "In diesem Artikel geht es um die Verwendung der Vergleichs-API in der Kotlin Compose-Anwendung"
keywords: "Vergleichen Sie beliebige Dateien oder Dokumente, Dateiunterschiede, Diff-Tool in Kotlin Compose"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Text vergleichen
        description: "Das Produkt ermöglicht den Vergleich von Text oder anderen Dateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So vergleichen Sie Text im Kotlin Compose-Projekt
        description: "Erfahren Sie, wie Sie Text oder andere Dateien im Kotlin Compose-Projekt vergleichen"
Schritte:
- name: Quelltext oder Datei laden
text: Erstellt eine Instanz der Comparer-Klasse, die Quelltext oder Dateipfad als Konstruktorparameter übergibt
- name: Zieltext oder Datei laden
Text: Fügen Sie einen oder mehrere Zieltexte oder -dateien hinzu, um sie mit dem Ausgangstext zu vergleichen
- name: Ausgangs- und Zieltext bzw. Dateien vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---

In diesem Artikel erörtern wir, wie Sie die [GroupDocs.Comparison](https://products.groupdocs.com/comparison) API Compose Desktop-Anwendung mit Kotlin verwenden. Nachdem Sie diesen Artikel gelesen haben, werden Sie feststellen, dass es einfach ist, vergleichbare Desktop-Anwendungen zu erstellen, die auf jeder Desktop-Plattform wie Windows, Linux oder Mac ausgeführt werden können. Kotlin Compose ist ein modernes und schnell an Popularität gewinnendes UI-Framework. Es wird normalerweise (*vorerst*) zum Erstellen von Android-Anwendungen verwendet, unterstützt aber auch das Erstellen von Desktop-, Web- und Multiplattform-Anwendungen. In diesem Artikel wird die Verwendung von Compose nicht im Detail beschrieben, da es viele Informationen im Internet gibt.

## Dateivergleichs-API für Kotlin

In diesem Artikel verwende ich [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) zusammen mit Kotlin zum Erstellen von Desktop-Anwendungen. Neben den am häufigsten verwendeten Bildformaten wie PNG, JPG/JPEG und GIF gibt es eine große Auswahl an [unterstützten Dateiformaten](/comparison/java/supported-document-formats/) zum Vergleich. Darüber hinaus ermöglicht die API den Vergleich von Textverarbeitungsdokumenten, Tabellenkalkulationen, Präsentationen, Zeichnungen, Webseiten, E-Mail-Nachrichten, Quellcodedateien und vielem mehr. Darüber hinaus kann die Vergleichsbibliothek verwendet werden, um Vorschaubilder für alle [unterstützten Dateiformate](/comparison/java/supported-document-formats/) zu generieren, um sie in Ihrer Anwendung anzuzeigen.

## Compose-Projekt erstellen und konfigurieren

### Projekterstellung

Sie können ein Compose-Projekt einfach erstellen, indem Sie im IntelliJ Idea-Projekterstellungsfenster die Option „Kotlin“ -> „Compose Desktop Aplication“ auswählen. Sie müssen den Projektnamen, den Standort, das „Build-System“ (Gradle Kotlin wird empfohlen) und das „Project JDK“ (15 oder höher wird empfohlen) auswählen.

### Konfigurieren des Projekts durch Hinzufügen von GroupDocs.Comparison-Repository und -Bibliothek

Führen Sie die nächsten Schritte aus, um die Vergleichs-API zu Ihrem Projekt hinzuzufügen:
1. Öffnen Sie „build.gradle.kts“.
2. Gehen Sie zum Block „Repositories“ und fügen Sie das Maven GroupDocs-Repository hinzu

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

3. Gehen Sie zum Block „Abhängigkeiten“ und fügen Sie die GroupDocs.Comparison-Bibliothek als Abhängigkeit hinzu (* Es wird empfohlen, [neueste Version] zu verwenden (https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/ repo/com/groupdocs/groupdocs-comparison) der Bibliothek*)

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

4. Aktualisieren Sie die Projektbibliotheken, indem Sie auf die Schaltfläche „Alle Gradle-Projekte neu laden“ im „Gradle“-Bedienfeld der IDE klicken

Jetzt können Sie mit der Vergleichs-API im Projekt arbeiten

## Hinzufügen grundlegender Vergleichsfunktionen

Um die Möglichkeit zu haben, Dateien in Ihrer Desktop-Anwendung zu vergleichen, benötigen Sie einige grundlegende UI-Elemente und Funktionen. Zumindest müssen Schaltflächen vorhanden sein, um Quell- und Zieldokumente auszuwählen, die verglichen werden sollen. Außerdem benötigen Sie eine Schaltfläche, die den Vergleichsprozess ausführt.

### Grundlegende UI-Elemente

Erstellen Sie zunächst Variablen, in denen Sie die Pfade des Quell- und Zieldokuments speichern. Der Grund für die Verwendung von „mutableStateOf“ und „remember“ kann in der Compose-Dokumentation gefunden werden

```kotlin
    val sourcePath = remember { mutableStateOf<String?>(null) }
    val targetPath = remember { mutableStateOf<String?>(null) }
```

Schaltfläche "Hinzufügen", um die Quelldatei zum Vergleichen auszuwählen. Die zweite Schaltfläche sieht genauso aus, ändern Sie einfach Text und Variable. Es wäre eine gute Idee, sie mit Compose `Row` oder `Column` zu umgeben und einige visuelle Stile hinzuzufügen

<script src="https://gist.github.com/groupdocs-comparison-gists/542ddc34f70deb8cbcfca719d3900605.js"></script>

Schaltfläche Hinzufügen, um den Vergleichsprozess auszuführen

<script src="https://gist.github.com/groupdocs-comparison-gists/d28868d161134606a3aa62d8542f58d3.js"></script>

### Zusätzliche Anwendungsfunktionen

Um Dokumente auszuwählen, benötigt Ihre Anwendung einen Dateiauswahldialog. Im Moment hat Compose keine eigenen Dialoge, aber vergessen Sie nicht, dass wir uns immer noch in Java befinden. Auf diese Weise können wir die Standard-Java-Klasse "JFileChooser" verwenden.

<script src="https://gist.github.com/groupdocs-comparison-gists/caa93da30f5babc0966765cc58ffb95a.js"></script>

Diese Funktion öffnet einen Dialog, um eine Datei auszuwählen und dann den Pfad der Datei so einzustellen, dass er als veränderlicher Parameter übergeben wird. JFileChooser kann so konfiguriert werden, dass es Dateien nach Format filtert, das Startverzeichnis festlegt und so weiter.

### Verwenden der Vergleichs-API, um die Unterschiede des Dokuments abzurufen

Die Vergleichs-API hat viele Funktionen und Einstellungen, aber wir werden nur wenige Prozent davon verwenden, um diesen Artikel nicht zu schwierig zu machen. Das Vergleichen von Dateien und das Erhalten des Ergebnisses sind nur 3 Codezeilen. Befolgen Sie dazu einfach die nächsten **nummerierten** Schritte:

1. Erstellen Sie ein Objekt der Klasse [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) und übergeben Sie ihm den Pfad des Quelldokuments.
* Alternativ können Sie ein Comparer-Objekt erstellen, das an den Eingabestrom übergeben wird, um zu vermeiden, dass die Quelldatei irgendwo gespeichert wird
* Sie können `LoadOptions("document-password")` als zweiten Parameter übergeben, um passwortgeschützte Dokumente zu vergleichen
* Es ist möglich, `LoadOptions(true)` als zweiten Parameter zu übergeben, um ein Comparer-Objekt mit einer Zeichenfolge anstelle einer Datei zu erstellen. Auf diese Weise muss der erste Parameter eine Zeichenfolge sein, die verglichen wird
* Um die Protokollierung zu aktivieren, übergeben Sie das Objekt der Klasse „ComparerSettings“ als zusätzlichen Parameter. Die Klasse hat ein nützliches Logger-Feld
2. Fügen Sie den zweiten Dokumentpfad zum Vergleichsobjekt hinzu, indem Sie die entsprechende Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add-java.lang.String-) verwenden.
* Alle Zusatzoptionen ab S.1. sind auch hier erhältlich
3. Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) auf, um das Vergleichsergebnis beider Dokumente zu erhalten.
* Um den Vergleichsprozess zu konfigurieren, können Sie [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions), [SaveOptions](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) oder beide. Hier nur ein paar Einstellungen:
* Arbeiten mit Dokumentmetadaten
* Ergebnisdokument mit Passwort schützen
* Konfigurieren von Stilen hinzugefügter, gelöschter und geänderter Teile von Dokumenten
* Änderung der Empfindlichkeit des Vergleichs
* Aktivieren/Deaktivieren verschiedener Arten von Änderungen
* Zusammenfassungsseite erstellen
* Und [viel mehr](/vergleich/java/vergleich/)

Hier ist der Code zum Vergleichen von Dateien:

<script src="https://gist.github.com/groupdocs-comparison-gists/07b102aec320458b093158f5197bb39b.js"></script>

Im obigen Code verwenden wir das temporäre Systemverzeichnis und die statische Methode [FileType.fromFileNameOrExtension](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#fromFileNameOrExtension-java.lang.String- ), der den Dateityp erkennt, um einen Pfad zum Speichern der Ergebnisdatei zu erstellen. Sie können es ändern, um die Ergebnisdatei im Java-Ausgabestrom zu speichern. *Hinweis: Die Ergebnisdatei hat hier immer den gleichen Namen `Ergebnis`. Das bedeutet, dass jeder Vergleichsprozess das vorherige Ergebnisdokument ersetzt.* Sie können [FileType.getSupportedFileTypes](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#getSupportedFileTypes--) aufrufen. -Methode, um alle unterstützten Dokumenttypen für die Version der Vergleichsbibliothek abzurufen, die Sie haben.

### Speichern des resultierenden Dokuments an dem Ort, den der Kunde auswählt

<script src="https://gist.github.com/groupdocs-comparison-gists/02051b940d9777eaac914946acd22de4.js"></script>

Hier verwenden wir nur den JFileChooser-Speicherdialog, um dem Benutzer die Möglichkeit zu geben, den Ort auszuwählen, an dem die Ergebnisdatei gespeichert wird. Danach verschieben wir die resultierende Datei an den neuen Ort. Natürlich müssen hier einige Überprüfungen und Benachrichtigungen hinzugefügt werden, es ist nur ein Beispiel.

### Mehr Möglichkeiten der Vergleichs-API

Die minimale Anwendungsfunktionalität ist bereits implementiert. Aber es gibt viele Dinge, die verbessert werden können. Beispielsweise ist es sehr einfach, Quell-, Ziel- und Ergebnisdokumente anzuzeigen, jede Änderung anzuzeigen, dem Benutzer die Möglichkeit zu geben, Änderungen zu akzeptieren oder abzulehnen, bevor das Dokument gespeichert wird, und so weiter.

#### Bilder aus Dateien in Compose Desktop anzeigen

Compose Desktop verfügt bereits über Maler, um Bilder aus Ressourcen anzuzeigen. Wir benötigen jedoch einen zusätzlichen Ressourcenlader, um Bilder aus der Datei anzuzeigen. Hier ist nur ein einfaches Beispiel, wie es gemacht werden kann:

<script src="https://gist.github.com/groupdocs-comparison-gists/eae238d65e5fac06b7afbdf95aed1c14.js"></script>

Und hier ist das Beispiel für die Verwendung dieses Ladeprogramms in der Compose-Funktion:

<script src="https://gist.github.com/groupdocs-comparison-gists/4da2c9d2d8c9ed67a2f224f1e1592df0.js"></script>

#### Seiten des resultierenden Dokuments anzeigen

Um die Seiten des resultierenden Dokuments anzuzeigen, müssen wir [Vorschauen für jede Seite generieren](/comparison/net/generate-document-pages-preview/). Glücklicherweise verfügt die Vergleichs-API über spezielle Funktionen, um dies zu tun.

Hier ist das Beispiel zum Generieren von Vorschaubildern:

<script src="https://gist.github.com/groupdocs-comparison-gists/33607095e596a70efc85d61740a542e0.js"></script>

Die Klasse [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) verfügt nicht nur über Optionen zum Festlegen des Ausgabebildformats, sondern auch zum Angeben von Breite, Höhe und Seiten des Bilds verarbeiten und so weiter.

#### Änderungen werden mit der Vergleichs-API angezeigt

Neben der Generierung von Vorschauen bietet [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) die Möglichkeit, eine Liste der Änderungen zu erhalten und Änderungen zu akzeptieren/abzulehnen. Dazu müssen Sie nach dem Aufruf die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges-com.groupdocs.comparison.options.GetChangeOptions-) verwenden [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare-java.lang.String-) Methode. Sie können [GetChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/GetChangeOptions) übergeben, um den Filter zu konfigurieren, dies ist jedoch nicht erforderlich.

<script src="https://gist.github.com/groupdocs-comparison-gists/3ce0ef2b0ef1744448e9a4cf1e05da6a.js"></script>

Wie Sie oben sehen, gibt die Methode [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges--) eine Liste der Änderungen zurück, von denen jede viele Informationen enthält, wie folgt:
* [Eindeutige ID](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getId--) der Änderung
* [Text ändern](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getText--) aus dem resultierenden Dokument
* [Text vor](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getSourceText--) ändert sich
* [Text nach](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getTargetText--) ändert sich
* Koordinaten [der Box](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getBox--) auf der Seite, auf der sich die Änderung im Dokument befindet
* [Liste der Stile](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getStyleChanges--) ändert sich
* Und [so weiter] (https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo)

### Holen Sie sich eine kostenlose API-Lizenz

Die meisten Optionen sind erst nach dem Einstellen der Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz] (https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne die Evaluierungseinschränkungen zu verwenden.

### Fazit

In diesem Artikel wurde nur ein kleiner Prozentsatz der Funktionalität von [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) gezeigt. Um weitere Informationen zu erhalten, können Sie [die Dokumentation](/comparison/java/getting-started/) und das [GitHub](https://github.com/groupdocs-comparison)-Repository durchgehen. Außerdem haben wir auf [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Compose) ein ähnliches Beispiel für die Verwendung der Vergleichs-API zusammen mit dem Compose Desktop-Framework. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie [Autocad-Zeichnungsvorschau anzeigen](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) in der Kotlin-Compose-Anwendung
* Anleitung zum [Vergleichen von Java-Codedateien](/comparison/java/how-to-compare-images-using-java-or-kotlin) beim Anwenden oder Ablehnen von Änderungen mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
