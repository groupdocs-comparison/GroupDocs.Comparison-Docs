---
id: how-to-use-google-drive-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api
title: "So verwenden Sie die Google Drive-API als Dateiquelle zum Vergleichen von Dokumenten"
weight: 17
description: "Der Artikel beschreibt die Verwendung der Google Drive-API als Dateiquelle für die GroupDocs-Vergleichs-API"
keywords: "Dokumente vergleichen, Google Drive API, Dateien von Google Drive vergleichen, Vergleichstool mit Java und Google Drive API"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: PowerPoint-, Image- und AutoCad-Vergleich
        description: "Das Produkt ermöglicht den Vergleich von PowerPoint-, Bild- und AutoCad-Dateien"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So verwenden Sie die Google Drive-API, um Unterschiede zwischen Dateien, Bildern oder Dokumenten zu erkennen
        description: "Erfahren Sie, wie Sie die Google Drive-API verwenden, um Unterschiede zwischen Dateien, Bildern oder Dokumenten in Java- oder Kotlin-Projekten zu erkennen"
Schritte:
- Name: Konfigurieren der Google-API
Text: Beschreibung der Schritte, die zum Konfigurieren der Google-API erforderlich sind
- Name: Konfigurieren des Projekts zur Verwendung der Google Drive-API mit der Vergleichs-API
text: Alle erforderlichen Konfigurationen zur Verwendung der Google Drive-API und der Vergleichs-API im Projekt
- name: Erstellen von Google Drive-API-Objekten
Text: Erstellen eines Dienstobjekts zum Arbeiten mit der Google Drive-API
- Name: Rufen Sie eine Liste der Dateien mit der Google Drive-API ab
text: Verbinden Sie sich mit der Google Drive API und laden Sie die Liste der darin gespeicherten Dateien
- Name: Dokumente direkt von Google Drive vergleichen
Text: Vergleichen Sie Dokumente, die im Google Drive-Konto gespeichert sind
---
Heutzutage sind Cloud-Dienste sehr beliebt. Das bedeutet, dass viele Leute sie verwenden, um Dokumente, Fotos und andere Dateien zu speichern. In dieser Situation benötigen Sie möglicherweise die Möglichkeit, Dateien direkt von Google Drive zu vergleichen, ohne sie herunterladen und lokal speichern zu müssen. Sie können dies ganz einfach tun, indem Sie [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) zusammen mit der Google Drive API kombinieren.

### Konfigurieren der Google-API

Um Google API verwenden zu können, müssen Sie über ein Google-Konto verfügen. Hier wird nicht beschrieben, wie man es registriert. Die erforderlichen Schritte finden Sie auf der Google-Dokumentationsseite. Die folgenden Schritte sind jedoch erforderlich, um die Google Drive-API in Ihrem Projekt zu verwenden.

#### Google Cloud Platform-Projekt erstellen und Drive API aktivieren

1. Öffnen Sie das [Dashboard der Google Cloud-Plattform] (https://console.cloud.google.com/apis/dashboard)
2. Klicken Sie auf „Projekt auswählen“, um die Projektliste zu öffnen

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_1.png)

3. Um ein Projekt anzulegen, klicken Sie auf „NEUES PROJEKT“.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_2.png)

4. Geben Sie den Projektnamen ein und klicken Sie auf „Erstellen“.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_3.png)

5. Klicken Sie auf „APIs und Dienste aktivieren“, um die Google Drive-API zu aktivieren

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_4.png)

6. Suchen Sie „Google Drive API“, wählen Sie es aus und klicken Sie auf der geöffneten Seite auf „Aktivieren“.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_5.png)

#### Einwilligungsbildschirm erstellen

1. Öffnen Sie die Seite [Credentials](https://console.cloud.google.com/apis/credentials) und prüfen Sie, ob das ausgewählte Projekt korrekt ist
2. Klicken Sie auf "Create Credentials" und wählen Sie "OAuth-Client-ID".

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. Klicken Sie auf die Schaltfläche „Zustimmungsbildschirm konfigurieren“.
4. Wählen Sie „Benutzertyp“ und klicken Sie auf „Erstellen“.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_7.png)

5. Füllen Sie „App-Informationen“ aus und klicken Sie auf „Speichern und fortfahren“.
6. Klicken Sie auf „Bereiche hinzufügen oder entfernen“, um Anmeldebereiche zu konfigurieren.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_8.png)

7. Überprüfen Sie auf dem Bildschirm „Ausgewählte Bereiche aktualisieren“ die erforderlichen Bereiche. Sie können Filter verwenden, um Bereiche zu durchsuchen. Nachdem Sie alle erforderlichen Bereiche ausgewählt haben, klicken Sie auf die Schaltfläche „Aktualisieren“.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_9.png)

8. Klicken Sie auf „Speichern und fortfahren“, um mit dem nächsten Schritt fortzufahren
9. Fügen Sie Benutzer über die Schaltfläche „Benutzer hinzufügen“ hinzu und klicken Sie auf „Speichern und fortfahren“.
10. Klicken Sie auf „Zurück zum Dashboard“, um die Konfiguration abzuschließen

#### Anmeldeinformationen für die Google Drive-API erstellen

1. Öffnen Sie die Seite [Credentials](https://console.cloud.google.com/apis/credentials) und prüfen Sie, ob das ausgewählte Projekt korrekt ist
2. Klicken Sie auf "Create Credentials" und wählen Sie "OAuth-Client-ID".

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. Wählen Sie den Anwendungstyp als „Desktop-App“, geben Sie den Namen ein und klicken Sie auf „Erstellen“.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_10.png)

4. Kopieren und speichern Sie nun Ihre „Client-ID“, „Client-Geheimnis“ und laden Sie natürlich die JSON-Datei herunter und speichern Sie sie, die für den Zugriff auf die Google Drive-API verwendet wird

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_11.png)

### Konfigurieren des Projekts zur Verwendung der Google Drive-API mit der Vergleichs-API

Um die Google Drive-API als Dateispeicher der Vergleichs-API zu verwenden, müssen Sie dem Projekt einige Bibliotheken und ein Repository hinzufügen.

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

<script src="https://gist.github.com/groupdocs-comparison-gists/513c0cf2cf6ec736df038122fe7389a3.js"></script>

</details>
<details><summary>Gradl</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7af8c044d34a45f5858667bd3b8a05c8.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/22abc7b8e5548ad0f240b604f7092516.js"></script>

</details>
</blockquote></details>

### Erstellen von Google Drive-API-Objekten

Zunächst benötigen wir die JSON-Factory, die für die Kommunikation mit dem Google-Server verwendet wird

<script src="https://gist.github.com/groupdocs-comparison-gists/0853a71cd95b079fe683eac607e7fa3a.js"></script>

Zweitens müssen wir ein Transportobjekt erstellen

<script src="https://gist.github.com/groupdocs-comparison-gists/844c3077a831fc8dee4485ef8302c79d.js"></script>

Danach müssen wir ein Client-Secrets-Objekt erstellen. Dies ist der Ort, an dem wir die JSON-Datei verwenden, die nach dem Erstellen der API-Anmeldeinformationen heruntergeladen wurde

<script src="https://gist.github.com/groupdocs-comparison-gists/139ac242d9a5af46ac70de236cfa9402.js"></script>

Der nächste Schritt besteht darin, einen Autorisierungsfluss zu erstellen, der für die Autorisierungsanforderung verwendet wird. Ein paar Details zu den Optionen:
* „DriveScopes.DRIVE“ – ist ein Bereich, der beim Erstellen von API-Anmeldeinformationen aktiviert wurde
* `"/Path/To/Directory/To/Save/Tokens"` - Das Token-Verzeichnis wird zum Speichern von Autorisierungs-Token benötigt. Sie können diese Zeile entfernen, aber auf diese Weise wird Google API jedes Mal nach einer Autorisierung fragen.

<script src="https://gist.github.com/groupdocs-comparison-gists/a4ee3fdba7423db24797967851f16b56.js"></script>

Jetzt werden wir die Autorisierung anfordern. Es öffnet die Google-Autorisierungsseite im Standard-Webbrowser, wo Sie Zugriff auf die Anwendung haben. Weitere Informationen finden Sie auf der Google-Dokumentationsseite.

<script src="https://gist.github.com/groupdocs-comparison-gists/cf913a2f12e3f2233b5f4b9e8cc98654.js"></script>

Schließlich erstellen wir ein Objekt, das für den Zugriff auf Google Drive-Dateien verwendet wird

<script src="https://gist.github.com/groupdocs-comparison-gists/c767f20a31dede6afd5412013908016d.js"></script>

### Dateiliste mit Google Drive API abrufen

Um eine Liste der Dateien zu drucken, die sich auf Ihrem Google Drive befinden, führen Sie den nächsten Code aus

<script src="https://gist.github.com/groupdocs-comparison-gists/362c635862024863ac606182e3e62a3c.js"></script>

Hier ist ein Beispiel für die Ausgabe:

```shell
- 1hRgws-lLWMlloSZioaVpKJGKt687KHL7  GroupDocs_Demo.pdf (51911 bytes)
- 22k0Uyt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 33Kk0yt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 80UMm8vRQ637H7hJHkjHKh7JKJL96tm56  GroupDocs_Demo_Image.png (78398 bytes)
- 1qwRjo4Nu0LKHlLhlLKjlk798761tuFJP  GroupDocs_Demo_Photo.jpg (3186063 bytes)
```

In der Ausgabe ist jede Zeile eine Datei. Es ist ID, Name und Größe. Sie können diese Informationen verwenden, um einem Benutzer Dateien anzuzeigen. Es gibt viele Daten, die für jede Datei abgerufen werden können. Weitere Informationen finden Sie auf der Google-Dokumentationsseite. Für die folgenden Codebeispiele verwenden wir zwei der obigen IDs. **Denken Sie daran**, dass Ihre Dateien andere IDs haben werden, also vergessen Sie beim Ausführen des Codes unten nicht, die IDs zu ändern.

### Vergleichen von Dokumenten direkt aus Google Drive

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) ist eine moderne, leistungsstarke und flexible Bibliothek, die in allen Java-, Kotlin- oder anderen Java-kompatiblen Projekten verwendet werden kann. Sie können damit Word-, Excel-, Präsentationsdokumente, Fotos, Bilder, Diagramme, Codedateien und andere [unterstützte Dateiformate](/comparison/java/supported-document-formats/) vergleichen. Die Vergleichsbibliothek hat viele Einstellungen, wie z. B. das Erstellen einer Übersichtsseite, das Akzeptieren/Ablehnen von Änderungen, das Vergleichen von mehr als zwei Dokumenten (Multi-Vergleich), das Erstellen von Dokumentvorschaubildern, das Ändern der Vergleichsempfindlichkeit und das Ändern von Hervorhebungsstilen. Weitere Informationen zu den Einstellungen finden Sie in [der Dokumentation](/comparison/java/getting-started/). Auf unserer [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) finden Sie Beispiele für die Integration der Vergleichsbibliothek mit verschiedenen Frameworks wie Spring, Dropwizard, Kotlin Compose Desktop und so weiter .

#### Ergebnisdokument lokal speichern

Sie können problemlos dwo-Dokumente vergleichen, die sich auf Ihrem Google Drive befinden, das Ergebnisdokument lokal speichern oder es in einem Java-Stream speichern und es verwenden, was immer Sie wollen. **Denken Sie daran**, dass „1ZSDTUZArzuwYab0GUbXEoSX_b9kt2mk0“ und „1mKk0yt_bBoN9K9mm-3iGXLxfTzkrdw2O“ IDs sind, die in den vorherigen Schritten erhalten wurden. Für Sie werden sie anders sein.

<script src="https://gist.github.com/groupdocs-comparison-gists/0dd5de335fee2e1f78dc8c4c82299010.js"></script>

In der Ausgabekonsole sehen Sie den Pfad zum Ergebnisdokument.

#### Ergebnisdokument in Google Drive speichern

Unten sehen Sie den Code, der Dokumente direkt von Google Drive vergleicht. Ausgabedateien werden auf Google Drive hochgeladen, ohne dass etwas lokal gespeichert wird. Danach können Sie die Google Drive-Seite im Webbrowser öffnen und das Ergebnisdokument beispielsweise mit Google Docs anzeigen.

<script src="https://gist.github.com/groupdocs-comparison-gists/d067df3bf323e06d468952af2b7b335b.js"></script>

In der Ausgabekonsole sehen Sie die ID, den Namen und die Größe des hochgeladenen Dokuments.

### Holen Sie sich eine kostenlose API-Lizenz

Viele Einstellungen, wie Übersichtsseite, Sensitivität des Vergleichs usw. sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz] (https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne die Evaluierungseinschränkungen zu verwenden.

### Fazit

In diesem Artikel haben Sie gelernt, wie Sie die Google Drive-API als Dateispeicher für die [GroupDocs.Comparison](https://products.groupdocs.com/comparison/)-Bibliothek verwenden, die Ihnen viele Möglichkeiten bietet. Beispiele für die Verwendung der Google Drive-API in Spring- und Dropwizard-Anwendungen finden Sie auf der [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java), die Sie ändern und als Kern verwenden können Ihre eigene Anwendung zum Vergleichen von Fotos, Codedateien, PowerPoint, Excel, Word und anderen [unterstützten Dateiformaten](/comparison/java/supported-document-formats/).

Weitere Einzelheiten, Optionen und Beispiele finden Sie in der [Dokumentation](/comparison/java/getting-started/) und im [GitHub](https://github.com/groupdocs-comparison)-Repository. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java oder Kotlin
* Wie man [Bilder vergleicht](/comparison/java/how-to-compare-images-using-java-or-kotlin) mit Java oder Kotlin
* So [vergleichen Sie Text, Word oder PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java oder Kotlin
* Wie man [zwei oder mehr Dateien vergleicht](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java oder Kotlin
* How to [use Dropbox API as files source](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
