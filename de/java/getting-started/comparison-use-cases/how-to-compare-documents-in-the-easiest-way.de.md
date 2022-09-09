---
id: wie-man-dokumente-am-einfachsten-vergleicht
url: comparison/java/how-to-compare-documents-in-the-easiest-way
title: "So vergleichen Sie Dokumente am einfachsten"
weight: 16
description: "In diesem Artikel geht es um die einfachste Möglichkeit, die GroupDocs.Comparison-API zum Vergleichen von Dokumenten zu verwenden"
keywords: "Dokumente vergleichen, Spring-Vergleichs-API, Dropwizard-Vergleichs-API, Vergleichstool mit Docker"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Diff-Checker
        description: "Das Produkt ermöglicht es, den Unterschied von Dateien zu überprüfen"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So prüfen Sie, ob zwei Dokumente identisch sind
        description: "Erfahren Sie, wie Sie den Diff-Checker in Java- oder Kotlin-Projekten verwenden"
Schritte:
- name: Quelldokument laden
text: Erstellen Sie eine Instanz der Comparer-Klasse, die das Quelldokument als Konstruktorparameter übergibt
- name: Zieldokumente laden
Text: Fügen Sie ein oder mehrere Zieldokumente hinzu, um sie mit dem Quelldokument zu vergleichen
- name: Quell- und Zieldokument vergleichen
Text: Durchlaufpfad des Vergleichsprozesses ausführen, in dem das Ergebnis des Vergleichs gespeichert wird
---
Manchmal ist es notwendig, zwei Pdf-, Word- oder Excel-Dokumente so schnell wie möglich zu vergleichen, ohne viel Software zu installieren. Falls Sie Docker installiert haben, ist es am einfachsten, es zusammen mit [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) zu verwenden.

### Vielfalt an GroupDocs.Vergleichsbeispielen

Um unseren Kunden mehr Möglichkeiten zu bieten, haben wir verschiedene Konfigurationen von Vergleichsmustern veröffentlicht. Sie können wählen, was am besten zu Ihren Bedürfnissen passt. Um alle zu finden und die neueste Version zu erhalten, besuchen Sie bitte unsere [Docker Hub-Seite](https://hub.docker.com/r/groupdocs/comparison)

Hier sind nur einige Konfigurationen:

1. `groupdocs/Vergleich:<VERSION> -java-openjdk8-bullseye-spring` - basierend auf OpenJDK 8 und Debian Bullseye
2. `groupdocs/Vergleich:<VERSION> -java-openjdk11-bullseye-spring` – basierend auf OpenJDK 11 und Debian Bullseye
3. `Gruppendokumente/Vergleich:<VERSION> -java-openjdk18-bullseye-spring` – basierend auf OpenJDK 18 und Debian Bullseye
4. `Gruppendokumente/Vergleich:<VERSION> -java-openjdk8-bullseye-dropwizard` - basierend auf OpenJDK 8 und Debian Bullseye
5. `Gruppendokumente/Vergleich:<VERSION> -java-openjdk11-bullseye-dropwizard` – basierend auf OpenJDK 11 und Debian Bullseye
6. `groupdocs/Vergleich:<VERSION> -java-openjdk18-bullseye-dropwizard` – basierend auf OpenJDK 18 und Debian Bullseye

Wo `<VERSION> ` sollte durch die Vergleichsversion ersetzt werden, die Sie verwenden möchten.

Hinweis: Wir werden in naher Zukunft neue Konfigurationen hinzufügen. Einige von ihnen sind bereits in Arbeit, zum Beispiel mit Ktor und Micronaut. Fühlen Sie sich frei, die tatsächlichen Konfigurationen auf der [Docker Hub-Seite] (https://hub.docker.com/r/groupdocs/comparison) zu überprüfen.

### System Anforderungen

Es gibt keine Anforderungen für die Verwendung der GroupDocs.Comparer-API. Sie müssen lediglich Docker, einen Webbrowser und eine Internetverbindung installiert haben.

### GroupDocs.Comparer mit Docker ausführen

#### Ausführen über die Befehlszeile

Der einfachste Weg, die Anwendung [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) auszuführen, ist die Verwendung der Befehlszeile. Darüber hinaus können Sie mit diesem Befehl die Anwendung auf jedem Betriebssystem wie Windows, Linux oder Mac ausführen.

Hier ist der Befehl zum Ausführen des Vergleichs:

<script src="https://gist.github.com/groupdocs-comparison-gists/4958fa72f02e5d83324fc63b326e0609.js"></script>

Das ist alles. Warten Sie einfach, während Docker die Anwendung herunterlädt und ausführt. Um auf die Vergleichsschnittstelle zuzugreifen, öffnen Sie [http://localhost:8080/comparison/](http://localhost:8080/comparison/) in Ihrem bevorzugten Browser

![](/comparison/java/images/how-to-compare-documents-in-the-easiest-way.png)

Mit der Benutzeroberfläche können Sie zwei beliebige Dokumente aus der Liste der [unterstützten Dateiformate](/comparison/java/supported-document-formats/) auswählen und vergleichen. Es ist möglich, Dokumente sowohl vom lokalen PC als auch per URL hochzuladen. Standardmäßig sind zwei kleine Beispieldokumente verfügbar, mit denen Sie überprüfen können, ob alles richtig funktioniert. Wenn Sie über das Terminal auf den Container zugreifen, finden Sie Anwendungsdateien unter dem Pfad „/home/groupdocs/app/“. Es gibt auch standardmäßige „DocumentSamples“- und „Licenses“-Verzeichnisse.

#### Ausführen mit Portainer

Portainer ist eine Plattform, die eine webbasierte Benutzeroberfläche für Docker bereitstellt. Auf der offiziellen Portainer-Website können Sie nachlesen, wie Sie es installieren.

Führen Sie die folgenden Schritte aus, um die Anwendung [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) auszuführen:

1. Öffnen Sie die Portainer-Oberfläche
2. Klicken Sie links auf dem Bildschirm auf „Container“.
3. Klicken Sie auf die Schaltfläche „Container hinzufügen“.
4. Vorbei an `groupdocs/comparison:22.3-java-openjdk8-bullseye-spring` zum Feld `Image` (aktuelle Version sowie andere verfügbare Konfigurationen finden Sie auf unserer [Docker-Hub-Seite](https://hub.docker .com/r/groupdocs/comparison/tags))
5. Suchen Sie „Manuelle Veröffentlichung von Netzwerkports“ und klicken Sie daneben auf „Neuen Netzwerkport veröffentlichen“.
6. Geben Sie „8080“ in das Textfeld „Host“ und „8080“ in das Textfeld „Container“ ein („Host“ ist der Port, den Sie für den Zugriff auf den Vergleicher im Webbrowser verwenden. Sie können „80“ als Host-Port verwenden, Auf diese Weise ist die Anwendung im Webbrowser verfügbar, ohne einen Port einzugeben - [http://localhost/comparison/](http://localhost/comparison/))
7. Klicken Sie auf die Schaltfläche „Bereitstellen des Containers“.
8. Warten Sie etwa eine Minute, während es bereitgestellt wird
9. Um auf die Vergleichsschnittstelle zuzugreifen, öffnen Sie [http://localhost:8080/comparison/](http://localhost:8080/comparison/) in Ihrem bevorzugten Webbrowser

#### Vergleicher mit Docker Desktop verwalten

Im Moment gibt es keine Möglichkeit, Container mit Docker Desktop bereitzustellen. Trotzdem können Sie bereits ausgeführte Container weiterhin verwalten. Zum Beispiel ausführen, stoppen, neu starten, Protokolle anzeigen, auf das Containerterminal zugreifen und so weiter.

### GroupDocs.Comparer-Konfiguration

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) bietet viele Optionen zum Konfigurieren des Vergleichsprozesses. Erstellen einer Übersichtsseite, Konfigurieren des Stils des Ergebnisdokuments (Text- und Hervorhebungsfarben, Schriftstärken, Unterstreichen usw.), Abrufen von Text jeder Änderung und ihrer Koordinaten im Dokument, Konfigurieren der Empfindlichkeit des Vergleichs, Akzeptieren/Ablehnen von Änderungen und [viel mehr ](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/). Bei Beispielanwendungen, die auf unserer [Docker Hub-Seite] (https://hub.docker.com/r/groupdocs/comparison/) verfügbar sind, gibt es nur minimale Optionen, um Ihnen die Möglichkeit zu geben, sich mit den grundlegenden Vergleichsfunktionen vertraut zu machen . Alle diese Beispiele sind kostenlos und auf unserer [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) verfügbar. Fühlen Sie sich frei, sie zu ändern und zu verwenden.

Dennoch gibt es einige Optionen, die Sie ändern können, um das Vergleichsbeispiel zu konfigurieren, das mit Docker ausgeführt wird. Sie können einige der vordefinierten Umgebungsvariablen verwenden. Wenn Sie beispielsweise das Hochladen deaktivieren möchten, übergeben Sie die Umgebungsvariable „UPLOAD_ON“ mit dem Wert „false“ im Befehl, der den Container ausführt. Auf diese Weise lautet der Befehl wie folgt:

<script src="https://gist.github.com/groupdocs-comparison-gists/8120ee53c065f2732ded283a427bf87d.js"></script>

Es gibt die nächsten vordefinierten Variablen:
* `LIC_PATH` - Pfad zum Verzeichnis mit der Lizenzdatei
* `FILES_DIR` - Pfad zum Verzeichnis mit hochgeladenen Dateien
* `RESULT_DIR` - Pfad zum Verzeichnis mit Ergebnisdateien
* `DOWNLOAD_ON` - aktiviert/deaktiviert die Download-Schaltfläche in der Benutzeroberfläche der Vergleichsanwendung
* `UPLOAD_ON` - aktiviert/deaktiviert das Hochladen von Dateien _(die Schaltfläche zum Hochladen befindet sich auf der linken Seite des Dialogfelds zum Öffnen von Dokumenten)_
* `BROWSE_ON` - aktiviert/deaktiviert den Dialog zum Durchsuchen von Dokumenten
* `PRINT_ON` - aktiviert/deaktiviert die Schaltfläche zum Drucken von Dokumenten
* `RIGHTCLICK_ON` - aktiviert/deaktiviert den rechten Mausklick
* `HOST_ADDRESS` - Hostname oder IP für die Serverinstanz

_Hinweis: Beachten Sie, dass die Pfade „LIC_PATH“, „FILES_DIR“ und „RESULT_DIR“ auf die Ordner **innerhalb** des Docker-Containers_ verweisen

#### Daten zwischen Läufen aufbewahren

Möglicherweise müssen Sie Dateien zwischen Anwendungsausführungen speichern. Dazu sollten Sie Docker-Volumes verwenden, zum Beispiel: Fügen Sie den Parameter `-v groupdocs_comparison_volume:/home/groupdocs/app/MyDocumentSamples` hinzu, um ein neues Volume zu erstellen, und übergeben Sie `/home/groupdocs/app/MyDocumentSamples` als Wert der Umgebungsvariable `FILES_DIR`. Auf diese Weise lautet der Befehl wie folgt:

<script src="https://gist.github.com/groupdocs-comparison-gists/e492c0c7d27267ff506ecd3eaffcd4de.js"></script>

* Der Parameter „-v groupdocs_comparison_volume:/home/groupdocs/app/MyDocumentSamples“ konfiguriert Docker, um ein neues Volume mit dem Namen „groupdocs_comparison_volume“ zu erstellen und es als Verzeichnis „/home/groupdocs/app/MyDocumentSamples“ in den Container einzubinden. Auf diese Weise führt jeder Zugriff auf „MyDocumentSamples“ innerhalb des Containers tatsächlich zu Änderungen innerhalb des Volumes. Das Anhalten eines Containers, der mit der Option „--rm“ ausgeführt wurde, oder das manuelle Löschen des Containers, des Volumes und der darin enthaltenen Dateien werden nicht gelöscht. Es ist einfach, einen neuen Container auszuführen, der das Volume anfügt, um wieder auf Dateien zuzugreifen.
Hier ein paar Details zum Befehl:
* Die Option „--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples“ konfiguriert die Vergleichsanwendung so, dass sie das Verzeichnis „/home/groupdocs/app/MyDocumentSamples“ im Docker-Container als Ordner zum Speichern von Dateien verwendet. Es kann in einen beliebigen anderen Pfad geändert werden, physikalisch existiert dieses Verzeichnis nicht im Docker-Image

_Hinweis: `groupdocs_comparison_volume` ist nur ein Name des Volumes. Es kann zum Löschen des Volumes verwendet werden. Sie können es leicht ändern._

### Holen Sie sich eine kostenlose API-Lizenz

Sie können eine [kostenlose temporäre Lizenz] (https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne die Evaluierungseinschränkungen zu verwenden.

### Fazit

In diesem Artikel wurde die einfachste Möglichkeit zum Ausführen von [GroupDocs.Comparison](https://products.groupdocs.com/comparison/)-Beispielen mit Docker beschrieben. Auf unserer [Docker Hub-Seite](https://hub.docker.com/r/groupdocs/comparison/tags) sind verschiedene Konfigurationen von Vergleichsanwendungen verfügbar, sodass Sie die beste für Ihre Anforderungen auswählen können. Alle diese Beispiele sind auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) verfügbar, sodass Sie sie ändern und als Kern Ihrer eigenen Anwendung zum Vergleichen von Fotos verwenden können. code-Dateien, PowerPoint, Excel, Word und andere [unterstützte Dateiformate](/comparison/java/supported-document-formats/). Mit [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) ist es jetzt ganz einfach, Ihre eigene Vergleichsanwendung zu erstellen oder Vergleichsfunktionen in bereits vorhandenen Java-Anwendungen zu verwenden.

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* So [beliebige Dateien vergleichen](/comparison/java/how-to-compare-any-files-using-compose-desktop) mit Compose Desktop
* How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container
