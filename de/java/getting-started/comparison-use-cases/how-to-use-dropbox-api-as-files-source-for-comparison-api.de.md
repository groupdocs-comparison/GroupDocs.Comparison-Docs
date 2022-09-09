---
id: how-to-use-dropbox-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api
title: "So verwenden Sie die Dropbox-API als Dateiquelle für die Vergleichs-API"
weight: 18
description: "Der Artikel beschreibt die Verwendung der Dropbox-API als Dateiquelle für die GroupDocs-Vergleichs-API"
keywords: "Dokumente vergleichen, Dropbox-API, Dateien aus Dropbox vergleichen, Vergleichstool mit Java und Dropbox-API"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: PDF-, Excel- und Word-Vergleich
        description: "Das Produkt ermöglicht den Vergleich von PDF-, Excel- und Word-Dokumenten mithilfe der DropBox-API"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So verwenden Sie die DropBox-API, um Unterschiede zwischen Dokumenten zu erkennen
        description: "Erfahren Sie, wie Sie die DropBox-API verwenden, um Unterschiede zwischen Dokumenten in Java- oder Kotlin-Projekten zu erkennen"
Schritte:
- name: Konfiguration der Dropbox-API
Text: Beschreibung der Schritte, die zum Konfigurieren der Dropbox-API erforderlich sind
- name: Konfigurieren des Projekts zur Verwendung der Dropbox-API mit der Vergleichs-API
Text: Alle erforderlichen Konfigurationen zur Verwendung der Dropbox-API und der Vergleichs-API im Projekt
- name: Erstellen von Dropbox-API-Objekten
text: Erstellen Sie ein Client-Objekt, um mit der Dropbox-API zu arbeiten
- Name: Liste der Dateien mit Dropbox-API abrufen
text: Verbinden Sie sich mit der Dropbox-API und laden Sie die Liste der darin gespeicherten Dateien
- Name: Dokumente direkt aus Dropbox vergleichen
Text: Vergleichen Sie Dokumente, die im Dropbox-Konto gespeichert sind
---
Heutzutage sind Cloud-Dienste sehr beliebt. Daher werden sie von vielen Menschen als Speicher für Fotos, Bilder, Dokumente und andere Dateien verwendet. Auf diese Weise benötigen Sie möglicherweise die Möglichkeit, Dokumente direkt aus Dropbox zu vergleichen, ohne sie herunterzuladen und lokal zu speichern. Sie können dies ganz einfach mit [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) zusammen mit der Dropbox-API tun.

### Konfiguration der Dropbox-API

Um sich auf die Verwendung der Dropbox-API vorzubereiten, müssen Sie über ein Dropbox-Konto verfügen. Es ist sehr einfach, einen zu registrieren. Die erforderlichen Schritte finden Sie auf der Dropbox-Dokumentationsseite. Im Folgenden finden Sie jedoch Schritte, die Sie ausführen müssen, bevor Sie die Dropbox-API verwenden.

#### Dropbox-Anwendung erstellen

1. Öffnen Sie die [Dropbox-App-Konsole] (https://www.dropbox.com/developers/apps)
2. Klicken Sie auf „App erstellen“, um eine neue Anwendung zu erstellen

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_1.png)

3. Wählen Sie „Bereichsbezogene Zugriffs-API“.

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_2.png)

4. Wählen Sie dann „App-Ordner“ (Sie können „Full Dropbox“ auswählen, um der App Zugriff auf alle Ihre Dateien zu gewähren)

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_3.png)

5. Geben Sie abschließend den App-Namen ein und klicken Sie auf „App erstellen“.

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_4.png)

#### Dropbox-API-Einstellungen werden aktualisiert

1. Öffnen Sie zunächst die Registerkarte „Berechtigungen“ und wählen Sie die nächsten Berechtigungen aus

1. Dateien.Metadaten.Schreiben
2. Dateien.Metadaten.gelesen
3. Dateien.Inhalt.Schreiben
4. Dateien.Inhalt.gelesen
   

**Vergessen Sie nicht**, auf die Schaltfläche „Senden“ zu klicken, um die Änderungen zu speichern

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_5.png)

2. Gehen Sie nach dem Speichern der Änderungen zurück zur Registerkarte „Einstellungen“ und generieren Sie das Zugriffstoken, indem Sie auf die Schaltfläche „Generieren“ klicken

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_6.png)

**Denken Sie daran**, dass Sie nach jeder Änderung der Berechtigungen ein neues Token generieren müssen, das alte **wird** nicht automatisch entsprechend den Änderungen der Berechtigungen aktualisiert

4. Das ist eigentlich alles. Das Token ist das Einzige, was Sie für den Zugriff auf Ihre Dropbox-Dateien benötigen. Speichern Sie das Token irgendwo, wir werden es später verwenden.

### Konfigurieren des Projekts zur Verwendung der Dropbox-API mit der Vergleichs-API

Um die Dropbox-API als Dateispeicher zum Vergleichen von Dokumenten zu verwenden, müssen Sie dem Projekt einige Bibliotheken und ein Repository hinzufügen.

<details open><summary>Verbinden Sie das GroupDocs-Repository</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>Gradl</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

<details open><summary>Bibliotheken</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6dbf6684650c250c88ae1a583454a99e.js"></script>

</details>
<details><summary>Gradl</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/391a5a558c5a2a38d5d5da9349c8a1d5.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/092c23f2daabd4a481d47d686a36deeb.js"></script>

</details>
</blockquote></details>

### Erstellen von Dropbox-API-Objekten

Eigentlich ist es sehr einfach, mit der Dropbox-API zu arbeiten

<script src="https://gist.github.com/groupdocs-comparison-gists/71e514fc974faa424f41cc1626501a88.js"></script>

Wo:
1. „mycompany/best-comparison-app“ – ist nur eine Kennung, die Sie in Protokollen der Dropbox-Website sehen werden
2. `YOUR ACCESS TOKEN` - hier sollte das zuvor generierte Access Token stehen

### Dateiliste mit Dropbox-API abrufen

Um eine Liste der Dateien zu drucken, die sich in Ihrem Dropbox-App-Verzeichnis befinden, führen Sie den nächsten Code aus (vergessen Sie nicht, einige Dateien über die Dropbox-Webseite hochzuladen, da das App-Verzeichnis standardmäßig leer ist).

<script src="https://gist.github.com/groupdocs-comparison-gists/6f450d94c73366d1b9bd54d8275763a9.js"></script>

Hier ist ein Beispiel für die Ausgabe:

```shell
- /target.pdf  target.pdf (390069 bytes)
- /source.pdf  source.pdf (767524 bytes)
```

In der Ausgabe ist jede Zeile eine Datei. Es ist Pfad, Name und Größe. Sie können diese Informationen verwenden, um eine Liste von Dateien anzuzeigen. Es gibt weitere Daten, die für jede Datei abgerufen werden können. Weitere Informationen finden Sie auf der Dropbox-Dokumentationsseite. **Denken Sie daran**, der obige Code ist nur ein Beispiel. Es gibt eine Paginierung, die verarbeitet werden sollte, um alle Dateien zu erhalten.

### Vergleichen von Dokumenten direkt aus Dropbox

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) ist eine flexible, leistungsstarke und moderne Bibliothek, die Sie in jedem Java-, Kotlin- oder anderen Java-kompatiblen Projekt verwenden können, um Word, Excel zu vergleichen , PowerPoint-Dokumente, Fotos, Bilder, Diagramme, Codedateien und vieles mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/). Die Vergleichs-API enthält viele flexible Einstellungen, zum Beispiel: Akzeptieren/Ablehnen von Änderungen, Generieren einer Übersichtsseite, Generieren von Dokumentenvorschaubildern, Vergleichen von mehr als zwei Dokumenten (Multi-Vergleich), Ändern der Vergleichsempfindlichkeit und Ändern von Hervorhebungsstilen. Lesen Sie mehr über Einstellungen in [der Dokumentation](/comparison/java/getting-started/). Auf unserer [GitHub-Seite] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) finden Sie verschiedene Beispiele für die Verwendung der Vergleichsbibliothek mit verschiedenen Frameworks wie Dropwizard, Spring, Kotlin Compose Desktop und so weiter an.

#### Speichern des Ergebnisdokuments auf lokaler Festplatte

Es ist einfach, dwo-Dokumente von Ihrer Dropbox aus zu vergleichen, indem Sie das Ergebnisdokument auf einer lokalen Festplatte speichern oder es in den Java-Ausgabestrom schreiben, um es zu verwenden, wo immer Sie möchten.

<script src="https://gist.github.com/groupdocs-comparison-gists/3a031da813381a949f5b9fed868fb9ec.js"></script>

In der Ausgabekonsole sehen Sie den Pfad zum Ergebnisdokument.

#### Speichern des Ergebnisdokuments in Dropbox

Unten sehen Sie, wie Sie Dokumente direkt aus Dropbox vergleichen und das Ergebnisdokument in Dropbox hochladen, ohne es lokal zu speichern. Danach können Sie Dropbox im Webbrowser öffnen und das Ergebnisdokument finden.

<script src="https://gist.github.com/groupdocs-comparison-gists/8c95ba602a127dee49d98bb0f756f987.js"></script>

In der Ausgabekonsole sehen Sie den Pfad des hochgeladenen Dokuments.

### Holen Sie sich eine kostenlose API-Lizenz

Die meisten Einstellungen, z. B. Generieren der Übersichtsseite, Sensitivität des Vergleichs usw., sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Evaluierungseinschränkungen zu verwenden.

### Fazit

In diesem Artikel wurde gezeigt, wie Sie die Dropbox-API als Quelle für Dokumente für die Bibliothek [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) verwenden, die Sie in Ihrem eigenen Projekt verwenden können. Auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) finden Sie Beispiele für die Verwendung der Dropbox-API in Spring- und Dropwizard-Anwendungen. Sie können modifiziert und als Kern Ihrer eigenen Anwendung zum Vergleichen von Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und anderen [unterstützten Dateiformaten](/comparison/java/supported-document-formats/) verwendet werden.

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* So [verwenden Sie das Vergleichstool](/comparison/java/how-to-use-ktor-comparison-sample) mit Ktor Framework
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* How to [use Google Drive API as files source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
