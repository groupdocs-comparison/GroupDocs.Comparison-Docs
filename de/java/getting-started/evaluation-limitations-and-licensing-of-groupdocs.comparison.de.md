---
id: Bewertung-Einschränkungen-und-Lizenzierung-von-Gruppendokumenten-Vergleich
url: comparison/java/evaluation-limitations-and-licensing-of-groupdocs-comparison
title: "Lizenzierungs- und Bewertungsbeschränkungen"
weight: 5
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Dokumentenvergleichstool
        description: "Das Produkt ermöglicht den Vergleich von PDF-, Word-, Excel-, PowerPoint-, AutoCad-, Bild-, Code- und vielen weiteren Dateiformaten. Die Vergleichs-API unterstützt auch das Akzeptieren oder Ablehnen von Änderungen, das Extrahieren von Dokumentinformationen und das Erstellen von Vergleichsberichten"
Produktcode: Vergleich
Produktplattform: java
wie man:
name: So wenden Sie die Vergleichs-API-Lizenz an
        description: "Erfahren Sie, wie Sie eine Vergleichs-API-Lizenz anwenden, um sie frei von Evaluierungseinschränkungen zu machen"
Schritte:
- name: Lizenzobjekt erstellen
Text: Objekt erstellen, das zum Festlegen der Lizenz verwendet wird
- Name: Lizenz anwenden
text: Ruft eine spezielle Methode auf, die die Lizenz setzt und den Lizenzpfad oder den Eingabestrom übergibt
---
{{< alert style="info" >}}Sie können **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** ohne Lizenz verwenden. Die Verwendung und die Funktionen sind im Wesentlichen die gleichen wie bei der lizenzierten API, aber Sie werden bei der Verwendung der nicht lizenzierten API auf einige Einschränkungen stoßen.{{< /alert >}}

## Bewertungsbeschränkungen

Sie können ganz einfach **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** zur Evaluierung herunterladen. Der Evaluierungs-Download ist derselbe wie der gekaufte Download. Die Evaluierungsversion wird einfach lizenziert, wenn Sie einige Codezeilen hinzufügen, um die Lizenz anzuwenden. Bei der Verwendung der API ohne Lizenz gelten folgende Einschränkungen:

* Nur die ersten 3 Dokumentseiten mit einfacher Struktur werden verarbeitet.
* PDF-Dokumente sollten in keiner Sammlung mehr als vier Elemente enthalten.
* Testabzeichen werden im Dokument oben auf jeder Seite platziert.

## Lizenzierung

Die Lizenzdatei enthält Details wie den Produktnamen, die Anzahl der lizenzierten Entwickler, das Ablaufdatum des Abonnements und so weiter. Sie enthält die digitale Signatur, ändern Sie die Datei also nicht. Selbst das versehentliche Hinzufügen eines zusätzlichen Zeilenumbruchs in der Datei macht sie ungültig. Sie müssen eine Lizenz festlegen, bevor Sie die GroupDocs.Comparison-API verwenden, wenn Sie die Evaluierungseinschränkungen vermeiden möchten. Die Lizenz kann über den Dateipfad oder Stream angewendet werden.

### Lizenz unter Verwendung des Lizenzdateipfads anwenden

Der unten angegebene Code begründet, wie die Lizenz mithilfe des Dateipfads angewendet wird.

<script src="https://gist.github.com/groupdocs-comparison-gists/2aa6cce718010e6cf2f4ab7c302eb9ec.js"></script>

### Lizenz mit Lizenzdateistream anwenden

Der unten angegebene Code erklärt, wie die Lizenz mit Stream angewendet wird.

<script src="https://gist.github.com/groupdocs-comparison-gists/49086ed66a09eef3d6c994f4b9619158.js"></script>

{{< alert style="info" >}}Das mehrmalige Aufrufen von License#setLicense ist nicht schädlich, sondern verschwendet nur Prozessorzeit. Rufen Sie License#setLicense in Ihrem Startcode auf, bevor Sie die GroupDocs.Comparison-API verwenden, um zwei oder mehr Dateien in Anwendungen auf der Java-Plattform zu vergleichen. Die kompilierte Datei zeigt zeilenweise Unterschiede in Inhalt, Absätzen, Zeichen, Stilen, Formen und Positionen.
Klassen.{{< /alert >}}

### Gemessene Lizenz einstellen

{{< alert style="info" >}}Sie können auch eine gemessene Lizenz als Alternative zur Lizenzdatei festlegen. Es handelt sich um einen neuen Lizenzierungsmechanismus, der zusammen mit der bestehenden Lizenzierungsmethode verwendet wird. Es ist nützlich für Kunden, die basierend auf der Nutzung der API-Funktionen abgerechnet werden möchten. Weitere Einzelheiten finden Sie im Abschnitt [FAQ zur getakteten Lizenzierung](https://purchase.groupdocs.com/faqs/licensing/metered).{{< /alert >}}

Erstellen Sie ein gemessenes Objekt und verwenden Sie die Methode "setMeteredKey".

<script src="https://gist.github.com/groupdocs-comparison-gists/66fea81ce49f8f21712694c3e84060fb.js"></script>

So prüfen Sie die aktuelle Verbrauchsmenge:
1. Methode „getConsumptionQuantity“ der Klasse „Metered“ aufrufen.
2. Es wird die Menge/Menge der API-Anfragen zurückgeben, die Sie bisher verbraucht haben.
3. Methode „getConsumptionCredit“ der Klasse „Metered“ aufrufen.
4. Das bisher verbrauchte Guthaben wird zurückerstattet.

<script src="https://gist.github.com/groupdocs-comparison-gists/0d513af900199bea0cf9ee1a46a61912.js"></script>

