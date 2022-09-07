---
id: migration-notes
url: comparison/java/migration-notes
title: "Migrationshinweise"
weight: 3
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Vergleich für Java
versteckenKinder: Falsch
---
## Warum migrieren?

Hier sind die Hauptgründe für die Verwendung der neuen aktualisierten API, die von **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** seit Version 20.4 bereitgestellt wird:

* Die Klasse **Comparer** wurde als **einziger Einstiegspunkt** eingeführt, um Dokumente aller unterstützten Dateiformate mit verschiedenen Optionen und der Möglichkeit, festgestellte Unterschiede im resultierenden Dokument zu akzeptieren/abzulehnen, zu vergleichen.
* Dokument **Vergleichsoptionen** für alle Dokumenttypen. Anstatt dokumentbezogene Optionen zu verwenden, beziehen sich die Optionen jetzt nur auf den Vergleichstyp.
* Die gesamten dokumentbezogenen Klassen wurden zu Common vereinheitlicht.
* Die Produktarchitektur wurde von Grund auf neu gestaltet, um das Übergeben von Optionen und Klassen zu vereinfachen, um den Vergleich zu manipulieren.
* Verfahren zur Erstellung von Dokumentinformationen und Vorschauen wurden vereinfacht.
    


## Wie wird migriert?

Hier ist ein kurzer Vergleich, wie man Dokumente mit alter und neuer API vergleicht.

**Alter Codierungsstil**

<script src="https://gist.github.com/groupdocs-comparison-gists/e2edd2208e2c0cec2a3807160d850c0e.js"></script>

**Neuer Codierungsstil**

<script src="https://gist.github.com/groupdocs-comparison-gists/2d026c76b30856c2e86c0a27df28b236.js"></script>
