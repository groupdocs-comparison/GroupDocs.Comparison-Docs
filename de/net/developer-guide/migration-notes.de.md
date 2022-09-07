---
id: migration-notes
url: comparison/net/migration-notes
title: "Migrationshinweise"
weight: 3
description: ""
Schlüsselwörter:
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
Name: Hinweise zur Comparer-Migration in .NET
    description: "Comparer Migrationshinweise in .NET Schritt für Schritt"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und geben Sie den resultierenden Dateipfadparameter ein.
---
### Warum migrieren?

  

Hier sind die Hauptgründe für die Verwendung der neuen aktualisierten API, die von GroupDocs.Comparison für .NET seit Version 19.9 bereitgestellt wird:

* Die Klasse **Comparer** wurde als **einziger Einstiegspunkt** eingeführt, um Dokumente aller unterstützten Dateiformate mit verschiedenen Optionen und der Möglichkeit, festgestellte Unterschiede im resultierenden Dokument zu akzeptieren/abzulehnen, zu vergleichen.
* Dokument **Vergleichsoptionen** für alle Dokumenttypen. Anstatt dokumentbezogene Optionen zu verwenden, beziehen sich die Optionen jetzt nur auf den Vergleichstyp.
* Die gesamten dokumentbezogenen Klassen wurden zu Common vereinheitlicht.
* Die Produktarchitektur wurde von Grund auf neu gestaltet, um das Übergeben von Optionen und Klassen zu vereinfachen, um den Vergleich zu manipulieren.
* Verfahren zur Erstellung von Dokumentinformationen und Vorschauen wurden vereinfacht.

      



    



### Wie wird migriert?

Hier ist ein kurzer Vergleich, wie man Dokumente mit alter und neuer API vergleicht.


**Alter Codierungsstil**

```csharp
Comparer comparer = new Comparer();
ComparisonSettings settings = new ComparisonSettings() 
{ 
	StyleChangeDetection = true
};
ICompareResult result = comparer.Compare("source.docx", @"target.docx", settings);
result.SaveDocument("result.docx");
```

**Neuer Codierungsstil**

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions()
    {
        DetectStyleChanges = true
    };
	comparer.Compare("result.docx", compareOptions);
}
```

