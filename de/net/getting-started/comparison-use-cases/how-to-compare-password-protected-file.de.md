---
id: how-to-compare-password-protected-files
url: comparison/net/how-to-compare-password-protected-files
title: "So vergleichen Sie passwortgeschützte Dateien"
weight: 1
description: "Lesen Sie diesen Artikel und finden Sie heraus, wie Sie den GroupDocs.Comparison für .NET verwenden können, um Unterschiede in passwortgeschützten Dateien zu finden."
keywords: "So vergleichen Sie passwortgeschützte Dateien, passwortgeschützte Dateien, passwortgeschützt vergleichen"
Produktname: GroupDocs.Comparison für .NET
versteckenKinder: Falsch
---
Wenn Sie mit Dokumenten arbeiten, müssen Sie manchmal das Ergebnis eines Dateivergleichs erhalten, in dem eine oder sogar beide Dateien passwortgeschützt sind, und für genau diesen Fall gibt es eine Option zum Vergleichen von Dateien, obwohl sie geschützt sind. Mit dieser Option können Sie geschützte Dateien in jedem Format vergleichen, in dem es möglich ist, ein Passwort für die Datei festzulegen.

![](comparison/net/images/how-to-compare-password-protected-files-1.png)

Das Codebeispiel zum Vergleichen zweier passwortgeschützter Dateien:

```csharp
string sourcePath = @"source.format"; // NOTE: Path to the source document 
string targetPath = @"target.format"; // NOTE: Path to the target document 
string resultPath = @"result.format"; // NOTE: Path to the result document    


Options.LoadOptions loadOptionsSource = new Options.LoadOptions {Password = "passwordSource"}; // NOTE: options with password for the first file
Options.LoadOptions loadOptionsTarget = new Options.LoadOptions {Password = "passwordTarget"}; // NOTE: options with password for the second file
            

using (Comparer comparer = new Comparer(sourcePath, loadOptionsSource))
{
    comparer.Add(targetPath, loadOptionsTarget);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
}
```
Als Ergebnis erhalten wir die resultierende Vergleichsdatei zweier passwortgeschützter Dateien.

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

