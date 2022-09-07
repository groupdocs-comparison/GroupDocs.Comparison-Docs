---
id: groupdocs-comparison-for-net-19-6-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-6-release-notes
title: "GroupDocs.Comparison für .NET 19.6 Versionshinweise"
weight: 6
description: ""
Schlüsselwörter:
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
{{< alert style="info" >}}Diese Seite enthält Versionshinweise für GroupDocs.Comparison für .NET 19.6{{< /alert >}}

## Hauptmerkmale

Unten ist die Liste der bemerkenswertesten Änderungen in der Version von GroupDocs.Comparison für .NET 19.6:

* Problem behoben, wenn Abschnitte auf die neue Seite verschoben wurden
* Tippfehler in der API-Referenz behoben
* Implementierte Empfindlichkeitsoption
* Berechnungskoordinaten von Änderungen für Word-Dokumente implementiert
* Überlappende Inhalte in resultierenden PDF-Dokumenten behoben
* Problem behoben, wenn Abschnitte auf die neue Seite verschoben wurden
* Integriertes kreditbasiertes Abrechnungssystem mit der neuesten Version von Metered

## Vollständige Liste der Probleme, die alle Änderungen in dieser Version abdecken

| Schlüssel | Zusammenfassung | Problemtyp |
| --- | --- | --- |
| VERGLEICHNETZ-1846 | Berechnen Sie die korrekten Koordinaten der Änderungen für Wörter | Verbesserung |
| VERGLEICHNETZ-1929 | Implementieren Sie die Empfindlichkeitsoption | Verbesserung |
| VERGLEICHNETZ-1901 | Neueste Version von Dynabic.Metered in Produkte integrieren | Verbesserung |
| VERGLEICHNETZ-1815 | Kommentare ignorieren (hauptsächlich für Codedateien) | Verbesserung |
| VERGLEICHNETZ-1816 | Leerzeichen ignorieren - Alle, Führende, Nachfolgende, Betragsänderungen | Verbesserung |
| VERGLEICHNETZ-1813 | Groß-/Kleinschreibung ignorieren - Unterschiede zwischen Groß- und Kleinschreibung ignorieren | Verbesserung |
| VERGLEICHNETZ-1927 | Zusammengeführtes Dokument und dann Dokumentvergleich fehlgeschlagen | Fehler |
| VERGLEICHNETZ-1891 | Text wurde mit anderem Text oder Bildern überlappt | Fehler |
| VERGLEICHNETZ-1930 | Doppelte Bilder in Ergebnisdatei in PDF | Fehler |
| VERGLEICHNETZ-1772 | PDF-Vergleich hat überlappende und verstümmelte Ausgabe | Fehler |

## Öffentliche API und rückwärtsinkompatible Änderungen

{{< alert style="info" >}}Dieser Abschnitt listet öffentliche API-Änderungen auf, die in GroupDocs.Comparison für .NET 19.6 eingeführt wurden. Es enthält nicht nur neue und veraltete öffentliche Methoden, sondern auch eine Beschreibung aller Änderungen im Verhalten hinter den Kulissen in GroupDocs.Comparison, die sich auf bestehenden Code auswirken können. Jedes eingeführte Verhalten, das als Rückschritt angesehen werden könnte und bestehendes Verhalten modifiziert, ist besonders wichtig und wird hier dokumentiert.{{< /alert >}}

1. ### **Vergleichsdetailebene einstellen**
    












1. Wenn wir *DetailLevel = Middle* festlegen, fügen wir in einigen Dokumentformaten (Wörter, Folien, Zellen) keinen Kommentar hinzu, wenn das Element hinzugefügt\\gelöscht\\geändert wurde
        


















          




















        


















2. Wenn wir *DetailLevel = Middle* setzen, machen wir keinen Vergleich ohne Berücksichtigung der Groß-/Kleinschreibung. dh M = m.
        


















          




















        


















3. Wurde Empfindlichkeitseigenschaft hinzugefügt. Diese Option definiert das Limit in Prozent, wenn ein Element als gelöscht oder eingefügt erkannt wird.
        


















    












Minimalwert - 0, Vergleichsprozess findet nicht für Sequenzen von zwei verglichenen Objekten beliebiger Länge statt.
    












Standardwert – 75 Vergleich findet statt, wenn der Prozentsatz gelöschter oder eingefügter Elemente im Verhältnis zu allen Elementen 75 % nicht überschreitet
    












Maximalwert - 100. Der Vergleich erfolgt bei beliebiger Länge einer gemeinsamen Unterfolge von zwei verglichenen Objekten.
    












**Zum Beispiel haben wir zwei Wörter**
    












```scharf
1)eineQuelle
     













2)zweiZiel
```
    












Diese beiden Wörter haben eine sehr kleine gemeinsame Teilsequenz. Daher wird dies beim Vergleich mit einer Genauigkeit von 70 % nicht berücksichtigt und wir erhalten ein vollständig entferntes und eingefügtes Wort:
    












```scharf
(zweiZiele)[eineQuelle]
```
    












Aber bei 100% Genauigkeit berücksichtigen wir diese Teilfolge, obwohl sie aus zwei Buchstaben besteht
    












```scharf
(tw)o[n](Ziel)e[Quelle](t)
```
    












Code-Auszug:
    












```scharf
string source = "source.txt";
string target = "target.txt";
Vergleichseinstellungen-Einstellungen = neue Vergleichseinstellungen ();
settings.SensitivityOfComparison = 100;
Vergleicher vergleichen = neuer Vergleicher ();
ICompareResult Ergebnis = Compare.Compare (Quelle, Ziel, Einstellungen);
```

