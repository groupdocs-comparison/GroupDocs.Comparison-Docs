---
id: Anpassungsvergleichsempfindlichkeit
url: comparison/net/adjusting-comparison-sensitivity
title: "Anpassen der Vergleichsempfindlichkeit"
weight: 2
description: "Erfahren Sie mehr über die Sensitivität des Dokumentvergleichs und wie Sie sie anpassen können, um beim Vergleichen von Dokumenten mit GroupDocs.Comparison für .NET die beste Leistung und Genauigkeit zu erzielen."
keywords: "Vergleichsempfindlichkeit, Detaillierungsgrad des Vergleichs, Vergleich von Dokumenten, Dateivergleich"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
strukturierteDaten:
showOrganization: Stimmt
Anwendung:
Name: Dokumentenvergleich
      description: "Vergleichen Sie Dokumente nativ mit hoher Leistung unter Verwendung der C#-Sprache und GroupDocs.Comparison für .NET"
Produktcode: Vergleich
Produktplattform: net
showVideo: Stimmt
wie man:
name: So passen Sie die Vergleichsempfindlichkeit in .NET an
      description: "Erfahren Sie Schritt für Schritt, wie Sie die Vergleichsempfindlichkeit in .NET anpassen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und geben Sie SensitivityOfComparison an.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) ermöglicht die Anpassung der Vergleichsempfindlichkeit, um das notwendige Gleichgewicht zwischen Geschwindigkeit und Genauigkeit des Dokumentvergleichs zu erreichen. Mögliche Werte für die Vergleichsempfindlichkeit reichen von **0** bis **100**.

* **Mindestwert** - Der Mindestwert ist **0**. Das Festlegen der Empfindlichkeit auf einen minimalen Wert bietet die schnellste Vergleichsgeschwindigkeit, kann jedoch die schlechteste Vergleichsqualität erzeugen.
Wenn in zwei verglichenen Wörtern mindestens ein gemeinsamer Buchstabe vorhanden ist, werden diese Wörter nicht als vollständig eingefügt und gelöscht behandelt
* **Standardwert** - Der Standardwert ist **75**. Ein Vergleich findet statt, wenn der Prozentsatz gelöschter oder eingefügter Elemente im Verhältnis zu allen Elementen 75 % nicht überschreitet.
* **Maximalwert** - Der Maximalwert beträgt **100**. Der Vergleich erfolgt bei beliebiger Länge einer gemeinsamen Teilsequenz von zwei verglichenen Objekten. Diese Option bietet die beste Qualität, aber die langsamste Vergleichsgeschwindigkeit.

Um besser zu verstehen, wie Vergleichsalgorithmen funktionieren, nehmen wir an, wir haben zwei Strings:

| Saiten |
| --- |
| „1“ Es ist unsere Billigkeit Poesie` |
| „2“ Jack ist ein frohes Kalb` |

Wir markieren entfernte Textteile mit <font color="red">**roter**</font> und eingefügte Teile mit <font color="blue">**blauer**</font> Farbe. Diese Zeichenfolgen haben also zwei gemeinsame Untersequenzen: „**ist**“-Wort und 4 Leerzeichen.
**
Eine übliche Untersequenz ist - " ** ist ** " und hat eine Länge von 6 Symbolen (es gibt 4 Leerzeichen darin).
Length of inserted sub-sequence is 13 symbols - **Jackagladcalf**
Removed sub-sequence length is 17 symbols - **Itourequitypoetry**
Lassen Sie uns den Prozentsatz der entfernten und eingefügten Symbole berechnen: (17 + 13) / (17 + 13 + 6) * 100 = 83 %

*Fall 1.* Wenn **SensitivityOfComparison = 80%**, ergibt der Vergleich dieser beiden Strings das nächste Ergebnis:
**Jack ist ein frohes Kalb, es ist unsere Equity-Poesie**

Da der berechnete Prozentsatz der entfernten und eingefügten Symbole gleich **83 %** ist und größer als der Wert von **SensitivityOfComparison** gleich **80 %** ist, wird diese gemeinsame Teilsequenz nicht berücksichtigt.
Die erste Saite gilt als vollständig entfernt und die zweite Saite als vollständig eingefügt. Dieselben Ergebnisse werden für jeden berechneten Prozentsatz von weniger als **83 %** erzielt.

*Fall 2.* Wenn **SensitivityOfComparison = 85%**, führt der Vergleich dieser beiden Strings zum nächsten Ergebnis:
**JackIt ist unsere Gladequity Calfpoetry**

Gemeinsame Teilsequenz gefunden, weil **85% > 83%**. Dieselben Ergebnisse werden für jeden berechneten Prozentsatz größer als **83 %** erzielt.

  

Hier sind die Schritte zum Vergleichen von Dokumenten mit spezifischer Vergleichsempfindlichkeit:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) mit dem gewünschten [SensitivityOfComparison](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/compareoptions/properties/sensitivityofcomparison) Wert;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1) auf und übergeben Sie [CompareOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/compareoptions) Objekt zu Methode.

Das folgende Code-Snippet zeigt, wie Dokumente mit spezifischer Vertraulichkeit verglichen werden:

## Vergleichen Sie Dokumente mit Empfindlichkeitsanpassung

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions options = new CompareOptions() { SensitivityOfComparison = 100 };
	comparer.Compare("result.docx", options);
}
```

## Mehr Ressourcen

### GitHub-Beispiele
Sie können den obigen Code einfach ausführen und die Funktion in unseren GitHub-Beispielen in Aktion sehen:
* [GroupDocs.Comparison für .NET-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison für Java-Beispiele, Plugins und Showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Dokumentenvergleich für .NET MVC-UI-Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Dokumentenvergleich für .NET App WebForms UI Modern Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Dokumentenvergleich für ein modernes Beispiel für Java App Dropwizard UI](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Dokumentenvergleich für Java Spring UI Beispiel](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    


### Kostenlose Online-App
Zusammen mit der voll ausgestatteten .NET-Bibliothek bieten wir einfache, aber leistungsstarke kostenlose Apps.

You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
