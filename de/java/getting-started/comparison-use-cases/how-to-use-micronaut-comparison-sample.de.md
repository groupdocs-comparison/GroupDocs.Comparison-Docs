---
id: how-to-use-micronaut-comparison-sample
url: comparison/java/how-to-use-micronaut-comparison-sample
title: "So verwenden Sie das Micronaut-Vergleichsmuster"
weight: 30
description: "Der Artikel beschreibt ein GroupDocs-Vergleichsbeispiel, das mit Micronaut Framework erstellt wurde"
keywords: "Micronaut Framework, Dokumente vergleichen, Dateivergleich, Vergleichsbibliothek für Micronaut Framework"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Word-, Pdf-, Excel-Vergleichsbibliothek
        description: "Das Produkt ermöglicht den Vergleich von Word-, PDF- und Excel-Dateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: Verwendung von Micronaut Framework zum Vergleichen von Dateien
        description: "Erfahren Sie, wie Sie Micronaut Framework verwenden, um Dokumente zu vergleichen"
Schritte:
- Name: Verwendete Technologien
Text: Beschreibung der Technologien, die in der Anwendung verwendet werden
- name: Beschreibung der Anwendungsarchitektur
Text: Kurze Beschreibung der Anwendungsarchitektur
- name: Erstellen und Ausführen der Anwendung
text: Möglichkeiten, wie die Anwendung mit IDE oder CLI ausgeführt werden kann
- Name: Schlüsselstellen innerhalb der Anwendung
Text: Umsetzung der wichtigsten Teile in der Anwendung
---
[GroupDocs.Comparison](https://products.groupdocs.com/comparison) ist die flexibelste, leistungsfähigste und benutzerfreundlichste Java-Bibliothek, die erstellt wurde, um Dokumentenvergleichsanwendungen in einer Java-Umgebung zu entwickeln. Micronaut ist ein modernes, JVM-basiertes Full-Stack-Framework zum Erstellen modularer, leicht testbarer Microservice- und serverloser Anwendungen. Wenn Sie sie kombinieren, können Sie auf einfache Weise eine leistungsstarke und moderne Java-basierte Anwendung zum Vergleichen von Word- und PDF-Dokumenten, Fotos und Bildern, PowerPoint-Präsentationen, AutoCad-Zeichnungen, XML-, MSG-, JSON-, TXT-Dateien und vielem mehr entwickeln [unterstützte Dateiformate](/Vergleich/ java/supported-document-formats/). In dem Artikel lesen Sie über Beispielvergleichsanwendungen, deren Quellen völlig kostenlos und auf [GitHub-Seite] verfügbar sind (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/a5e2a25/Demos/ Mikronaut)

### Verwendete Technologien

1. Kotlin – Eine moderne Programmiersprache, die Entwickler glücklicher macht. Vollständig kompatibel mit Java-Bibliotheken.
2. Micronaut – JVM-basiertes Framework zum Erstellen leichtgewichtiger, modularer Anwendungen.
3. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) – die flexibelste und modernste Vergleichsbibliothek für Java, Kotlin und .NET
4. Thymeleaf – moderne serverseitige Java-Template-Engine für Web- und Standalone-Umgebungen.

### Beschreibung der Anwendungsarchitektur

* `config` - Klassen, die verwendet werden, um die Konfiguration der Anwendung abzubilden
* `manager` - Helfer, zum Beispiel Manager, um mit Dateipfaden zu arbeiten
* "model" - Modellklassen für Anforderungen und Antworten
* `modules` - Controller und ihre Beans
* `usecase` - Geschäftslogik

#### Zusätzliche Dateien

In Quellen:

* `Application.kt` - Einstiegspunkt der Anwendung
* `Defaults.kt` - Eigenschaften, die als Standardwerte für Konfigurationsoptionen verwendet werden

In Ressourcen:

* `application.conf` - Konfiguration der Anwendung
* `logback.xml` - Protokollierung der Systemkonfiguration

### Erstellen und Ausführen der Anwendung

#### Mit IDE

Der Einstiegspunkt der Anwendung befindet sich in einer Datei „Application.kt“. Die Funktion „main“ muss ausgeführt werden, um die Anwendung zu starten. Dies kann mit Hilfe einer beliebigen IDE erfolgen.

#### Über die Befehlszeile

Sie können das Beispiel einfach mit CLI ausführen, indem Sie den nächsten Befehl ausführen

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

Die Anwendung wird mit dem Gradle-Wrapper ausgeführt, der sich im Verzeichnis „gradle“ befindet. Öffnen Sie [http://localhost:8080/comparer](http://localhost:8080/comparison) in Ihrem bevorzugten Webbrowser, um die Benutzeroberfläche anzuzeigen.

Das Erstellen eines Verteilungsarchivs ist so einfach wie das Ausführen der Anwendung:

<script src="https://gist.github.com/groupdocs-comparison-gists/a57bf4fbc4e6aaeee637e5daf4fa5824.js"></script>

Gehen Sie danach in das Verzeichnis `.\build\distributions\` und Sie finden die nächsten Distributionsdateien:

* Vergleich-micronaut-22.3.tar
* Vergleich-micronaut-22.3.zip

Beide haben ein „bin“-Verzeichnis mit Skripten zum Ausführen der App und ein „lib“-Verzeichnis, das alle Anwendungsbibliotheken enthält

### Schlüsselstellen innerhalb der Anwendung

#### Controller und Bohnen

Innerhalb des Pakets „mudules“ befinden sich Unterpakete. Jeder von ihnen bearbeitet eine einzelne Anfrage vom Client. Sehen wir uns als Beispiel das Unterpaket „compare“ an.

Das Paket enthält zwei Dateien:

1. „CompareController.kt“ – enthält eine Klasse, die Anfragen an die „/compare“-URL zwischenspeichert

<script src="https://gist.github.com/groupdocs-comparison-gists/ea8d8e0466e35d7e1c21b97f5b1a658b.js"></script>

Die Ziele der Klasse bestehen darin, Anforderungen abzufangen, Parameter zu extrahieren, Methoden einer Bean aufzurufen und Antwortobjekte zurückzugeben, die von der Bean erstellt wurden
2. „CompareBean.kt“ – es verwendet Anwendungsfälle und übergebene Argumente, um ein Antwortobjekt zu erstellen.
Als Erstes überprüft die Bean, ob sich die Anforderungspfade in zulässigen Verzeichnissen befinden. Das Bean verwendet `PathManager`, um es zu überprüfen

<script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

Als Zweites wird überprüft, ob die angeforderten Dateien vom Beispiel unterstützt werden. Die Bean verwendet einen speziellen Anwendungsfall: „AreFilesSupportedUseCase“.

<script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

Der dritte Schritt ist das Erstellen eines Pfads zu der Datei, in der das Ergebnisdokument gespeichert wird

<script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

Das Beispiel verwendet temporäre Dateien, um es verständlicher zu machen. Es ist einfach, das Beispiel zu ändern, um stattdessen IO-Streams zu verwenden. Der Pfad zum temporären Verzeichnis kann in `application.conf` konfiguriert werden. Standardmäßig wird das Systemverzeichnis verwendet

Im nächsten Schritt wird `CompareDocumentsUseCase` verwendet, um Quell- und Zieldokumente zu vergleichen und die Ergebnisdatei zu speichern. Es gibt eine Liste der Änderungen zurück, die an den Client gesendet wird.

<script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

Ein weiterer wichtiger Schritt ist das Abrufen von Eingabeströmen von Seiten im Ergebnisdokument mit `RetrieveLocalFilePagesStreamUseCase`. Diese Seiten werden auf der Clientseite angezeigt.

<script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

Und der letzte Schritt ist die Abbildung von Vergleichs-„ChangeInfo“-Objekten, die jede Änderung im Dokument in Antwortmodellen darstellen, die an den Client gesendet werden.

#### Anwendungsfälle verstehen

Usecase ist eine Klasse, die nur ein Ziel hat. Anwendungsfälle müssen einfach zu testen sein und dürfen keinen Zustand haben. Im Beispiel wird jeder Anwendungsfall mit der Annotation „@Bean“ kommentiert. Das bedeutet, dass sie mit Hilfe des in Micronaut Framework eingebetteten Mechanismus in Controller und andere Beans injiziert werden. Auf die gleiche Weise werden Argumente von Usecase-Konstruktoren aufgelöst.

Lassen Sie uns einen Überblick über `CompareDocumentsUseCase` als Beispiel geben:

Im Usecase-Operator wird „invoke“ überschrieben, um es zu ermöglichen, Usecase-Objekte wie eine Funktion zu verwenden. Das Hauptziel des Anwendungsfalls besteht darin, Quell- und Zieldokumente zu vergleichen und das Ergebnisdokument zu speichern.

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

Parameter des Anwendungsfalls sind Quelldokument, Zieldokument und Ausgabestrom. Es vergleicht Dokumente mit der Bibliothek [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) und speichert das Ergebnis im bereitgestellten Stream. Optional werden Passwörter für jedes Dokument benötigt.

Die Vergleichsbibliothek wird verwendet, um Dokumente in der Stichprobe zu vergleichen. Es ist sehr einfach zu bedienen, sodass Sie alle Dokumente in nur wenigen Codezeilen vergleichen können:

1. Instanziiere das `Comparer`-Objekt, das den Pfad oder Stream des Quelldokuments übergibt.
Alternativ können Sie Comparer mit `LoadOptions` konfigurieren, um das erste Argument als Quelltext für den Vergleichsprozess zu interpretieren. Es hat auch die Eigenschaft, Verzeichnisse mit Schriftarten zu übergeben, die für das Dokument spezifisch sind. Optional können Sie das Passwort für das Quelldokument mit einer speziellen Eigenschaft des `LoadOptions`-Objekts angeben. Comparer implementiert die Java `Closeable`-Schnittstelle, daher wird empfohlen, try-with-resources zu verwenden, um damit zu arbeiten.

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

2. Verwenden Sie die Methode "Hinzufügen" des Vergleichs, um ein zweites Dokument oder einen zweiten Text zum Vergleichen bereitzustellen. Der Methode kann derselbe `LoadOptions`-Parameter mit all seinen Eigenschaften übergeben werden. Darüber hinaus unterstützt [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) den Vergleich mehrerer Dokumente. Um es zu verwenden, fügen Sie einfach weitere Zieldokumente mit der `Hinzufügen`-Methode des Vergleichs hinzu.

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

3. Das letzte, was Sie tun müssen, ist die Methode "compare" aufzurufen, um mit dem Vergleich zu beginnen. Als zweites Argument für die Konfiguration des Prozesses wird das Objekt „CompareOptions“ verwendet. Hier sind nur einige Möglichkeiten der Bibliothek gezeigt. Im obigen Code ist der Vergleich konfiguriert, um gelöschte Inhalte anzuzeigen, Stiländerungen zu erkennen und Koordinaten jeder Änderung zu berechnen. Es stehen viel mehr Optionen zur Konfiguration zur Verfügung. Sie können beispielsweise das Generieren einer Zusammenfassungsseite aktivieren, die Vergleichsempfindlichkeitsstufe ändern, einige Arten von Änderungen deaktivieren, Stile konfigurieren, die zum Hervorheben von Änderungen verwendet werden, und vieles mehr. Lesen Sie mehr darüber [in der Dokumentation](/comparison/java/getting-started/).
Die Methode „comparer.getChanges()“ wird am Ende des „apply“-Blocks verwendet, um eine Liste der Änderungen zu erhalten.

### Holen Sie sich eine kostenlose API-Lizenz

Einige der Vergleichsfunktionen, wie z. B. Empfindlichkeit des Vergleichs, Generieren einer Zusammenfassungsseite usw., sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Kostenlose Online-App
Sie können den Vergleichsalgorithmus mit Hilfe leistungsstarker kostenloser Anwendungen überprüfen.
Versuchen Sie, Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG-, DWG-, DXF- und andere Dokumente mit der kostenlosen Online-Vergleichsanwendung [GroupDocs-Vergleichsanwendung] (https://products.groupdocs.app /Vergleich).

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* How to [use Ktor Comparison](/comparison/java/how-to-use-ktor-comparison-sample) Sample
* Wie [Autocad-Zeichnungsvorschau anzeigen](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) in der Kotlin-Compose-Anwendung
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin

