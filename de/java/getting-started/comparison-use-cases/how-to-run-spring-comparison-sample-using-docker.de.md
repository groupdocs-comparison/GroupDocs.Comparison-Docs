---
id: how-to-run-spring-comparison-sample-using-docker
url: comparison/java/how-to-run-spring-comparison-sample-using-docker
title: "So führen Sie das Spring-Vergleichsbeispiel mit Docker aus"
weight: 14
description: "In diesem Artikel geht es um das Ausführen des Spring-Vergleichsbeispiels mit Docker, um eine schnell einsatzbereite Anwendung zum Vergleichen von Dateien zu erhalten"
keywords: "Fotos vergleichen, Spring-Vergleichstool, Spring und Docker, Vergleichs-API"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Bilder-, PowerPoint- und AutoCad-Vergleich
        description: "Das Produkt ermöglicht den Vergleich von Bildern, PowerPoint, AutoCad und vielen weiteren Dateitypen"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So führen Sie das Spring-Projekt im Docker-Container aus
        description: "Erfahren Sie, wie Sie ein Spring-Projekt im Docker-Container ausführen und konfigurieren"
Schritte:
- Name: Federvergleichsanwendung
Text: Was ist eine Beispielanwendung für den Frühlingsvergleich und warum brauchen Sie sie?
- Name: Systemanforderungen
Text: Welche Tools und Dateien Sie benötigen, um die Anwendung im Docker-Container auszuführen
- Name: Spring-Vergleichsbeispiel wird gestartet
Text: Vergleichsbeispielanwendung mit Docker konfigurieren, erstellen und ausführen
- name: Konfigurieren der Vergleichs-API
Text: Konfigurieren Sie die Anwendung, um sie an Ihre Bedürfnisse anzupassen
---

Sie benötigen nur wenige Befehle, um [Spring-Vergleichsbeispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Spring) als Docker-Container auszuführen. Nachdem Sie diesen Artikel gelesen haben, verfügen Sie über eine Webanwendung, mit der Sie alle Dokumente vergleichen und Unterschiede hervorheben können

### Frühlingsvergleichsanwendung

Das Spring-Vergleichsbeispiel ist eine Anwendung, die unter Verwendung von Spring Framework zusammen mit der Funktionalität von [GroupDocs.Comparison API for Java](https://products.groupdocs.com/comparison/java) erstellt wurde. Es ist nur ein Beispiel, aber es ist immer noch voll funktionsfähig und kann verwendet werden, um alle [unterstützten Dateiformate](/comparison/java/supported-document-formats/) zu vergleichen. Außerdem sind Quellen der Anwendung [auf GitHub] verfügbar (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Spring), sodass Sie einige Funktionen einfach hinzufügen können oder ändern Sie die Anwendung nach Belieben.

### System Anforderungen

Um das Beispiel als Docker-Container auszuführen, müssen Sie Docker selbst installiert haben und die Vergleichsanwendung herunterladen:
1. Gehen Sie zur offiziellen Docker-Seite und laden Sie je nach Betriebssystem das Installationsprogramm herunter
2. Installieren Sie Docker anhand der Anweisungen auf der offiziellen Docker-Seite
3. Öffnen Sie die GitHub-Seite [Vergleichsanwendung](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) und laden Sie Beispielquellen herunter:
1. Klicken Sie oben rechts auf der Seite auf die grüne Schaltfläche „Code“.
2. Klicken Sie auf den Link „ZIP herunterladen“.
3. Extrahieren Sie das Archiv nach dem Herunterladen in ein beliebiges Verzeichnis

### Frühjahrs-Vergleichsprobe starten

Um das Beispiel zu starten, erstellen Sie zunächst ein Docker-Image. Es muss nur einmal gemacht werden. Nachdem es erstellt wurde, können Sie das Image jederzeit zum Ausführen des Docker-Containers verwenden

#### Konfiguration der Vergleichsanwendung

In der Vergleichsanwendung können viele Optionen konfiguriert werden. Einige von ihnen können geändert werden, wenn ein Docker-Container ausgeführt wird, andere können jedoch nur geändert werden, bevor das Docker-Image erstellt wird (tatsächlich können Sie sample aktualisieren, um jede Option konfigurierbar zu machen, nachdem das Docker-Image erstellt wurde, es ist nicht schwierig).
Um die Konfiguration der Anwendung zu ändern, müssen Sie die Datei „configuration.yml“ bearbeiten. Darin sind alle Optionen kommentiert.

#### Building Docker Bild des Beispiels

So legen Sie die GroupDocs-Lizenz fest:

1. Gehen Sie im Beispielordner zu `\Demos\Spring\`
2. Legen Sie die Lizenzdatei in das Verzeichnis „Licenses“ ab

Falls Sie möchten, dass sich Dateien standardmäßig in der Vergleichsanwendung befinden, befolgen Sie die nächsten Schritte:

1. Gehen Sie im Beispielordner zu `\Demos\Spring\`
2. Legen Sie die Dateien im Verzeichnis „DocumentSamples“ ab

_Hinweis: Natürlich können Sie Dateien hochladen, nachdem Sie die Anwendung mit der Vergleichs-UI ausgeführt haben_

Um das Docker-Image für das Beispiel zu erstellen und es in der lokalen Docker-Instanz zu installieren, gehen Sie wie folgt vor:

1. Gehen Sie im Beispielordner zu `\Demos\Spring\`
2. Öffnen Sie das Konsolenfenster in diesem Verzeichnis
3. Führen Sie den nächsten Befehl aus, um ein Image zu erstellen

<script src="https://gist.github.com/groupdocs-comparison-gists/9ba24482d5625a6ba08c13045f7c115e.js"></script>

Das ist eigentlich alles. Das Image ist bereits erstellt und der lokalen Image-Liste von Docker hinzugefügt.

_Hinweis: `groupdocs_comparison_spring_sample` im obigen Befehl ist nur ein Name des zu erstellenden Images. Sie können es nach Belieben ändern, aber vergessen Sie es nicht, da es zum Ausführen der Anwendung verwendet wird_

#### Laufende Anwendung mit vorgefertigtem Image

Führen Sie die nächsten Schritte aus, um die Vergleichs-Spring-Anwendung mit einem vorgefertigten Docker-Image auszuführen:

1. Gehen Sie im Beispielordner zu `\Demos\Spring\`
2. Öffnen Sie das Konsolenfenster in diesem Verzeichnis
3. Führen Sie den nächsten Befehl aus, um einen Container des Images zu erstellen und die Anwendung auszuführen

<script src="https://gist.github.com/groupdocs-comparison-gists/2b74fad512ad1f6155ad70eb4958d10e.js"></script>
   

Öffnen Sie danach einfach den Link [http://localhost:8080/comparison](http://localhost:8080/comparison) in einem beliebigen Webbrowser, um die Vergleichsanwendung anzuzeigen

![](/comparison/java/images/how-to-run-spring-comparison-sample-using-docker.png)

Ein paar Details zum Befehl:
* „my-comparer“ ist ein Name des Docker-Containers, der verwendet werden kann, um den Docker-Container mit der Anwendung zu stoppen. Es kann nach Belieben geändert werden
* „8080:8080“ bedeutet, dass die Anwendung im Docker-Container Port „8080“ verwendet und Docker ihn an Port „8080“ außerhalb des Containers bindet, dank dessen, was Sie verwenden können, um auf die Anwendung in Ihrem Webbrowser zuzugreifen
* Flag `--rm` sagt Docker, dass der Container automatisch gelöscht werden soll, nachdem er gestoppt wurde. Das Flag kann weggelassen werden, wenn Sie den Container behalten müssen, nachdem er gestoppt wurde
* `groupdocs_comparison_spring_sample` ist der Name eines Bildes, das wir zuvor erstellt haben

Um den Container zu stoppen, führen Sie einfach den Befehl „docker stop my-comparer“ in der Befehlszeile aus

### Vergleichs-API konfigurieren

Um die Möglichkeit zu haben, die Anwendung zu konfigurieren, ist es möglich, einige der vordefinierten Umgebungsvariablen zu verwenden. Wenn Sie beispielsweise die Download-Schaltfläche ausblenden möchten, übergeben Sie einfach die Umgebungsvariable "DOWNLOAD_ON" mit dem Wert "false" im Befehl, der den Container ausführt. Auf diese Weise lautet der Befehl wie folgt:

<script src="https://gist.github.com/groupdocs-comparison-gists/136b93614d02f6c4d779620b83b89f98.js"></script>

Es gibt die nächsten vordefinierten Variablen:
* `LIC_PATH` - Pfad zum Verzeichnis mit der Lizenzdatei
* `DOWNLOAD_ON` - aktiviert/deaktiviert die Download-Schaltfläche in der Benutzeroberfläche der Vergleichsanwendung
* `UPLOAD_ON` - aktiviert/deaktiviert die Schaltfläche zum Hochladen von Dateien _(die Schaltfläche befindet sich auf der linken Seite des Dialogfelds zum Öffnen von Dokumenten)_
* `PRINT_ON` - aktiviert/deaktiviert die Schaltfläche zum Drucken von Dokumenten
* `BROWSE_ON` - aktiviert/deaktiviert den Dialog zum Durchsuchen von Dokumenten
* `FILES_DIR` - Pfad zum Verzeichnis mit hochgeladenen Dateien
* `RESULT_DIR` - Pfad zum Verzeichnis mit Ergebnisdateien
* `HOST_ADDRESS` - Hostname oder IP für die Serverinstanz

_Hinweis: Beachten Sie, dass die Pfade „LIC_PATH“, „FILES_DIR“ und „RESULT_DIR“ auf die Ordner **innerhalb** des Docker-Containers_ verweisen

#### Daten zwischen Läufen aufbewahren

Es ist eine übliche Anfrage, Dateien zwischen Anwendungsläufen aufzubewahren. Dazu müssen Sie nur die Volumes von Docker verwenden. Hier ist ein Beispiel: Fügen Sie den Parameter „-v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples“ zusammen mit der Übergabe der Umgebungsvariable „FILES_DIR“ hinzu, um ein neues Volume zu erstellen und es als Verzeichnis mit Dateien zu übergeben. Auf diese Weise lautet der Befehl:

<script src="https://gist.github.com/groupdocs-comparison-gists/6c2bae3b6197d6ea3aa78b6b8646e278.js"></script>

Hier ein paar Details zum Befehl:
* Die Option `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` konfiguriert die Vergleichsanwendung so, dass sie das Verzeichnis `/home/groupdocs/app/MyDocumentSamples` im Docker-Container als Ordner zum Aufbewahren von Dateien verwendet. Es kann in einen beliebigen anderen Pfad geändert werden, physikalisch existiert dieses Verzeichnis nicht im Docker-Image
* Die Option `-v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples` konfiguriert Docker so, dass es ein neues Volume mit dem Namen `groupdocs_comparison_spring_volume` erstellt und es als Verzeichnis `/home/groupdocs/app/MyDocumentSamples` in den Container bindet, sodass alle Der Zugriff auf „MyDocumentSamples“ innerhalb des Containers wird tatsächlich Änderungen innerhalb des Volumes vornehmen. Danach wird beim Stoppen des Containers, der mit der Option `--rm` ausgeführt wurde, oder im Falle des manuellen Löschens des Containers, des Volumes und der darin enthaltenen Dateien nicht gelöscht. Es ist einfach, einen neuen Container auszuführen, der das Volume anfügt, sodass die Dateien wieder verfügbar sind.

_Hinweis: `groupdocs_comparison_spring_volume` ist nur ein Name des Volumes. Es kann zum Löschen des Volumes verwendet werden. Sie können den Namen nach Ihrem Geschmack ändern:)_

### Allgemeine Vorteile der Verwendung eines Vergleichsbeispiels im Docker-Container

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison) ist eine moderne Lösung zum Vergleichen vieler [unterstützter Dateiformate](/comparison/java/supported-document-formats/). Es hilft Ihnen, Dateien zu vergleichen, Quell-/Ziel- und Ergebnistexte zu extrahieren, Änderungen in der Vorschau anzuzeigen, sie zu akzeptieren oder abzulehnen, Zusammenfassungen zu erstellen, eine Vorschau von Dateiseiten zu generieren und [viel mehr] (https://docs.groupdocs.com/comparison/ java/groupdocs-comparison-overview/). Gleichzeitig ist Docker eine moderne Software, die Ihnen die Möglichkeit gibt, Anwendungen zu erstellen und/oder auszuführen, ohne dass die dafür erforderliche Umgebung installiert ist. Was die Spring-Vergleichsanwendung betrifft, müssen Sie Java, Maven und andere Java-Dinge nicht installieren und konfigurieren.

### Holen Sie sich eine kostenlose API-Lizenz

Sie können eine [kostenlose temporäre Lizenz] (https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne die Evaluierungseinschränkungen zu verwenden.

### Fazit

Beim Lesen des Artikels haben Sie erfahren, wie Sie das Spring-Beispiel [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) ausführen. Es kann als Kern einer fabelhaften Anwendung zum Vergleichen von Fotos, Codedateien, Word, Excel, PowerPoint und anderen Dokumenten verwendet werden. Änderungen werden im Ergebnisdokument hervorgehoben. Jetzt ist es einfach, Ihre eigene Vergleichs-App zu erstellen oder Vergleichsfunktionen in Ihren Java-Anwendungen zu verwenden, indem Sie [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) verwenden.

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* So [beliebige Dateien vergleichen](/comparison/java/how-to-compare-any-files-using-compose-desktop) mit Compose Desktop
* How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container
