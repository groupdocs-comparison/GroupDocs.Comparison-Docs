---
Kennung: Installation
url: comparison/java/installation
title: "Installation"
weight: 4
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
Name: So installieren Sie die Vergleichs-API
        description: "Erfahren Sie, wie Sie GroupDocs.Comparison in einem Java- oder Kotlin-Projekt installieren"
Schritte:
- name: Geben Sie das GroupDocs-Repository an
text: GroupDocs Maven-Repository zum Projekt hinzufügen
- name: Vergleichsabhängigkeit definieren
text: Vergleichsabhängigkeit hinzufügen, damit das Projekt die erforderlichen Bibliotheken herunterlädt
---
### Betriebssysteme

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** kann auf jedem Betriebssystem mit installiertem Java JDK ausgeführt werden.

* Windows-Desktops und -Server
* Linux
* Mac OS

### Unterstützte Laufzeit

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** unterstützt die Java-Laufzeitversion 8 und höher (Kotlin wird ebenfalls unterstützt).
(_Java 7 ist **VERALTET** (Seit der nächsten Version wird Java 7 nicht mehr unterstützt)_)

### Entwicklungsumgebungen

* NetBeans
* IntelliJ-IDEE
* Sonnenfinsternis

## Installation aus dem GroupDocs-Repository mit Maven

GroupDocs hostet alle Java-APIs im [GroupDocs-Repository] (https://releases.groupdocs.com/java/repo/). Sie können die [GroupDocs.Comparison for Java](https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-comparison/) API einfach direkt in Ihren Maven-Projekten verwenden mit einfachen Konfigurationen.

### GroupDocs-Repository angeben

Zuerst müssen Sie die Konfiguration/den Speicherort des GroupDocs-Repositorys in Ihrer Maven-`pom.xml` wie folgt angeben:

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

### Vergleichsabhängigkeit definieren

Definieren Sie dann **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** API-Abhängigkeit in Ihrer `pom.xml` wie folgt:

_Die neueste Version der Vergleichs-API finden Sie [hier](https://repository.groupdocs.com/comparison/)_

<details open><summary>GroupDocs.Comparison-Abhängigkeit hinzufügen</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f4d8f0b56d1dfa24dea18c68cd9d8001.js"></script>

</details>
<details><summary>Gradl</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b760d58061daa45d9b211e2701aa52b5.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

</details>
</blockquote></details>

Nachdem Sie die oben genannten Schritte ausgeführt haben, wird GroupDocs.Comparison for Java-Abhängigkeit schließlich zu Ihrem Maven-Projekt hinzugefügt.

