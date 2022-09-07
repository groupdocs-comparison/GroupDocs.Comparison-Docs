---
id: Customize-Changes-Styles
url: comparison/net/customize-changes-styles
title: "Passen Sie die Änderungsstile an"
weight: 4
description: "Im Anschluss an diese Anleitung erfahren Sie, wie Sie den Dokumentvergleichsbericht anpassen und das Erscheinungsbild erkannter Änderungen ändern, wenn Sie GroupDocs.Comparison für .NET verwenden."
keywords: "Stiländerungserkennung, Dokumentstile vergleichen, Dokumentvergleich"
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
name: So passen Sie Änderungsstile in .NET an
      description: "Erfahren Sie Schritt für Schritt, wie Sie Änderungsstile in .NET anpassen"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu
- Name: Geben Sie die erforderlichen Einstellungen an
text: Erstellen Sie ein Optionsobjekt und initialisieren Sie die Parameter InsertedItemStyle, DeletedItemStyle, ChangedItemStyle objektweise mit den erforderlichen Parametern.
- Name: Dokumente vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) bietet Vergleichsoptionen mit einigen Standardwerten, die beides bieten – angemessene Vergleichsgeschwindigkeit und -qualität. Es ist jedoch möglich, Vergleichsoptionen aus einer Vielzahl von Parametern und deren Werten anzupassen, um bestimmte Anforderungen zu erfüllen. Das folgende Beispiel zeigt, wie verschiedene Änderungstypen geändert werden.

Im Folgenden sind die Schritte zum Vergleichen zweier Dokumente mit benutzerdefinierten Änderungsstileinstellungen aufgeführt:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Instanziieren Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) mit den gewünschten Parametern;
* Rufen Sie die Methode Compare auf und übergeben Sie das Objekt [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) an die Methode.

Das folgende Code-Snippet zeigt, wie Dokumente mit bestimmten Optionen verglichen werden.

## Vergleichen Sie Dokumente von der lokalen Festplatte mit benutzerdefinierten Änderungsstilen

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	CompareOptions compareOptions = new CompareOptions()
	{
    	InsertedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		DeletedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		ChangedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        }
	};
comparer.Compare("result.docx", compareOptions);
}
```

## Vergleichen Sie Dokumente aus dem Stream mit benutzerdefinierten Änderungsstilen

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	CompareOptions compareOptions = new CompareOptions()
	{
    	InsertedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		DeletedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		ChangedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        }
	};
comparer.Compare(File.Create("result.docx"), compareOptions);
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
