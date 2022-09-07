---
id: Anpassungsvergleichsempfindlichkeit
url: comparison/java/adjusting-comparison-sensitivity
title: "Anpassen der Vergleichsempfindlichkeit"
weight: 2
description: "Erfahren Sie mehr über die Sensitivität des Dokumentvergleichs und wie Sie sie anpassen können, um beim Vergleichen von Dokumenten mit GroupDocs.Comparison für Java die beste Leistung und Genauigkeit zu erzielen."
keywords: "Vergleichsempfindlichkeit, Detaillierungsgrad des Vergleichs, Vergleich von Dokumenten, Dateivergleich"
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
name: So stellen Sie die Vergleichsempfindlichkeit ein
        description: "Erfahren Sie, wie Sie die Vergleichsempfindlichkeit anpassen"
Schritte:
- name: Vergleichsoptionen konfigurieren
Text: Objekt der Klasse „CompareOptions“ erstellen
- Name: Empfindlichkeitsstufe einstellen
text: Verwenden Sie die Methode 'setSensitivityOfComparison()' des Objekts, um die Empfindlichkeit des Vergleichs festzulegen
- name: Verwenden Sie das Optionsobjekt, um Dokumente zu vergleichen
text: Optionen als zweites Argument der Methode '.compare()' übergeben
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** ermöglicht die Anpassung der Vergleichsempfindlichkeit, um das notwendige Gleichgewicht zwischen Dateivergleichsgeschwindigkeit und Genauigkeit zu erreichen. Mögliche Werte für die Vergleichsempfindlichkeit reichen von **0** bis **100**.

* **Mindestwert** - Der Mindestwert ist **0**. Das Festlegen der Empfindlichkeit auf einen minimalen Wert bietet die schnellste Vergleichsgeschwindigkeit, kann jedoch die schlechteste Vergleichsqualität erzeugen.
Wenn in zwei verglichenen Wörtern mindestens ein gemeinsamer Buchstabe vorhanden ist, werden diese Wörter nicht als vollständig eingefügt und gelöscht behandelt
* **Standardwert** - Der Standardwert ist **75**. Ein Vergleich findet statt, wenn der Prozentsatz gelöschter oder eingefügter Elemente im Verhältnis zu allen Elementen 75 % nicht überschreitet.
* **Maximalwert** - Der Maximalwert beträgt **100**. Der Vergleich erfolgt bei beliebiger Länge einer gemeinsamen Teilsequenz von zwei verglichenen Objekten. Diese Option bietet die beste Qualität, aber die langsamste Vergleichsgeschwindigkeit.

Um besser zu verstehen, wie Vergleichsalgorithmen funktionieren, nehmen wir an, wir haben zwei Strings:

| Saiten |
|--------------------------------|
| "1". `Es ist unsere Gerechtigkeitspoesie` |
| "2". `Jack ist ein frohes Kalb` |

Wir markieren entfernte Textteile mit <font color="red">**roter**</font> und eingefügte Teile mit <font color="blue">**blauer**</font> Farbe. Diese Zeichenfolgen haben also zwei gemeinsame Untersequenzen: „**ist**“-Wort und 4 Leerzeichen.

Eine übliche Untersequenz ist - " ** ist ** " und hat eine Länge von 6 Symbolen (es gibt 4 Leerzeichen darin).
Die Länge der eingefügten Teilsequenz beträgt 13 Symbole - **Jackagladcalf**
Die Länge der entfernten Teilsequenz beträgt 17 Symbole - **Itourequitypoetry**
Lassen Sie uns den Prozentsatz der entfernten und eingefügten Symbole berechnen: (17 + 13) / (17 + 13 + 6) * 100 = 83 %

*Fall 1.* Wenn **SensitivityOfComparison = 80%**, ergibt der Vergleich dieser beiden Strings das nächste Ergebnis:
**Jack ist ein frohes Kalb, es ist unsere Equity-Poesie**

Da der berechnete Prozentsatz der entfernten und eingefügten Symbole gleich **83 %** ist und größer als der Wert von **SensitivityOfComparison** gleich **80 %** ist, wird diese gemeinsame Teilsequenz nicht berücksichtigt.
Die erste Saite gilt als vollständig entfernt und die zweite Saite als vollständig eingefügt. Dieselben Ergebnisse werden für jeden berechneten Prozentsatz von weniger als **83 %** erzielt.

*Fall 2.* Wenn **SensitivityOfComparison = 85%**, führt der Vergleich dieser beiden Strings zum nächsten Ergebnis:
**JackIt ist unsere Gladequity Calfpoetry**

Gemeinsame Teilsequenz gefunden, weil **85% > 83%**. Dieselben Ergebnisse werden für jeden berechneten Prozentsatz größer als **83 %** erzielt.


Hier sind die Schritte zum Vergleichen von Dateien mit spezifischer Vergleichsempfindlichkeit:

* Objekt [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) mit Quelldateipfad oder -stream instanziieren;
* Rufen Sie die Methode [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) auf und geben Sie den Zieldateipfad oder -stream an.
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) mit dem gewünschten [setSensitivityOfComparison](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#getSensitivityOfComparison()) value;
* Rufen Sie die Methode [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) auf und Übergeben Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) an die Methode;
    



Das folgende Code-Snippet zeigt, wie Dateien mit spezifischer Empfindlichkeit verglichen werden:

## Vergleichen Sie Dateien mit Empfindlichkeitsanpassung

<script src="https://gist.github.com/groupdocs-comparison-gists/cd7ce7b32ec9210313ec1bc4ae772e2a.js"></script>

## Mehr Ressourcen

### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:

* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Dokumentenvergleich für ein modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)

* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)

* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    



### Kostenlose Online-App
Zusammen mit einer voll funktionsfähigen Java-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-Verwendung **[GroupDocs-Vergleichs-App](https://products.groupdocs.app/) vergleichen. Vergleich)**.

