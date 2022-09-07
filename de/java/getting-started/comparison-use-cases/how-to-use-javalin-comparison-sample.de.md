---
id: how-to-use-javalin-comparison-sample
url: comparison/java/how-to-use-javalin-comparison-sample
title: "So verwenden Sie das Javalin-Vergleichsbeispiel"
weight: 25
description: "Der Artikel beschreibt ein GroupDocs-Vergleichsbeispiel, das mit Javalin Framework erstellt wurde"
keywords: "Dokumente vergleichen, Javalin Framework, Dateien mit Kotlin vergleichen, Vergleichstool mit Kotlin und Javalin Framework"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: PowerPoint, Excel, Bildvergleichs-API
        description: "Das Produkt ermöglicht den Vergleich von PowerPoint-, Excel- und Bilddateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: Wie Javalin Framework verwendet wird
        description: "Erfahren Sie, wie Sie Javalin Framework zum Vergleichen von Dokumenten verwenden"
Schritte:
- Name: Verwendete Technologien
Text: Finden Sie heraus, welche Technologien benötigt werden und in der Anwendung zum Einsatz kommen
- Name: Gemeinsame Projektstruktur
Text: Es ist sehr wichtig, die Hauptstruktur des Projekts zu verstehen
- name: So wird das Beispiel ausgeführt
Text: Eine oder mehrere Möglichkeiten, wie die Anwendung ausgeführt werden kann
- Name: Hauptpunkte innerhalb der Anwendung
Text: Implementieren Sie allgemeine Funktionen innerhalb der Anwendung, damit sie funktioniert
---
Die GroupDocs-Vergleichsbibliothek kann mit vielen gängigen Web-Frameworks verwendet werden. Eines davon ist Javalin Framework. Wenn Sie den Artikel durchgehen, werden Sie verstehen, wie einfach die moderne und leistungsstarke [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) mit Javalin Framework kombiniert werden kann, um eine Webanwendung zum Vergleichen von AutoCad-Zeichnungen, PowerPoint-Präsentationen, Word-, Excel- und Pdf-Dokumente, Fotos, Bilder und [viel mehr](/comparison/java/supported-document-formats/). Die Beispielanwendung kann völlig kostenlos verwendet und geändert werden. Quellen sind verfügbar auf [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/d1e380f/Demos/Javalin)

### Verwendete Technologien

1. Kotlin – Eine moderne Programmiersprache, die Entwickler glücklicher macht. Vollständig kompatibel mit Java-Bibliotheken.
2. Javalin – Ein einfaches Web-Framework für Java und Kotlin.
3. Jetty – Eingebettet in den Javalin-Webserver.
4. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) – moderne Vergleichsbibliothek für Java, Kotlin und .NET
5. Koin – Intelligente Kotlin-Injektionsbibliothek
6. Slf4j - Wrapper für Protokollierungssystem

### Gemeinsame Projektstruktur

* „config“ – Kotlin-Klasse zum Zuordnen der Konfiguration der Anwendung
* `di` - Module der Koin-Abhängigkeitsinjektion
* `manager` - Manager zum Arbeiten mit Pfaden
* "model" - Modelle, die Anforderungen und Antworten darstellen
* `modules` - URL-Mappings mit Controllern zur Verarbeitung von Anfragen
* `usecase` - Geschäftslogik

#### Zusätzliche Dateien

In Quellen:

* `Application.kt` - Einstiegspunkt der Anwendung
* `Defaults.kt` - Standardwerte für Konfigurationsoptionen

In Ressourcen:

* `application.conf` - Konfiguration der Anwendung
* `logback.xml` - Protokollierung der Systemkonfiguration

### So führen Sie das Beispiel aus

#### Mit IDE

Der Einstiegspunkt des Beispiels befindet sich in einer Datei „Application.kt“. Es enthält die Hauptfunktion, die ausgeführt werden muss, um die Anwendung auszuführen. Sie können dies mit der bevorzugten IDE tun.

#### Über die Befehlszeile

Öffnen Sie die Befehlszeile im Beispielverzeichnis. Um das Beispiel auszuführen, führen Sie den nächsten Befehl aus

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

Der Befehl startet die Anwendung mit Hilfe des Gradle-Wrappers, der sich im Verzeichnis „gradle“ befindet. Öffnen Sie [http://localhost:8080/comparer](http://localhost:8080/comparison) im Webbrowser, um die Beispiel-Benutzeroberfläche anzuzeigen.

Um ein Verteilungsarchiv zu erstellen, erstellen Sie einfach die Anwendung mit dem nächsten Befehl

<script src="https://gist.github.com/groupdocs-comparison-gists/77581fd6decb81d87d7a7487f997de7a.js"></script>

Gehen Sie dann in das Verzeichnis „.\build\distributions\“ und Sie werden die Distributionsdateien sehen:

* Vergleich-Javalin-22.3.tar
* Vergleich-javalin-22.3.zip

Darin befinden sich zwei Verzeichnisse, „bin“ mit Skripten zum Ausführen der App und „lib“ mit allen Anwendungsbibliotheken

### Hauptpunkte innerhalb der Anwendung

#### Mappings und Controller

Das Paket „mudules“ enthält Unterpakete, von denen jedes eine einzelne Anforderung ist. Sehen wir uns als Beispiel das Unterpaket „compare“ an.

Das Paket enthält zwei Dateien:

1. `CompareModule.kt` - diese Datei enthält URL-Mapping, sie wird aufgerufen, wenn eine Anfrage zum Vergleichen von Dokumenten gesendet wird

<script src="https://gist.github.com/groupdocs-comparison-gists/20a0e6af013f3c0a8a57695efd2ed87d.js"></script>

Die Klasse macht einfache Dinge: fängt eine Anfrage ab, extrahiert Parameter, ruft einen Controller auf und gibt ein Antwortobjekt zurück
2. `CompareController.kt` - erstellt unter Verwendung von Anwendungsfällen und Parametern ein Antwortobjekt.
Zunächst überprüft der Controller mit Hilfe von `PathManager`, ob sich die Anforderungspfade in zulässigen Verzeichnissen befinden

<script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

Zweitens prüft es, ob die angeforderten Dateien vom Beispiel unterstützt werden. Dazu verwendet der Controller einen speziellen Anwendungsfall mit dem Namen „AreFilesSupportedUseCase“.

<script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

Drittens erstellt der Controller einen Pfad zu der Datei, die verwendet wird, um das Ergebnisdokument des Vergleichsprozesses zu speichern

<script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

Dort werden einige temporäre Dateien verwendet. Es wird benötigt, um die RAM-Nutzung zu minimieren. Jeder kann das Beispiel leicht ändern, um das Speichern von Dateien zu vermeiden. Es gibt eine spezielle Option in `application.conf`, um den Pfad zum temporären Verzeichnis zu konfigurieren. Standardmäßig wird das Temp-Verzeichnis des Systems verwendet.

Der nächste Schritt besteht darin, „CompareDocumentsUseCase“ zu verwenden, um Quell- und Zieldokumente zu vergleichen und die Ergebnisdatei zu speichern. Der Anwendungsfall gibt eine Liste von Änderungen zurück, die in das Antwortobjekt gesetzt werden, um es an den Client zurückzusenden

<script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

Der Anwendungsfall „RetrieveLocalFilePagesStreamUseCase“ wird verwendet, um den Eingabestrom für jede Seite des Ergebnisdokuments abzurufen

<script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

Und die letzte Sache ist, `ChangeInfo`-Objekte aus dem Paket groupdocs in Antwortmodelle abzubilden, die als Ergebnis verwendet werden sollen

#### Anwendungsfälle verstehen

Usecase ist nur eine einzelne Aktion, die ausgeführt werden kann. Normalerweise enthält es Geschäftslogik, um eine Aufgabe zu lösen. Anwendungsfälle müssen einfach zu testen sein. Im Projekt sind alle Anwendungsfälle so konfiguriert, dass sie von der Koin-Injektionsbibliothek erstellt werden. Einige von ihnen haben Konstruktorparameter, die von Koin eingefügt werden, wenn es eine Instanz des Anwendungsfalls erstellt.
Sehen wir uns zum Beispiel `CompareDocumentsUseCase` an

Es gibt einen 'invoke'-Operator, der überschrieben wird, so dass der Anwendungsfall unter Verwendung seines Objekts wie einer Funktion aufgerufen werden kann. Der Anwendungsfall hat ein einfaches Ziel – den Vergleich von Quell- und Zieldokumenten, die das Ergebnis in den bereitgestellten Ausgabestrom schreiben.

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

Es nimmt Pfade von Quell- und Zieldokumenten und Ausgabestrom als Argumente. Ergebnisdaten des Vergleichsprojekts werden in den bereitgestellten Stream geschrieben. Optional gibt es Parameter, um das Passwort für jedes Dokument zu übergeben.

Es gibt eine leistungsstarke und moderne Bibliothek [GroupDocs.Comparison for Java/Kotlin](https://products.groupdocs.com/comparison/java/), die zum Vergleichen von Dokumenten verwendet wird. Der Vergleichsprozess ist mit der Bibliothek sehr einfach.

Um Dokumente, Präsentationen, Bilder usw. zu vergleichen, führen Sie einfach die nächsten Schritte aus:
1. Erstellen Sie ein Objekt der Klasse „Comparer“, das den Pfad oder Stream des Quelldokuments übergibt.
Ladeoptionen können verwendet werden, um ein Passwort für das Quelldokument bereitzustellen. Darüber hinaus können Sie Comparer mithilfe von Optionen so konfigurieren, dass das erste Argument als Quelltext für den Vergleichsprozess verwendet wird. Darüber hinaus besteht die Möglichkeit, Verzeichnisse mit dokumentspezifischen Schriftarten zu konfigurieren. Comparer implementiert die Java `Closeable`-Schnittstelle, sodass es sehr einfach ist, nach der Verwendung Speicher freizugeben.

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

2. Rufen Sie die `add`-Methode des Vergleichs auf (innerhalb des `use`-Blocks), um ein zweites Dokument oder einen zweiten Text zum Vergleichen hinzuzufügen. Die Methode verwendet denselben `LoadOptions`-Parameter, um ein Passwort usw. bereitzustellen. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) unterstützt den Vergleich mehrerer Dokumente, sodass Sie mehr als ein Zieldokument hinzufügen können.

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

3. Der letzte Schritt besteht darin, die Methode "compare" aufzurufen, die den Vergleich durchführt. Die Methode nimmt das `CompareOptions`-Objekt als zweites Argument. Im Beispiel werden nur einige der verfügbaren Optionen verwendet. Im obigen Code ist der Vergleich konfiguriert, Stiländerungen zu verarbeiten, gelöschte Inhalte anzuzeigen und Koordinaten jeder Änderung im Ergebnisdokument abzurufen. Es gibt viel mehr Optionen, die zum Konfigurieren des Vergleichsprozesses verwendet werden können. Zum Beispiel ist es einfach, die Empfindlichkeitsstufe des Vergleichs zu ändern, die Erstellung einer Zusammenfassungsseite zu aktivieren, jede Art von Änderung zu aktivieren/deaktivieren, ihren Stil im Ergebnisdokument zu konfigurieren und vieles mehr. Die Informationen finden Sie [in der Dokumentation](/comparison/java/getting-started/).
Am Ende des „apply“-Blocks wird die Methode „comparer.getChanges()“ verwendet, um eine Liste der Änderungen zu erhalten.

#### Abhängigkeitsspritze

Das letzte Nützliche in der Beispiel-App ist ein Objekt „ModulesInjection“. Es gibt Koin Informationen über Schnittstellen und Klassen, die Koin erstellen oder einfügen muss. Im Projekt werden Controller, Usecases und Manager konfiguriert. Es ist sehr einfach, Koin so zu konfigurieren, dass es neue Klassen einfügt. Geben Sie es einfach in einem der Module hier an.

<script src="https://gist.github.com/groupdocs-comparison-gists/0754c1a4729f7b0f0e6d4828049d6a48.js"></script>

### Holen Sie sich eine kostenlose API-Lizenz

Viele Vergleichseinstellungen, z. B. Sensitivität des Vergleichs, Generieren einer Zusammenfassungsseite usw., sind nur verfügbar, wenn die Lizenz festgelegt ist. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

In dem Artikel wird das Beispiel [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) beschrieben, das mithilfe des Javalin-Webframeworks erstellt wurde. Viele weitere Beispiele für die Verwendung von GroupDocs.Comparison für Java/Kotlin finden Sie auf unserer [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Sie können sie ändern und als Kern Ihrer eigenen Anwendung verwenden, um Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und vieles mehr zu vergleichen [unterstützte Dateiformate](/comparison/java/supported-document-formats/ ).

Details, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* How to [use Ktor Comparison](/comparison/java/how-to-use-ktor-comparison-sample) Sample
* Wie man [Vergleich und Kontrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) von Essays sieht
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin

