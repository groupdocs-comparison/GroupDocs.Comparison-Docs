---
id: how-to-deploy-spring-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform
title: "So stellen Sie ein Spring-Vergleichsbeispiel auf der Heroku PaaS-Plattform bereit"
weight: 21
description: "Der Artikel beschreibt, wie Sie das Spring-Vergleichsbeispiel auf der Heroku PaaS-Plattform bereitstellen"
keywords: "Spring Framework, Dokumente vergleichen, Dateien mit Kotlin, Paas, Heroku vergleichen"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Tabellenkalkulation, AutoCad, Bildvergleich
        description: "Das Produkt ermöglicht den Vergleich von PowerPoint-, Code-, Bild-, AutoCad-, Pdf-, Word-, Excel- und vielen weiteren Dokumenten"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So stellen Sie das Spring-Projekt in Heroku bereit
        description: "Erfahren Sie, wie Sie ein Vergleichs-Spring-Beispielprojekt in Heroku bereitstellen"
Schritte:
- Name: Systemvoraussetzungen
text: Welche Tools Sie benötigen, um Anwendungen in Heroku bereitzustellen
- name: Beispielanwendung von GitHub abrufen
text: Vorkonfigurierte Beispielanwendung herunterladen, um sie bereitzustellen
- Name: Hauptpunkte des Projekts, das auf Heroku bereitgestellt werden soll
Text: Wichtigste Dinge, die im Projekt konfiguriert werden müssen, bevor mit der Bereitstellung begonnen wird
- Name: Heroku-Anwendung erstellen
Text: Erstellen einer Anwendung im Heroku-Konto, in dem das Beispiel bereitgestellt wird
- name: Beispielanwendung wird in Heroku bereitgestellt
text: Ausführen des Befehls zum Bereitstellen der Beispielanwendung und Überprüfen, ob alles funktioniert
---

Eine der beliebtesten Lösungen zur Bereitstellung von Webanwendungen und Websites ist PaaS (Platform as a Service). Glücklicherweise hat sich die [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) so entwickelt, dass sie einfach integriert werden kann. Dieser Artikel beschreibt, wie Sie ein mit Spring Framework entwickeltes Vergleichsbeispiel auf einer der sehr beliebten PaaS-Plattformen – Heroku – bereitstellen können. Das Vergleichsbeispiel kann völlig frei verwendet und modifiziert werden. Es ist auf der Seite [auf GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Spring) verfügbar.

### System Anforderungen

Als nächstes müssen Anwendungen installiert werden, um das Beispiel auf dem Heroku-Server bereitzustellen

1. `Heroku CLI` - Tool für den Zugriff auf das Heroku-Konto (natürlich benötigen Sie ein Konto)
2. „Git“ – Tool zum Herunterladen der Beispielanwendung und zum Bereitstellen auf dem Heroku-Server

### Beispielanwendung von GitHub abrufen

1. Öffnen Sie die [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) mit Beispielen der [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/ Java/)
2. Verwenden Sie die grüne Schaltfläche „Code“ rechts oben auf der Seite, um den HTTPS-Repository-Link zu kopieren
3. Öffnen Sie das Linux-Terminal oder die Windows-Befehlszeile und führen Sie den nächsten Befehl aus

„Schale
Git-Klon https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

Der Befehl lädt das Projekt mit Beispielen von GitHub in Ihr lokales Verzeichnis herunter. Schließen Sie die Befehlszeile nicht

### Hauptpunkte des Projekts, das in Heroku eingesetzt werden soll

1. Das Maven-Profil zum Erstellen der JAR-Datei ist standardmäßig konfiguriert und aktiv
2. Beispiel konfiguriert, um die Umgebungsvariable „PORT“ zu verwenden (Datei „configuration.yml“). Dies ist wichtig, da Heroku den Port bei jedem Start der App ändern kann

<script src="https://gist.github.com/groupdocs-comparison-gists/2f55731e40bfc2db4b42e48c58f8faa6.js"></script>

3. Um Heroku zu sagen, wie die Anwendung ausgeführt werden soll, wurde eine spezielle Datei (`Procfile`) erstellt.

<script src="https://gist.github.com/groupdocs-comparison-gists/90a35cf6498755ae7672cb83cfbd4d73.js"></script>

4. Die Datei „system.properties“ wurde erstellt, um die Java-Version anzugeben, die unsere App benötigt

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Heroku-Anwendung erstellen

1. Führen Sie den nächsten Befehl aus, um zum Beispielverzeichnis zu wechseln und sich mit dem Heroku-Konto anzumelden

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Der letzte Befehl öffnet die Heroku-Website, auf der Sie sich für den Zugriff auf das große Befehlszeilentool bei Ihrem Konto anmelden sollten

2. Verwenden Sie den nächsten Befehl, um eine neue Heroku-Anwendung zu erstellen

<script src="https://gist.github.com/groupdocs-comparison-gists/549e2bd14bbff90c1a1e8c6be2b64053.js"></script>

Wobei „my-spring-comparer“ der Name der App ist. Sie können es beliebig ändern, aber es muss eindeutig sein. Das Ergebnis des Befehls ist eine Web-URL für den Zugriff auf Ihre neue App und ein Link zum Heroku-Git-Repository. Hier ist ein Beispiel für eine Befehlszeilenausgabe:

„Schale
https://my-spring-comparer.herokuapp.com/ | https://git.heroku.com/my-spring-comparer.git
```

### Beispielanwendung für Heroku bereitstellen

1. Als nächstes fügen Sie den Heroku-Repository-Link als Remote zum Beispiel-App-Repository mit dem nächsten Befehl hinzu:

<script src="https://gist.github.com/groupdocs-comparison-gists/9b23f36cc6434900449e4906bed6d7cc.js"></script>
    



Wobei „my-spring-comparer“ der Name der Heroku-App ist, ist „heroku-spring“ ein Name, der von Git verwendet wird, um das Heroku-Repository zu identifizieren. Sie können es ändern, aber vergessen Sie nicht, neu zu sein.

2. Stellen Sie die Anwendung mit dem nächsten Befehl auf dem Heroku-Server bereit

<script src="https://gist.github.com/groupdocs-comparison-gists/cd1fc18b42f1c00841be0371c538385a.js"></script>
    



Hier ist `Demos/Spring` ein Pfad zu dem Sample, das Sie pushen möchten. Der Stamm des Pfads ist ein Stammverzeichnis des Git-Projekts des Beispiels. „heroku-spring“ ist der Heroku-Repository-Name aus dem vorherigen Schritt, der zur Identifizierung verwendet wird. „master“ ist ein Git-Zweig im Heroku-Repository. Im Moment setzt Heroku nur `master` und `main` Branches ein.
    



Der Befehl lädt das Spring-Beispiel auf den Heroku-Server hoch und beginnt mit dem Erstellen. Sie sehen die Ausgabe des Build-Prozesses in der Befehlszeile. Alles muss erfolgreich abgeschlossen werden. Öffnen Sie in diesem Fall einfach den Link aus Schritt 2 ([https://my-spring-comparer.herokuapp.com/](https://my-spring-comparer.herokuapp.com/)) in Ihrem bevorzugten Browser, um den Upload anzuzeigen Anwendung. Um die App zu überprüfen, können Sie einige Dateien über die Vergleichs-Benutzeroberfläche hochladen.

Sie können Ihre Anwendungen in Heroku [Weboberfläche] (https://dashboard.heroku.com/apps) verwalten.

### Nützliche Befehle

* Verwenden Sie den nächsten Befehl, um die allgemeine Hilfe der Heroku-CLI anzuzeigen

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* Um Hilfe für einen bestimmten Befehl anzuzeigen, geben Sie ihn nach dem Wort „Hilfe“ ein

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* Um Protokolle einer bestimmten Anwendung anzuzeigen, verwenden Sie den nächsten Befehl (fügen Sie den Parameter "--tail" hinzu, um Protokolle in Echtzeit anzuzeigen).

<script src="https://gist.github.com/groupdocs-comparison-gists/1fb868756cff79b05bbb951dd620f842.js"></script>

* Es ist möglich, mit dem nächsten Befehl auf das entfernte Dateisystem zuzugreifen

<script src="https://gist.github.com/groupdocs-comparison-gists/1b7968ffc4805be2774ef9c33de252a3.js"></script>

Vergessen Sie nicht, dass alle Änderungen im Remote-Dateisystem verloren gehen, wenn die App neu gestartet wird

* Sie können die App mit dem nächsten Befehl neu starten

<script src="https://gist.github.com/groupdocs-comparison-gists/be60e3092d9e2515423a621e01a1833a.js"></script>

### Mehr Möglichkeiten

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) ist eine moderne, nützliche und sehr leistungsstarke Lösung zum Vergleichen verschiedener Dokumente, Dateien und Bilder, während die Beispiele völlig kostenlos verwendet und geöffnet werden können Geändert werden. Sie können sie so ändern, dass sie mit Heroku-Add-Ons funktionieren, z. B. Datenbank- oder Dateispeicher. Das Spring-Beispiel hat verschiedene Konfigurationen (siehe `configuration.yml`), die durch das Setzen von Umgebungsvariablen verfügbar sind. Sie können dies in der Heroku-Weboberfläche oder über die Befehlszeile tun. Darüber hinaus verfügt das Spring-Beispiel über Implementierungen zur Verwendung der Google Drive-API und der Dropbox-API als Dateiquellen für den Vergleich. Weitere Informationen finden Sie unter [Integration der Google Drive-API](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) und [Integration der Dropbox-API](/ Vergleich/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/) Seiten

### Holen Sie sich eine kostenlose API-Lizenz

Viele Vergleichseinstellungen, z. B. [Zusammenfassungsseite erstellen](/Vergleich/Java/Nur-Zusammenfassungsseite abrufen/), [Empfindlichkeit des Vergleichs](/Vergleich/Java/Einstellung-Vergleichsempfindlichkeit/) und so weiter , sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

Die mit Spring Framework als Kern erstellte Vergleichsbeispielanwendung ist nur ein Beispiel für die Verwendung von [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) zum Vergleichen von PDF-, Word-, Excel-Dokumenten, PowerPoint-Präsentationen und Diagrammen , CAD-Dateien, Bilder und vieles mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/). Weitere Beispiele für die Verwendung von GroupDocs.Comparison mit Java und Kotlin finden Sie auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Um weitere Details, Optionen und Beispiele zu erhalten, können Sie [die Dokumentation](/comparison/java/getting-started/) und das [GitHub](https://github.com/groupdocs-comparison)-Repository durchgehen. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [AutoCad-Dateien vergleicht](/comparison/java/how-to-compare-autocad-drawings) in Java oder Kotlin
* Wie man [Ktor-Beispiel bereitstellt](comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) auf der Heroku-PaaS-Plattform
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* Anleitung zum [Bereitstellen des Dropwizard-Beispiels](/comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform) auf der Heroku-PaaS-Plattform

