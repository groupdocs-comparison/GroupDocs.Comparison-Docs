---
id: wie man autocad-zeichnungen vergleicht
url: comparison/net/how-to-compare-autocad-drawings
title: "So vergleichen Sie AutoCAD-Zeichnungen"
weight: 1
description: "Lesen Sie diesen Artikel und finden Sie heraus, wie Sie den GroupDocs.Comparison für .NET verwenden können, um Unterschiede in AutoCAD-Dateien und anderen Zeichnungen zu finden. Außerdem finden Sie in diesem Artikel eine Option, um dieses Produkt in Ihrer Produktion zu verwenden"
keywords: "So vergleichen Sie AutoCAD-Dateien, CAD-Dateien, Vergleichsanwendungsfall, AutoCAD-Dateien vergleichen"
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
name: So vergleichen Sie AutoCAD-Zeichnungen in .NET
    description: "So vergleichen Sie AutoCAD-Zeichnungen in .NET Schritt für Schritt"
Schritte:
- name: Objekt erstellen und Quelldatei laden
text: Erstellen Sie ein Objekt der Comparer-Klasse. Der Konstruktor übernimmt den Pfadparameter der Quelldatei. Sie können je nach Ihren Anforderungen einen absoluten oder relativen Dateipfad angeben.
- name: Zieldatei laden
text: Fügen Sie den Pfad zur Tagret-Datei mit der Add-Methode hinzu.
- Name: Zeichnungen vergleichen
text: Rufen Sie die Compare-Methode Ihres Objekts auf und fügen Sie den resultierenden Dateipfadparameter und das Optionsobjekt ein.
---
Es wird immer schwieriger, sich daran zu erinnern, was von einer Revision zur anderen geändert wurde, während sich Ihr Design weiterentwickelt, insbesondere wenn Sie in einem remote verteilten Team arbeiten. Die **DWG-Vergleichsfunktion** von AutoDesk bietet eine Möglichkeit, einen visuellen Vergleich zwischen zwei Zeichnungen durchzuführen – sie identifiziert Objekte, die geändert, hinzugefügt oder aus den beiden Zeichnungen entfernt wurden, und verwendet Farb- und Revisionswolken, um die Unterschiede anzuzeigen. Das Ergebnis wird in einer neuen Zeichnung namens *Vergleichszeichnung* angezeigt.

Drei Farben in der Vergleichszeichnung heben Gemeinsamkeiten und Unterschiede hervor. Sie können Farben angeben, um Folgendes zu identifizieren:

* Objekte, die nur in der ersten Zeichnung vorhanden sind – standardmäßig <font color="green">**grün**</font>
* Objekte, die nur in der zweiten Zeichnung existieren – standardmäßig <font color="red">**rot**</font>
* Objekte, die unverändert oder in beiden Zeichnungen gemeinsam sind – standardmäßig <font color="gray">**grau**</font>

Um Zeichnungen mit DWG Compare zu vergleichen, sollten Sie:

1. Führen Sie einen der folgenden Schritte aus, um das DWG-Vergleichsdienstprogramm zu starten:
1. Klicken Sie auf die Registerkarte **Zusammenarbeiten** > Gruppe **Vergleichen** > **DWG-Vergleich**.
2. Klicken Sie auf das Menü **Anwendung** > **Zeichenhilfsprogramme** > **DWG-Vergleich**.
2. Klicken Sie im Dialogfeld **DWG-Vergleich** auf **Durchsuchen**, um die erste Zeichnungsdatei auszuwählen.
3. Klicken Sie auf die Farbe, um die Standardfarbeinstellungen für die Objekte zu ändern, die nur in der ersten Zeichnung vorhanden sind.
4. Navigieren Sie zur zweiten Zeichnungsdatei, die Sie mit der ersten Zeichnung vergleichen möchten, und wählen Sie sie aus.
5. Klicken Sie auf die Farbe, um die Standardfarbeinstellungen für die Objekte zu ändern, die nur in der zweiten Zeichnung vorhanden sind.
6. Klicken Sie auf **Vergleichen**. Es öffnet sich eine neue Zeichnung, die die Vergleichsergebnisse enthält.

## So vergleichen Sie AutoCAD-Zeichnungen mit GroupDocs.Comparison

Trotz der Tatsache, dass die von AutoDesk bereitgestellte Zeichnungsvergleichsfunktion ziemlich praktisch und leistungsstark ist, bietet sie offensichtlich keine Möglichkeit, Zeichnungen programmatisch zu vergleichen und gefundene Unterschiede im Code zu manipulieren. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** bieten eine einfache und bequeme API, um Unterschiede zwischen Zeichnungen (und vielen anderen [unterstützten Dateiformaten] zu erkennen)({{< ref " Comparison/net/getting-started/supported-document-formats.md" >}})) und wenden Sie gefundene Änderungen auf das Ergebnisdokument an oder verwerfen Sie sie. Hier ist ein Beispiel für den Vergleich von DWG-Zeichnungen

| Quell-/Zielzeichnungen |
| --- |
|![](comparison/net/images/how-to-compare-autocad-drawings.png) |
|![](comparison/net/images/how-to-compare-autocad-drawings_1.png)|

Hier sind die Schritte zum Vergleichen von zwei DWG-Dateien:

* Objekt [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) mit Pfad oder Stream des Quelldokuments instanziieren;
* Rufen Sie die Methode [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) auf und geben Sie den Pfad oder Stream des Zieldokuments an;
* Rufen Sie die Methode [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) auf.

Das folgende Codebeispiel veranschaulicht einen oben beschriebenen Ansatz.

```csharp
using (Comparer comparer = new Comparer(@"source.dwg"))
{
    comparer.Add("target.dwg");
    comparer.Compare("result.dwg");
}
```

Als Ergebnis erhalten wir eine DWG-Datei, in der die gelöschten Elemente in <font color="red">**rot**</font> , die hinzugefügten in <font color="blue">**blau**</font> und die geänderten in <font color="green">**grün**</font> markiert sind.

![](comparison/net/images/how-to-compare-autocad-drawings_2.png)

## Mehr Ressourcen
### Erweiterte Nutzungsthemen
Weitere Informationen zu Dokumentvergleichsfunktionen finden Sie im [Abschnitt zur erweiterten Verwendung]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

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
Gerne können Sie Ihre DOC- oder DOCX-, XLS- oder XLSX-, PPT- oder PPTX-, PDF-, EML-, EMLX-, MSG- und andere Dokumente mit der kostenlosen Online-[GroupDocs-Vergleichs-App](https://products.groupdocs.app/comparison ).

