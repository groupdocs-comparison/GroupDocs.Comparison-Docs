---
id: how-to-run-dropwizard-comparison-sample-using-docker
url: comparison/java/how-to-run-dropwizard-comparison-sample-using-docker
title: "So führen Sie das Dropwizard-Vergleichsbeispiel mit Docker aus"
weight: 13
description: "In diesem Artikel geht es um das Ausführen des Dropwizard-Vergleichsbeispiels mit Docker, um eine schnell einsatzbereite Anwendung zum Vergleichen von Dateien zu erhalten"
keywords: "Fotos vergleichen, Dropwizard-Vergleichstool, Dropwizard und Docker, Vergleichs-API"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: AutoCad, PowerPoint, Word-Vergleich
        description: "Das Produkt ermöglicht den Vergleich von AutoCad, PowerPoint, Word und vielen weiteren Dateitypen"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So führen Sie das Dropwizard-Projekt im Docker-Container aus
        description: "Erfahren Sie, wie Sie das Dropwizard-Projekt im Docker-Container ausführen und konfigurieren"
Schritte:
- Name: Dropwizard-Vergleichsanwendung
Text: Was ist die Dropwizard-Vergleichsbeispielanwendung und warum brauchen Sie sie?
- Name: Systemanforderungen
Text: Welche Tools und Dateien Sie benötigen, um die Anwendung im Docker-Container auszuführen
- Name: Starten des Dropwizard-Vergleichsbeispiels
Text: Vergleichsbeispielanwendung mit Docker konfigurieren, erstellen und ausführen
- name: Konfigurieren der Vergleichs-API
Text: Konfigurieren Sie die Anwendung, um sie an Ihre Bedürfnisse anzupassen
---

Wenn Sie diesen Artikel lesen, werden Sie verstehen, wie Sie [Dropwizard-Vergleichsbeispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Dropwizard) nur in wenigen Befehlen mit Docker ausführen. Nachdem Sie dies durchgegangen sind, haben Sie eine Webanwendung, um alle Dokumente zu vergleichen und die identifizierten Unterschiede hervorzuheben

### Dropwizard-Vergleichsanwendung

Das Dropwizard-Vergleichsbeispiel ist eine Beispielanwendung, die mithilfe des Dropwizard-Frameworks erstellt wurde, um sich mit der Funktionalität von [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) vertraut zu machen. Obwohl es sich nur um ein Beispiel handelt, ist die Anwendung voll funktionsfähig und kann verwendet werden, um alle [unterstützten Dateiformate](/comparison/java/supported-document-formats/) zu vergleichen. Dank der Tatsache, dass Quellen der Anwendung [auf GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Dropwizard) verfügbar sind, können Sie dies außerdem Fügen Sie einfach die erforderlichen Änderungen an der Anwendung hinzu oder fügen Sie einige Funktionen hinzu.

### System Anforderungen

Um das Beispiel mit Docker auszuführen, müssen Sie Docker selbst installieren und die Vergleichsanwendung herunterladen:
1. Gehen Sie zur offiziellen Docker-Seite und laden Sie je nach Betriebssystem das Installationsprogramm herunter
2. Installieren Sie Docker gemäß den Anweisungen auf der offiziellen Docker-Seite
3. Öffnen Sie die HitHub-Seite mit [Vergleichsanwendung](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) und laden Sie die Quellen herunter:
1. Klicken Sie oben rechts auf der Seite auf die grüne Schaltfläche „Code“.
2. Klicken Sie auf den Link „ZIP herunterladen“.
3. Nachdem der Download abgeschlossen ist, extrahieren Sie das Archiv in ein beliebiges Verzeichnis

### Dropwizard-Vergleichsbeispiel wird gestartet

Um das Beispiel zu starten, müssen Sie zunächst ein Docker-Image erstellen. Es muss nur einmal durchgeführt werden und danach können Sie das Image verwenden, um den Docker-Container auszuführen, wann immer Sie möchten

#### Vergleichsanwendung konfigurieren

Die Vergleichsanwendung hat viele Optionen, die konfiguriert werden müssen. Einige von ihnen können während jeder Ausführung geändert werden, andere können jedoch nur vor dem Erstellen des Docker-Images geändert werden (tatsächlich können Sie das Beispiel selbst aktualisieren, um jede Option konfigurierbar zu machen, nachdem das Docker-Image erstellt wurde).
Um die Anwendungskonfiguration zu ändern, müssen Sie nur die Datei „configuration.yml“ bearbeiten

#### Building Docker Bild des Beispiels

Wenn Sie Dateien standardmäßig in der Vergleichsanwendung haben möchten, folgen Sie den nächsten Schritten:

1. Gehen Sie im Beispielordner zu `\Demos\Dropwizard\`
2. Legen Sie die Dateien im Verzeichnis „DocumentSamples“ ab

_Hinweis: Natürlich können Sie Dateien hochladen, nachdem Sie die Anwendung über die Benutzeroberfläche ausgeführt haben_

So legen Sie die GroupDocs-Lizenz fest:

1. Gehen Sie im Beispielordner zu `\Demos\Dropwizard\`
2. Legen Sie die Lizenzdatei in das Verzeichnis „Licenses“ ab

So erstellen Sie ein Docker-Image für das Beispiel:

1. Gehen Sie im Beispielordner zu `\Demos\Dropwizard\`
2. Öffnen Sie die Konsole in diesem Verzeichnis
3. Führen Sie den nächsten Befehl aus, um ein Image zu erstellen

<script src="https://gist.github.com/groupdocs-comparison-gists/2e53fb1ea7e4ed42c7762466f19e7264.js"></script>

Das ist eigentlich alles. Das Image wird erstellt und der Image-Liste von Docker hinzugefügt.

_Hinweis: `groupdocs_comparison_dropwizard_sample` im Befehl ist nur ein Name des Bildes, das erstellt wird. Sie können einen beliebigen Namen verwenden, aber vergessen Sie ihn nicht, da er zum Ausführen der Anwendung verwendet wird_

#### Laufende Anwendung mit vorgefertigtem Image

Um die Vergleichs-Dropwizard-Anwendung auszuführen, sollten Sie die nächsten Schritte ausführen:

1. Gehen Sie im Beispielordner zu `\Demos\Dropwizard\`
2. Öffnen Sie die Konsole in diesem Verzeichnis
3. Führen Sie den nächsten Befehl aus, um einen Container mit der Vergleichsanwendung auszuführen

<script src="https://gist.github.com/groupdocs-comparison-gists/ab9927537387e9f562e3f25146e730d1.js"></script>
   

Öffnen Sie danach einfach den Link [http://localhost:8080/comparison](http://localhost:8080/comparison) in Ihrem bevorzugten Browser, um die Vergleichsanwendung anzuzeigen

![](/comparison/java/images/how-to-run-dropwizard-comparison-sample-using-docker.png)

Ein paar Details zum Befehl:
* „my-comparer“ ist der Name eines Docker-Containers, mit dem Sie die Anwendung stoppen können. Er kann in jeden anderen Namen geändert werden
* „8080:8080“ bedeutet, dass die Anwendung Port „8080“ innerhalb des Docker-Containers verwendet und Docker ihn mit Port „8080“ außerhalb des Containers verbindet, sodass Sie damit in Ihrem Browser auf die Anwendung zugreifen können
* Flag `--rm` bedeutet, dass der Container automatisch von Docker gelöscht wird, nachdem er gestoppt wurde. Das Flag kann weggelassen werden, um den Container zu behalten, nachdem er gestoppt wurde
* `groupdocs_comparison_dropwizard_sample` ist der Name eines von uns erstellten Bildes

Um den Container zu stoppen, führen Sie einfach den Befehl „docker stop my-comparer“ aus

### Vergleichs-API konfigurieren

Um die Anwendung zu konfigurieren, können Sie einige der vordefinierten Umgebungsvariablen verwenden. Wenn Sie beispielsweise die Möglichkeit zum Herunterladen des Ergebnisdokuments deaktivieren möchten, übergeben Sie einfach die Umgebungsvariable "DOWNLOAD_ON" mit dem Wert "false" mit dem Befehl zum Starten des Containers. Auf diese Weise sieht der Befehl folgendermaßen aus:

<script src="https://gist.github.com/groupdocs-comparison-gists/db2f770f4e36f9c56478366f13d0e4c1.js"></script>

Es gibt die nächsten vordefinierten Variablen:
* `LIC_PATH` - Pfad zum Verzeichnis mit der Lizenzdatei
* `DOWNLOAD_ON` - aktiviert/deaktiviert die Schaltfläche zum Herunterladen der Ergebnisdatei in der Benutzeroberfläche der Vergleichsanwendung
* `UPLOAD_ON` - aktiviert/deaktiviert die Schaltfläche zum Hochladen von Dateien, die zum Vergleichen verwendet werden können _(die Schaltfläche befindet sich links vom Dialog zum Öffnen von Dokumenten)_
* `PRINT_ON` - aktiviert/deaktiviert die Schaltfläche zum Drucken von Dokumenten
* `FILES_DIR` - Pfad zum Verzeichnis, das zum Speichern hochgeladener Dateien verwendet wird
* `RESULT_DIR` - Pfad zum Verzeichnis, das zum Speichern von Ergebnisdateien von Vergleichsdokumenten verwendet wird

_Hinweis: Beachten Sie, dass die Pfade „LIC_PATH“, „FILES_DIR“ und „RESULT_DIR“ auf die Ordner **innerhalb** des Docker-Containers_ verweisen

#### Daten zwischen Läufen aufbewahren

Es besteht häufig die Notwendigkeit, Dateien zwischen Anwendungsläufen aufzubewahren. Dazu müssen Sie die Volumes von Docker verwenden. Beispielsweise können Sie den Parameter "-v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples" zusammen mit der Übergabe der Umgebungsvariable "FILES_DIR" hinzufügen, um ein neues Volume zu erstellen und es als Verzeichnis mit Dateien zu übergeben. Auf diese Weise lautet der Befehl:

<script src="https://gist.github.com/groupdocs-comparison-gists/ea0d5fb6d7dfb582df75a2985caa6e08.js"></script>

Ein paar Details zum Befehl:
* Die Option `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` konfiguriert die Vergleichsanwendung so, dass sie das Verzeichnis `/home/groupdocs/app/MyDocumentSamples` im Docker-Container als Ordner zum Aufbewahren von Dateien verwendet. Sie können den Pfad in einen beliebigen anderen ändern, physikalisch existiert dieses Verzeichnis nicht im Docker-Image
* Die Option „-v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples“ weist Docker an, ein neues Volume mit dem Namen „groupdocs_comparison_dropwizard_volume“ zu erstellen und es dem Container als Verzeichnis „/home/groupdocs/app/MyDocumentSamples“ zuzuordnen. Auf diese Weise führt jeder Zugriff innerhalb des Containers auf „MyDocumentSamples“ tatsächlich zu Änderungen innerhalb des Volumes. Das Stoppen des Containers, der mit der Option `--rm` ausgeführt wurde, oder das manuelle Löschen des Containers hat also keine Auswirkungen auf das Volume und die darin enthaltenen Dateien. Sie können einfach einen neuen Container ausführen, indem Sie das Volume daran anhängen, und die Dateien sind wieder verfügbar.
_Hinweis: `groupdocs_comparison_dropwizard_volume` ist nur der Name des Volumes, der zum Beispiel zum Löschen des Volumes verwendet werden kann. Sie können es nach Ihrem Geschmack ändern :)_

### Vorteile der Verwendung von Vergleichsbeispiel mit Docker

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison) ist eine moderne Bibliothek, die viele [unterstützte Dateiformate](/comparison/java/supported-document-formats/) hat und verwendet werden kann Dateien vergleichen, Änderungen in der Vorschau anzeigen, akzeptieren oder ablehnen, Quell-/Ziel- und Ergebnistexte extrahieren, Vorschau der Datei generieren, Übersichtsseite generieren und [viel mehr] (https://docs.groupdocs.com/comparison/java/groupdocs-comparison -Überblick/). Gleichzeitig ist Docker eine moderne Technologie, die Ihnen die Möglichkeit gibt, Anwendungen zu erstellen und/oder auszuführen, ohne dass eine installierte Umgebung dafür erforderlich ist. Wenn Sie mit der Dropwizard-Vergleichsanwendung verbunden sind, müssen Sie Java, Maven und andere Dinge nicht installieren und konfigurieren.

### Holen Sie sich eine kostenlose API-Lizenz

Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne die Evaluierungseinschränkungen zu verwenden.

### Fazit

Beim Lesen dieses Artikels haben wir gelernt, wie man [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) Dropwizard-Beispiel ausführt, das als Kern einer unglaublichen Anwendung zum Vergleichen von Fotos, Word und Excel verwendet werden kann , PowerPoint und andere Dokumente. Auf dem Ergebnisdokument sind Änderungen hervorgehoben. Jetzt können Sie Ihre eigene Vergleichs-App erstellen oder diese Funktionen in Ihren Java-Anwendungen verwenden, indem Sie [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) verwenden.

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* So [beliebige Dateien vergleichen](/comparison/java/how-to-compare-any-files-using-compose-desktop) mit Compose Desktop
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container
