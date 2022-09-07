---
id: how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
title: "So stellen Sie das Dropwizard-Vergleichsbeispiel auf der Heroku PaaS-Plattform bereit"
weight: 22
description: "Der Artikel beschreibt den Dropwizard-Vergleichsbeispiel-Bereitstellungsprozess auf der Heroku PaaS-Plattform"
keywords: "Dropwizard Framework, Dokumente mit Java oder Kotlin vergleichen, Platform as a Service, Paas, Heroku"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Pdf, PowerPoint, Wortvergleich
        description: "Das Produkt ermöglicht den Vergleich von PDF-, Word-, Excel-, PowerPoint-, Code-, Bild-, AutoCad- und vielen weiteren Dokumenten"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So stellen Sie das Dropwizard-Projekt in Heroku bereit
        description: "Erfahren Sie, wie Sie das Vergleichs-Dropwizard-Beispielprojekt in Heroku bereitstellen"
Schritte:
- Name: Systemvoraussetzungen
text: Welche Tools Sie benötigen, um Anwendungen in Heroku bereitzustellen
- name: Beispielanwendung von GitHub abrufen
text: Vorkonfigurierte Beispielanwendung herunterladen, um sie bereitzustellen
- Name: Allgemeine Punkte im Projekt, die auf Heroku bereitgestellt werden sollen
Text: Wichtigste Dinge, die im Projekt konfiguriert werden müssen, bevor mit der Bereitstellung begonnen wird
- Name: Heroku-Anwendung erstellen
Text: Erstellen einer Anwendung im Heroku-Konto, in dem das Beispiel bereitgestellt wird
- name: Beispielanwendung wird in Heroku bereitgestellt
text: Ausführen des Befehls zum Bereitstellen der Beispielanwendung und Überprüfen, ob alles funktioniert
---

Es gibt viele Möglichkeiten, Anwendungen zu veröffentlichen. Eine der beliebtesten unter ihnen ist die Bereitstellung von Websites oder Webanwendungen mit Hilfe von PaaS (Platform as a Service). Glücklicherweise wurde [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) so erstellt, dass es einfach mit ihnen integriert werden kann. In diesem Artikel geht es um die Bereitstellung einer mit Dropwizard Framework entwickelten Vergleichsbeispielanwendung für Heroku – sehr beliebte PaaS-Plattformen. Die Vergleichsbeispielanwendung kann völlig frei verwendet und modifiziert werden. Es ist auf der Seite [auf GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Dropwizard) verfügbar.

### System Anforderungen

Es ist wichtig, die nächsten Anwendungen zu installieren, bevor Sie das Beispiel auf dem Heroku-Server bereitstellen

1. `Heroku CLI` - Tool zum Erstellen einer App im Heroku-Konto (natürlich benötigen Sie ein Konto)
2. „Git“ – Tool zum Arbeiten mit dem Beispielanwendungs-Repository und zum Bereitstellen auf dem Heroku-Server

### Beispielanwendung von GitHub abrufen

1. Öffnen Sie die [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) mit Beispielen der [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/ Java/)
2. Rechts oben auf der Seite befindet sich eine grüne Schaltfläche „Code“, klicken Sie darauf und kopieren Sie den HTTPS-Repository-Link
3. Öffnen Sie das Linux-Terminal oder die Windows-Befehlszeile und führen Sie den nächsten Befehl aus

„Schale
Git-Klon https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

Danach wird das Projekt mit Beispielen von GitHub in Ihr lokales Verzeichnis heruntergeladen. Schließen Sie die Befehlszeile nicht


### Allgemeine Punkte in dem Projekt, das auf Heroku bereitgestellt werden soll

1. Beispiel konfiguriert, um die Umgebungsvariable „PORT“ zu verwenden (Datei „configuration.yml“). Dies ist erforderlich, da Heroku den Port bei jedem Start der App ändern kann

<script src="https://gist.github.com/groupdocs-comparison-gists/03c23b58c3448dd517029a37d3f1118d.js"></script>

2. Damit Heroku weiß, wie die Anwendung ausgeführt wird, wurde eine spezielle Datei (`Procfile`) erstellt

<script src="https://gist.github.com/groupdocs-comparison-gists/6c193c0ab14440ef6265018b54e2956e.js"></script>

3. Die Datei „system.properties“ wurde erstellt, um die Java-Version anzugeben, die die App benötigt

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Heroku-Anwendung erstellen

1. Führen Sie den nächsten Befehl aus, um zum Beispielverzeichnis zu wechseln und den Anmeldeprozess auszuführen

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Die Heroku-Seite wird in einem Browser geöffnet, in dem Sie sich anmelden müssen, damit das Befehlszeilentool Zugriff auf Ihr Konto hat

2. Führen Sie den folgenden Befehl aus, um eine neue Heroku-Anwendung zu erstellen

<script src="https://gist.github.com/groupdocs-comparison-gists/70a482acde3a286d42a34939019c0a95.js"></script>

Wobei "my-dropwizard-comparer" der Name der neuen Anwendung ist. Sie können es nach Belieben ändern, das einzige - es muss einzigartig sein. Das Ergebnis des Befehls ist eine Web-URL für den Zugriff auf Ihre neue Anwendung und ein Link zum Heroku-Git-Repository. Unten sehen Sie ein Beispiel für die Ergebnisausgabe der Befehlszeile:

„Schale
https://my-dropwizard-comparer.herokuapp.com/ | https://git.heroku.com/my-dropwizard-comparer.git
```

### Beispielanwendung für Heroku bereitstellen

1. Fügen Sie als Nächstes den Heroku-Repository-Link als „Remote“ zum Beispielanwendungs-Repository mit dem folgenden Befehl hinzu

<script src="https://gist.github.com/groupdocs-comparison-gists/bf5d9c5d71cdd1a4a7fdd52ee552942a.js"></script>
    



Wobei „my-dropwizard-comparer“ der Name der Heroku-App ist, „heroku-dropwizard“ die Kennung des Heroku-Repositorys. Sie können es ändern, aber vergessen Sie nicht, neu zu sein.

2. Stellen Sie die Anwendung mit dem folgenden Befehl auf dem Heroku-Server bereit

<script src="https://gist.github.com/groupdocs-comparison-gists/f605188b333f3ae13f048837f89892f4.js"></script>
    



Hier ist `Demos/Dropwizard` ein Pfad zu dem Sample, das Sie pushen möchten. Es ist relativ und beginnt mit dem Git-Stamm der Probe. „heroku-dropwizard“ ist die Heroku-Repository-ID aus dem vorherigen Schritt. „master“ ist ein Git-Zweig im Heroku-Repository. Im Moment setzt Heroku nur `master` und `main` Branches ein.
    



Der Befehl lädt das Dropwizard-Beispiel auf den Heroku-Server hoch und startet dessen Erstellung. Sie sehen die Ausgabe des Build-Prozesses in der Befehlszeile. Alles muss erfolgreich abgeschlossen werden. Öffnen Sie in diesem Fall einfach den Link aus Schritt 2 ([https://my-dropwizard-comparer.herokuapp.com/](https://my-dropwizard-comparer.herokuapp.com/)) in Ihrem bevorzugten Browser, um die zu sehen Anwendung, die hochgeladen wurde. Um die App zu überprüfen, können Sie mithilfe der Vergleichs-Benutzeroberfläche einige Dateien hochladen.

Um Anwendungen zu verwalten, können Sie Heroku [Webinterface] (https://dashboard.heroku.com/apps) verwenden.

### Nützliche Befehle

* Der folgende Befehl zeigt die allgemeine Hilfe von Heroku CLI

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* Um die Hilfe für einen bestimmten Befehl anzuzeigen, geben Sie ihn nach dem Wort „Hilfe“ ein

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* Um Protokolle einer bestimmten Anwendung anzuzeigen, führen Sie einfach den nächsten Befehl aus (Sie können den Parameter "--tail" hinzufügen, um Protokolle in Echtzeit anzuzeigen)

<script src="https://gist.github.com/groupdocs-comparison-gists/4984f5d703b956cb9c2db0193dfdcea3.js"></script>

* Es ist einfach, auf den folgenden Befehl zum Ausführen des Remote-Dateisystems zuzugreifen

<script src="https://gist.github.com/groupdocs-comparison-gists/eb2c27b5111502e256b121fae24f50ad.js"></script>

Hinweis: Alle Änderungen im Remote-Dateisystem gehen verloren, wenn die App neu gestartet wird

* Um die App neu zu starten, verwenden Sie den folgenden Befehl

<script src="https://gist.github.com/groupdocs-comparison-gists/f06a5c8ad2cd9c1d7313459d96abccce.js"></script>

### Mehr Möglichkeiten

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) ist nicht nur eine moderne, sondern auch leistungsstarke Lösung, um verschiedene Dokumente, Bilder und andere Dateien zu vergleichen. Gleichzeitig können Vergleichsmuster völlig kostenlos verwendet und geändert werden. Sie können sie aktualisieren, damit sie mit Heroku-Add-Ons funktionieren, z. B. Datenbank- oder Dateispeicher. Das Dropwizard-Beispiel hat viele Optionen (siehe `configuration.yml`), die durch das Setzen von Umgebungsvariablen verfügbar sind. Es ist einfach, sie in der Heroku-Weboberfläche oder über die Befehlszeile zu ändern. Darüber hinaus verfügt das Dropwizard-Beispiel über eine eingebettete Lösung zur Verwendung der Google Drive-API oder der Dropbox-API als Speicher für zu vergleichende Dateien. Weitere Informationen finden Sie unter [Integration der Google Drive-API](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) und [Integration der Dropbox-API](/ Vergleich/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/) Seiten

### Holen Sie sich eine kostenlose API-Lizenz

Viele Vergleichseinstellungen, z. B. [Zusammenfassungsseite erstellen](/Vergleich/Java/Nur-Zusammenfassungsseite abrufen/), [Empfindlichkeit des Vergleichs](/Vergleich/Java/Einstellung-Vergleichsempfindlichkeit/) und so weiter , sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

Die mit Dropwizard Framework erstellte Vergleichsbeispielanwendung ist nur ein Beispiel für die Verwendung von [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) zum Vergleichen von Pdf-, Word-, Excel-Tabellen, PowerPoint-Präsentationen, Diagrammen, CAD-Dateien, OpenOffice-Dateien, Bilder und vieles mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/). Weitere Beispiele zur Verwendung von GroupDocs.Comparison mit Java und Kotlin finden Sie auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [AutoCad-Dateien vergleicht](/comparison/java/how-to-compare-autocad-drawings) in Java oder Kotlin
* Wie man [Ktor-Beispiel bereitstellt](comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) auf der Heroku-PaaS-Plattform
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Spring-Beispiel](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) auf der Heroku-PaaS-Plattform bereitstellt

