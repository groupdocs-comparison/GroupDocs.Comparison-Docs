---
id: how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
title: "So stellen Sie ein Ktor-Vergleichsbeispiel auf der Heroku PaaS-Plattform bereit"
weight: 20
description: "Der Artikel beschreibt, wie Sie unser Ktor-Vergleichsbeispiel auf der Heroku PaaS-Plattform bereitstellen können"
keywords: "Ktor Framework, Dokumente vergleichen, Dateien mit Kotlin, Paas, Heroku vergleichen"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Pdf, Word, Excel-Vergleich
        description: "Das Produkt ermöglicht den Vergleich von PDF-, Word-, Excel-, PowerPoint-, Code-, Bild-, AutoCad- und vielen weiteren Dokumenten"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So stellen Sie das Ktor-Projekt in Heroku bereit
        description: "Erfahren Sie, wie Sie ein Vergleichs-Ktor-Beispielprojekt für Heroku bereitstellen"
Schritte:
- Name: Systemvoraussetzungen
text: Welche Tools Sie benötigen, um Anwendungen in Heroku bereitzustellen
- name: Beispielanwendung von GitHub abrufen
text: Vorkonfigurierte Beispielanwendung herunterladen, um sie bereitzustellen
- Name: Schlüsselpunkte des Projekts, die auf Heroku bereitgestellt werden sollen
Text: Wichtigste Dinge, die im Projekt konfiguriert werden müssen, bevor mit der Bereitstellung begonnen wird
- Name: Heroku-Anwendung erstellen
Text: Erstellen einer Anwendung im Heroku-Konto, in dem das Beispiel bereitgestellt wird
- name: Beispielanwendung wird in Heroku bereitgestellt
text: Ausführen des Befehls zum Bereitstellen der Beispielanwendung und Überprüfen, ob alles funktioniert
---
Platform as a Service (PaaS) ist eine sehr beliebte Lösung zur Bereitstellung von Webanwendungen und Websites. Glücklicherweise lässt sich [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) problemlos mit ihnen integrieren. In dem Artikel wird beschrieben, wie Sie ein mit Ktor Framework geschriebenes Vergleichsbeispiel auf einer der beliebtesten PaaS-Plattformen – Heroku – bereitstellen können. Das Vergleichsbeispiel kann kostenlos verwendet werden und ist auf der Seite [auf GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor) verfügbar.

### System Anforderungen

Um das Beispiel auf dem Heroku-Server bereitzustellen, müssen die nächsten Anwendungen installiert werden

1. `Heroku CLI` - um Zugriff auf Ihr Konto zu erhalten (natürlich benötigen Sie ein Konto)
2. „Git“ – zum Laden der Beispielanwendung und zum Bereitstellen auf dem Heroku-Server

### Beispielanwendung von GitHub abrufen

1. Gehen Sie zur [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) mit Beispielen der [GroupDocs.Comparison API](https://products.groupdocs.com/comparison /Java/)
2. Klicken Sie rechts oben auf der Seite auf die grüne Schaltfläche „Code“ und kopieren Sie den HTTPS-Repository-Link
3. Öffnen Sie die Windows-Befehlszeile oder das Linux-Terminal und führen Sie den nächsten Befehl aus

„Schale
Git-Klon https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

Die Beispiel-App wurde von GitHub in Ihr lokales Verzeichnis heruntergeladen. Schließen Sie die Befehlszeile nicht

### Schlüsselpunkte des Projekts, das für Heroku bereitgestellt werden soll

1. Eine spezielle Gradle-Aufgabe wurde zu „build.gradle.kts“ hinzugefügt. Es wird von Heroku benötigt, um die ausführbare Datei des Beispiels zu erstellen

<script src="https://gist.github.com/groupdocs-comparison-gists/9420eee014f7f425a6f53cc8405fb21d.js"></script>

2. Verwenden des Ports aus der Umgebungsvariable „PORT“ (Datei „application.conf“). Dies ist wichtig, da Heroku den Port bei jedem Start der App ändern kann

<script src="https://gist.github.com/groupdocs-comparison-gists/c3e61833f1878eccfd5c7bb4830f62e5.js"></script>

3. Die Datei „Procfile“ wurde erstellt, um Heroku zu sagen, wie die Anwendung ausgeführt werden soll

<script src="https://gist.github.com/groupdocs-comparison-gists/585de64fb7b5d3b0f8af68871f39161d.js"></script>

4. Die Datei „system.properties“ wurde erstellt, um die Java-Version anzugeben, die unsere App benötigt

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Heroku-Anwendung erstellen

1. Führen Sie in der Befehlszeile die nächsten Befehle aus

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Es öffnet die Heroku-Webseite, auf der Sie sich anmelden sollten, um dem Befehlszeilentool Zugriff auf Ihr Konto zu gewähren

2. Erstellen Sie eine Anwendung, die den nächsten Befehl ausführt:

<script src="https://gist.github.com/groupdocs-comparison-gists/960345297cd9dd3cf427939d500a753b.js"></script>

Wobei „my-comparison-app-name“ der Name der App ist. Sie können einen beliebigen Namen verwenden, dieser muss jedoch eindeutig sein. Das Ergebnis des Befehls ist eine Web-URL für den Zugriff auf Ihre neue App und ein Link zum Heroku-Git-Repository:

„Schale
https://my-comparison-app-name.herokuapp.com/ | https://git.heroku.com/my-comparison-app-name.git
```

### Beispielanwendung für Heroku bereitstellen

1. Fügen Sie den Heroku-Git-Repository-Link als Remote zum Beispiel-App-Repository hinzu, indem Sie den nächsten Befehl ausführen:

<script src="https://gist.github.com/groupdocs-comparison-gists/bc2086fe645337ae3e27fa9778766208.js"></script>
    



Wo "my-comparison-app-name" der App-Name ist, ist "heroku" nur ein Name, der von Git verwendet wird, um das Heroku-Git-Repository zu identifizieren. Sie können es ändern, aber vergessen Sie nicht, neu zu sein.

2. Pushen Sie die Anwendung auf den Heroku-Server

<script src="https://gist.github.com/groupdocs-comparison-gists/11a09f4de71024831f9f931bd8e9621f.js"></script>
    



Hier ist `Demos/Ktor` ein Pfad zu dem Sample, das Sie pushen möchten. Der Stamm des Pfads ist ein Stammverzeichnis des Git-Projekts des Beispiels. „heroku“ ist ein Name aus dem vorherigen Schritt, der verwendet wird, um das Heroku-Git-Repository zu identifizieren. „master“ ist ein Git-Zweig im Heroku-Git-Repository. Heroku setzt nur die Zweige „master“ und „main“ ein.
    



Als Ergebnis des Befehls wird das Beispiel auf den Heroku-Server hochgeladen und der Build des Beispiels wird ausgeführt. Sie sehen die Ausgabe der eingebauten Befehlszeile. Alles muss erfolgreich abgeschlossen werden. Wenn ja, öffnen Sie einfach den Link aus Schritt 2 ([https://my-comparison-app-name.herokuapp.com/](https://my-comparison-app-name.herokuapp.com/)) im Browser zu siehe hochgeladene Bewerbung. Um die App zu überprüfen, können Sie einige Dateien mit der Vergleichs-Benutzeroberfläche hochladen.

Sie können Ihre Apps in Heroku [Weboberfläche] (https://dashboard.heroku.com/apps) verwalten.

### Nützliche Befehle

* Um allgemeine Hilfe anzuzeigen, verwenden Sie die nächsten Befehle

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* Um Hilfe für einen bestimmten Befehl anzuzeigen, geben Sie ihn nach dem Wort „Hilfe“ ein

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* Um Protokolle anzuzeigen, verwenden Sie den nächsten Befehl (fügen Sie den Parameter "--tail" hinzu, um Protokolle in Echtzeit anzuzeigen)

<script src="https://gist.github.com/groupdocs-comparison-gists/8214014faef1b27e8e2279405b43093e.js"></script>

* Um auf das entfernte Dateisystem zuzugreifen, können Sie den nächsten Befehl verwenden

<script src="https://gist.github.com/groupdocs-comparison-gists/5c46e7a117ec410deabd4e5d7a4abb60.js"></script>

Denken Sie daran, dass alle Änderungen im Remote-Dateisystem verloren gehen, wenn die App neu gestartet wird

* Um die App neu zu starten, verwenden Sie die nächsten Befehle

<script src="https://gist.github.com/groupdocs-comparison-gists/fecb1c7111e46cc1d3c4cd8d912becd3.js"></script>

### Mehr Möglichkeiten

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) ist eine sehr leistungsfähige und moderne Lösung zum Vergleichen verschiedener Dateien, Dokumente und Bilder, während ihre Beispiele völlig kostenlos und offen für Änderungen sind. Sie können sie so ändern, dass sie mit Heroku-Add-Ons funktionieren, z. B. Datenbank- oder Dateispeicher. Das Ktor-Beispiel hat verschiedene Konfigurationen (siehe `comparer.conf`), die durch das Setzen von Umgebungsvariablen verfügbar sind. Sie können dies in der Heroku-Weboberfläche oder über die Befehlszeile tun.

### Holen Sie sich eine kostenlose API-Lizenz

Viele Vergleichseinstellungen, z. B. [Zusammenfassungsseite erstellen](/Vergleich/Java/Nur-Zusammenfassungsseite abrufen/), [Empfindlichkeit des Vergleichs](/Vergleich/Java/Einstellung-Vergleichsempfindlichkeit/) und so weiter , sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

Die Ktor-Beispiel-App für [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) ist nur ein Beispiel für die Verwendung von [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/ ) zum Vergleichen von Pdf-, Word-, Excel-Dokumenten, PowerPoint-Präsentationen, Diagrammen, CAD-Dateien, Bildern und vielem mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/). Weitere Beispiele für die Verwendung von GroupDocs.Comparison mit Java und Kotlin finden Sie auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Um weitere Details, Optionen und Beispiele zu erhalten, können Sie [die Dokumentation](/comparison/java/getting-started/) und das [GitHub](https://github.com/groupdocs-comparison)-Repository durchgehen. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [AutoCad-Dateien vergleicht](/comparison/java/how-to-compare-autocad-drawings) in Java oder Kotlin
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Anleitung zum [Bereitstellen des Spring-Vergleichsbeispiels](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) auf der Heroku-PaaS-Plattform
* So [verwenden Sie das Vergleichstool](/comparison/java/how-to-use-ktor-comparison-sample) mit Ktor Framework

