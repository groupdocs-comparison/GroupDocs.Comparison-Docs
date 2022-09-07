---
id: how-to-use-ktor-comparison-sample
url: comparison/java/how-to-use-ktor-comparison-sample
title: "So verwenden Sie das Ktor-Vergleichsmuster"
weight: 19
description: "Der Artikel beschreibt ein GroupDocs-Vergleichsbeispiel, das mit Ktor Framework erstellt wurde"
keywords: "Ktor Framework, Dokumente vergleichen, Dateien mit Kotlin vergleichen, Vergleichstool mit Kotlin und Ktor Framework"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Pdf, Word, Bildvergleichs-API
        description: "Das Produkt ermöglicht den Vergleich von PDF-, Word- und Bilddateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So verwenden Sie das Ktor-Framework
        description: "Erfahren Sie, wie Sie Ktor Framework verwenden, um Dokumente, Bilder und andere Dateien in Java- oder Kotlin-Projekten zu vergleichen"
Schritte:
- Name: Welche Technologien verwendet werden
Text: Finden Sie heraus, welche Technologien benötigt werden und in der Anwendung zum Einsatz kommen
- Name: Gemeinsame Struktur des Projekts
Text: Es ist sehr wichtig, die Hauptstruktur des Anwendungsprojekts zu bilden
- Name: Einstiegspunkt oder wie das Beispiel ausgeführt wird
Text: Eine oder mehrere Möglichkeiten, wie die Anwendung gestartet wird
- Name: Schlüsselstellen innerhalb der Anwendung
Text: Implementieren Sie allgemeine Funktionen innerhalb der Anwendung, damit sie funktioniert
---
Es gibt viele beliebte Web-Frameworks, die Sie mit der GroupDocs-Vergleichsbibliothek verwenden können. Eines der modernsten und leistungsstärksten Kotlin-Frameworks ist Ktor. Dieser Artikel beschreibt ein Beispiel für die Verwendung des Ktor Framework zusammen mit der modernen und leistungsstarken [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) zum Vergleichen von Word-, Excel-, PowerPoint-, Pdf-Dokumenten, Fotos und vielem mehr. Das Beispiel ist völlig kostenlos und verfügbar [auf GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor)

### Welche Technologien zum Einsatz kommen

1. Kotlin – Eine moderne Programmiersprache, die Entwickler glücklicher macht. Vollständig kompatibel mit Java-Bibliotheken.
2. Ktor – Modernes, quelloffenes, kostenloses und unterhaltsames Web-Framework.
3. Netty – Eingebettet in die Ktor-Version des Webservers.
4. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) – moderne Vergleichsbibliothek für Java, Kotlin und .NET
5. Koin – Intelligente Kotlin-Injektionsbibliothek
6. Logback - Universelles Protokollierungssystem

### Gemeinsame Struktur des Projekts

* `config` - Kotlin-Klassen zum Zuordnen von Anwendungs- und Vergleichskonfigurationen
* `di` - Koin-Abhängigkeitsinjektionsmodule
* `manager` - abstrakte Ebene für weit verbreitete Operationen
* `model` - Request/Response-Kotlin-Klassen
* `modules` - URL-Mappings und Controller zur Verarbeitung von Anfragen
* `status` - Handler zur Verarbeitung von Ausnahmen
* `usecase` - Geschäftslogik

#### Zusätzliche wichtige Dateien

In Quellen:

* `Application.kt` - Einstiegspunkt der Anwendung
* `Defaults.kt` - zu verwendende Standardwerte, wenn sie nicht konfiguriert sind

In Ressourcen:

* `application.conf` - Anwendungskonfiguration
* `comparer.conf` - Beispielkonfiguration
* `logback.xml` - Konfiguration des Logging-Systems

### Einstiegspunkt oder wie das Beispiel ausgeführt wird

#### Mit IDE

Der Einstiegspunkt der Anwendung befindet sich in einer Datei „Application.kt“. Es gibt eine „main“-Funktion, die ausgeführt werden muss, um die Anwendung zu starten. Sie können dies in Ihrer bevorzugten IDE tun.

#### Über die Befehlszeile

Um die Anwendung auszuführen, öffnen Sie die Befehlszeile im Ktor-Beispielverzeichnis und führen Sie den nächsten Befehl aus

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

Der Befehl führt die Anwendung mit dem Gradle-Wrapper aus, der sich im Verzeichnis „gradle“ befindet. Öffnen Sie [http://localhost:8080/comparer](http://localhost:8080/comparison) im Webbrowser.

Sie können ganz einfach ein Archiv zur Verteilung erstellen. Erstellen Sie dazu einfach die Anwendung mit dem nächsten Befehl

<script src="https://gist.github.com/groupdocs-comparison-gists/77581fd6decb81d87d7a7487f997de7a.js"></script>

Danach können Sie in das Verzeichnis `.\build\distributions\` gehen und die nächsten Distributionsdateien finden:

* Vergleich-ktor-22.3.tar
* Vergleich-ktor-22.3.zip

Darin befinden sich zwei Verzeichnisse, „lib“ mit allen Anwendungsbibliotheken und „bin“ mit Skripten zum Ausführen der App

### Schlüsselstellen innerhalb der Anwendung

#### Mappings und Controller

Paket `mudules` enthält einige Unterpakete. Jeder von ihnen ist eine einzelne Anfrage. Sehen wir uns zum Beispiel das Unterpaket „compare“ an.
Das Paket enthält zwei Dateien:
1. `CompareModule.kt` - enthält URL-Mapping, wird aufgerufen, wenn eine Anfrage zum Vergleichen von Dokumenten vom Browser gesendet wird

<script src="https://gist.github.com/groupdocs-comparison-gists/6c365c5e96514aad2d97c319e67540d5.js"></script>

Alles, was die Klasse tut: Anfrage abfangen, Parameter extrahieren, Controller aufrufen und Antwortobjekt zurückgeben
2. `CompareController.kt` - Kombinieren von Usecase-Ergebnissen und Parametern erzeugt Response-Objekt.
Zunächst prüft es mit `PathManager`, ob sich Anfragepfade in erlaubten Verzeichnissen befinden

<script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

Dann prüft der Controller, ob angeforderte Dateien von der Vergleichsanwendung unterstützt werden. Zu diesem Zweck verwendet es einen speziellen Anwendungsfall, der als `AreFilesSupportedUseCase` bezeichnet wird

<script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

Der nächste Schritt besteht darin, den Pfad zu der Datei zu erstellen, in der das Ergebnisdokument des Vergleichsprozesses gespeichert wird

<script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

Temporäre Dateien werden verwendet, um die RAM-Nutzung zu minimieren. Es ist einfach, die App so zu ändern, dass keine Dateien gespeichert werden. Das temporäre Verzeichnis kann in `comparer.conf` angegeben werden. Standardmäßig wird das temporäre Verzeichnis des Systems verwendet.

Jetzt verwendet der Controller „CompareDocumentsUseCase“, um Quell- und Zieldokumente zu vergleichen und die Ergebnisdatei zu speichern. Außerdem gibt der Anwendungsfall eine Liste von Änderungen zurück, die später in das Antwortobjekt gesetzt werden

<script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

Der nächste Anwendungsfall mit dem Namen „RetrieveLocalFilePagesStreamUseCase“ wird verwendet, um den Eingabestrom für jede Seite des Ergebnisdokuments zu erhalten

<script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

Und der letzte Schritt besteht darin, groupdocs `ChangeInfo`-Objekte in Antwortmodelle abzubilden, die als Ergebnis gesendet werden

#### Was sind Anwendungsfälle und wie werden sie verwendet?

Im Allgemeinen ist der Anwendungsfall ein einzelner Thin, der ausgeführt werden kann. Normalerweise enthält es Geschäftslogik, hat nur ein Ziel und ist einfach zu testen. Alle Anwendungsfälle im Projekt sind so konfiguriert, dass sie von Koin erstellt werden. Einige Anwendungsfälle haben Konstruktorparameter, die eingefügt werden, wenn Koin eine Instanz des Anwendungsfalls erstellt.
Lassen Sie uns als Beispiel einen Überblick über `CompareDocumentsUseCase` geben

Der Anwendungsfall hat den `invoke`-Operator überschrieben, sodass er mit seinem Objekt als Funktion aufgerufen werden kann. Das einzige Ziel des Anwendungsfalls ist es, Quell- und Zieldokumente zu vergleichen und das Ergebnis in den bereitgestellten Ausgabestrom zu schreiben.

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

Als Parameter nimmt es Pfade von Quell- und Zieldokumenten und Ausgabestrom, in dem das Ergebnis gespeichert werden soll. Optionale Parameter sind Passwörter für jedes Dokument.

Um Dokumente zu vergleichen, verwenden wir eine leistungsstarke und moderne Bibliothek [GroupDocs.Comparison for Java/Kotlin](https://products.groupdocs.com/comparison/java/). Mit der Bibliothek ist der Vergleichsprozess sehr einfach.

Der erste Schritt besteht darin, ein Objekt der Klasse „Comparer“ zu erstellen. Ladeoptionen werden verwendet, um ein Passwort für das Dokument bereitzustellen. Mit Optionen können Sie Comparer auch so konfigurieren, dass der erste Parameter nicht als Pfad zum Quelldokument verwendet wird (Streams sind ebenfalls verfügbar), sondern als Quelltext für den Vergleichsprozess. Außerdem besteht die Möglichkeit, Verzeichnisse mit bestimmten Schriftarten zu konfigurieren. Comparer implementiert die Java-Closeable-Schnittstelle, sodass es sehr einfach ist, belegten Speicher freizugeben.

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

Innerhalb des „use“-Blocks rufen wir die „add“-Methode des Vergleichs auf, um ein zweites Dokument oder einen zweiten Text zum Vergleichen hinzuzufügen. Die Methode verwendet denselben `LoadOptions`-Parameter. Darüber hinaus unterstützt [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) den Vergleich mehrerer Dokumente, sodass Sie mehr als ein Zieldokument hinzufügen können.

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

Der letzte Schritt besteht darin, die Methode "compare" aufzurufen, die den Vergleichsprozess startet. Wie Sie sehen können, nimmt die Methode das Objekt „CompareOptions“ als zweites Argument. Hier werden nur einige Optionen verwendet. Es ist so konfiguriert, dass es Inhalte anzeigt, die im Zieldokument gelöscht wurden, Stiländerungen erkennt und verarbeitet und jede Änderung im Ergebnisdokument koordiniert. Es gibt viel mehr Optionen zur Verfügung. Beispielsweise können Sie das Generieren einer Zusammenfassungsseite aktivieren, die Empfindlichkeitsstufe des Vergleichs ändern, jede Art von Änderung aktivieren/deaktivieren, ihren Stil im Ergebnisdokument konfigurieren und so weiter. Weitere Optionen finden Sie [in der Dokumentation](/comparison/java/getting-started/).
Am Ende des „apply“-Blocks verwenden wir die Methode „comparer.getChanges()“, um eine Liste der Änderungen zu erhalten.

#### Abhängigkeitsspritze

Eine weitere wichtige Sache in der Anwendung ist ein Objekt `ModulesInjection`. Es wird verwendet, um Koin Informationen über Klassen und Schnittstellen zu geben, die es erstellen oder einfügen soll. Hier sind Controller, Anwendungsfälle und Manager. Wenn Sie eine neue Klasse hinzufügen, die von Koin eingefügt werden muss, ist es sehr wichtig, sie hier in einem der Module anzugeben.

<script src="https://gist.github.com/groupdocs-comparison-gists/0754c1a4729f7b0f0e6d4828049d6a48.js"></script>

### Holen Sie sich eine kostenlose API-Lizenz

Viele Vergleichseinstellungen, z. B. Erstellen einer Übersichtsseite, Sensitivität des Vergleichs usw., sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

Der Artikel beschreibt das Beispiel [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/), das mit dem Ktor-Webframework implementiert wurde. Weitere Beispiele für die Verwendung von GroupDocs.Comparison für Java/Kotlin finden Sie auf unserer [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Sie sind völlig kostenlos und offen, um sie als Kern Ihrer eigenen Anwendung zum Vergleichen von Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und vielem mehr zu verwenden [unterstützte Dateiformate](/comparison/java/supported-document-formats/) .

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* How to [use Dropbox API](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) als Dateiquelle für die Vergleichs-API
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin

