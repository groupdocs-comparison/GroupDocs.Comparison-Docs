---
id: How-to-show-autocad-drawings-preview-in-kotlin-compose-application
url: comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application
title: "So zeigen Sie die Vorschau von AutoCad-Zeichnungen in der Kotlin Compose Multiplatform-Anwendung an"
weight: 29
description: "In diesem Artikel wird beschrieben, wie Sie die Vorschau von AutoCad-Zeichnungen in der Kotlin Compose-Anwendung mithilfe von GroupDocs.Comparison anzeigen"
keywords: "Vergleich und Kontrast, AutoCad-Zeichnungen, AutoCad-Vorschau, Kotlin Compose Multiplatform-Anwendung"
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Tool zum Generieren von Vorschauen für AutoCad
        description: "Das Produkt ermöglicht den Vergleich von Java-Code"
Produktcode: Vergleich
Produktplattform: java
wie man:
Name: So generieren Sie eine Vorschau der AutoCad-Zeichnung und zeigen sie mit dem Kotlin Compose Multiplatform-UI-Framework an
        description: "Sie können ganz einfach Vorschaubilder für AutoCad-Zeichnungen erstellen und anzeigen"
Schritte:
- name: Vergleichsbibliothek in einem Projekt konfigurieren
text: Um die Vergleichsbibliothek zu konfigurieren, sollten Sie das Repository einrichten und die Maven-Abhängigkeit hinzufügen
- Name: Projekt wird vorbereitet, um die Vorschau von AutoCad-Zeichnungen anzuzeigen
Text: Erstellen Sie ein Basislayout der Compose-Anwendung, um die Vorschau der AutoCad-Zeichnungen darin anzuzeigen
- Name: Generieren und Anzeigen einer Vorschau von AutoCad-Zeichnungen
Text: Verwenden Sie die GroupDocs.Comparison-Bibliothek, um eine AutoCad-Zeichnungsvorschau zu generieren und sie mit Kotlin Compose anzuzeigen
---
Compose Multiplatform ist ein UI-Framework von Jetbrains, um die Entwicklung von Desktop-Anwendungen mit Kotlin mit einer reaktiven und funktionalen API zu vereinfachen und zu beschleunigen. Deshalb erfreut sich diese Technologie zunehmender Beliebtheit. Viele Unternehmen beginnen mit der Erstellung von Software mit Compose Multiplatform. Wie auch für andere Zwecke kann das Framework einfach verwendet werden, um Software zu erstellen, die mit AutoCad-Zeichnungen funktioniert. In dieser Situation kann [GroupDocs.Comparison](https://products.groupdocs.com/comparison) sehr nützlich sein, um Vorschauen zu generieren.

### So generieren Sie eine Vorschau der AutoCad-Zeichnung und zeigen sie mit dem Kotlin Compose Multiplatform-UI-Framework an

Um mit der Arbeit mit Compose Multiplatform zu beginnen, müssen Sie JetBrains Idea installieren und ein neues Projekt erstellen. Um [GroupDocs.Comparison-Bibliothek](https://repository.groupdocs.com/comparison/) zu konfigurieren, befolgen Sie einfach die nachstehenden Schritte

#### Vergleichsbibliothek in einem Projekt konfigurieren

Fügen Sie zunächst das GroupDocs-Repository zum Projekt hinzu

<details open><summary>GroupDocs-Repository hinzufügen</summary><blockquote>

<script src="https://gist.github.com/groupdocs-comparison-gists/d75ac956735fabd2a53613e54e3b7039.js"></script>

</blockquote></details>

Der nächste Schritt besteht darin, die erforderliche Bibliotheksabhängigkeit hinzuzufügen

_Die neueste Version der Vergleichsbibliothek finden Sie [hier](https://repository.groupdocs.com/comparison/)_

<details open><summary>GroupDocs.Comparison-Abhängigkeit hinzufügen</summary><blockquote>

<script src="https://gist.github.com/groupdocs-comparison-gists/afcee955994941d17ce917654c98b25d.js"></script>

</blockquote></details>

#### Projekt wird vorbereitet, um die Vorschau der AutoCad-Zeichnungen anzuzeigen

Um eine Vorschau anzuzeigen, müssen wir eine Composable-Funktion und einen benutzerdefinierten Ressourcenlader erstellen, der es ermöglicht, ein Vorschaubild aus einer temporären Datei zu laden. Die Datei wird nur verwendet, um das Beispiel möglichst einfach zu machen, Streams sind ebenfalls verfügbar.

<script src="https://gist.github.com/groupdocs-comparison-gists/5bbdde8d898dde2fde20507baca6de86.js"></script>

Im obigen Code haben wir das Basisbildschirmlayout erstellt. Es gibt nur wenige Zeilen, Spalten und Variablen, die Sie in der Jetpack Compose-Dokumentation nachlesen können. Eine zusätzliche Sache ist der Ressourcenlader. Es lädt nur die Ressource über ihren lokalen Pfad, nichts Schwieriges.

Jetzt ist es an der Zeit, einen Dateiauswahldialog zu erstellen.

<script src="https://gist.github.com/groupdocs-comparison-gists/d4278b77570d3ebad8f9fc83676b6f94.js"></script>

Im obigen Code erstellen wir eine Schaltfläche, indem wir auf klicken, um den Dialog zu öffnen, um die AutoCad-Zeichnungsdatei auszuwählen, die zum Generieren des Vorschaubilds verwendet wird.
Der nächste Code zeigt, wie einfach Sie ein Vorschaubild für AutoCad-Zeichnungen oder andere Dateien erstellen können

<script src="https://gist.github.com/groupdocs-comparison-gists/a2c0a660e5d00e1ca54201d00e15ee81.js"></script>

#### Generieren und Anzeigen einer Vorschau von AutoCad-Zeichnungen

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) ist eine moderne und sehr leistungsfähige Bibliothek zum Vergleichen verschiedener Arten von Dokumenten. Die Bibliothek kann Word- und PDF-Dokumente, Excel- und PowerPoint-Präsentationen, Fotos, Bilder, AutoCad-Zeichnungen, Nachrichten, Codedateien und vieles mehr vergleichen [unterstützte Dateiformate](/comparison/java/supported-document-formats/). Abgesehen von der Vergleichsfunktionalität ermöglicht die Bibliothek das Erstellen von Dokumentseitenvorschauen, das Analysieren jeder Änderung und das Akzeptieren oder Ablehnen dieser Änderungen, das Abrufen der Koordinaten jeder Änderung und so weiter.
Im folgenden Code sehen Sie, wie einfach eine Vorschau für AutoCad-Zeichnungen generiert werden kann. Alles, was Sie brauchen, ist einfach ein `Document`-Objekt zu erstellen, das den Zeichenpfad oder Stream übergibt, und dann die `generatePreview`-Methode mit `PreviewOptions` als Argument aufzurufen. Der Callback mit Seitennummer wird für jede Seite des Dokuments aufgerufen. `PreviewOptions` hat mehr Optionen, zum Beispiel können Sie das Vorschauformat ändern oder nur ein paar Seitennummern angeben, sodass der Rückruf nur für bestimmte Seiten aufgerufen wird.

Das letzte, was wir tun müssen, ist die Vorschau der AutoCad-Zeichnung mit dem Ressourcenlader anzuzeigen

<script src="https://gist.github.com/groupdocs-comparison-gists/36d972bf08dbeb494765418a4093d982.js"></script>

Die Vorschau der AutoCad-Zeichnung wird nur angezeigt, wenn sich ein Bild im Objekt „previewPage“ befindet. Die Vorschau ist so konfiguriert, dass sie vertikal scrollbar ist und die Breite horizontal ausfüllt.

Unten sehen Sie den Ergebnisanwendungsbildschirm. Es ist sehr einfach gemacht, um leicht verständlich zu sein, aber das Potenzial der Technologie ist sehr hoch.

| Vorschau der AutoCad-Zeichnungsdatei in Kotlin Compose Multiplatform |
|: ------------------------------------------------ -------------------------------------------------- :|
| ![](/comparison/java/images/how-to-show-autocad-drawings-preview-in-kotlin-compose-application.png) |

### Holen Sie sich eine kostenlose API-Lizenz

Die Bibliothek [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) hat viel mehr Möglichkeiten, zum Beispiel [Zusammenfassungsseite erstellen](/comparison/java/get-only-summary-page/), Ändern der [Empfindlichkeit des Vergleichs](/comparison/java/adjusting-comparison-sensitivity/) und so weiter. Viele von ihnen sind nur mit Lizenz verfügbar. Sie können eine [kostenlose temporäre Lizenz](https://purchase.groupdocs.com/temporary-license) erwerben, um die API ohne Einschränkungen zu verwenden.

### Kostenlose Online-App
Wir bieten nicht nur eine voll funktionsfähige Java/Kotlin-Bibliothek, sondern auch leistungsstarke kostenlose Anwendungen.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG-, DWG-, DXF- und andere Dokumente mit der kostenlosen Online-Vergleichsanwendung [GroupDocs-Vergleichsanwendung] (https://products.groupdocs .app/Vergleich).

### Mehr Details

Weitere Beispiele für die Verwendung von [GroupDocs.Comparison](https://products.groupdocs.com/comparison) mit Java/Kotlin finden Sie auf unserer [GitHub-Seite](https://github.com/groupdocs-comparison/GroupDocs. Vergleich für Java). Sie können völlig kostenlos geändert und verwendet werden, um AutoCad-Zeichnungen, Fotos, Excel, Word, Codedateien, PowerPoint-Präsentationen und vieles mehr [unterstützte Dateiformate](/comparison/java/supported-document-formats/) zu vergleichen.

Um weitere Details, Optionen und Beispiele zu erhalten, können Sie [die Dokumentation](/comparison/java/getting-started/) und das [GitHub](https://github.com/groupdocs-comparison)-Repository durchgehen. Kontaktieren Sie uns [im Forum](https://forum.groupdocs.com/) für Ihre Fragen.

### Siehe auch

* So [Dokumente vergleichen](/comparison/java/how-to-compare-documents-in-the-easiest-way) auf einfachste Weise
* Wie man [json-Dateien vergleicht](/comparison/java/how-to-compare-files-in-java-or-kotlin) Änderungen mit Java oder Kotlin anwendet oder ablehnt
* So [beliebige Dateien vergleichen](/comparison/java/how-to-compare-any-files-using-compose-desktop) mit Compose Desktop
* Wie man [Vergleich und Kontrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) von Essays sieht
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
