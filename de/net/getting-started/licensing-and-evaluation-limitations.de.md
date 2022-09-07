---
id: lizenzierungs-und-evaluierungsbeschränkungen
url: comparison/net/licensing-and-evaluation-limitations
title: "Lizenzierungs- und Bewertungsbeschränkungen"
weight: 5
description: "Befolgen Sie die Anweisungen auf dieser Website, um die Lizenz zu konfigurieren und die Einschränkungen bei der Verwendung von GroupDocs.Comparison für .NET ohne Lizenz herauszufinden (Evaluierungsbeschränkungen)."
keywords: "Lizenzierung, Evaluierungseinschränkungen, Festlegen einer gemessenen Lizenz, Festlegen einer Lizenz"
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
name: So stellen Sie die Lizenz in .NET ein
      description: "Erfahren Sie Schritt für Schritt, wie Sie die Lizenz in .NET einrichten"
Schritte:
- name: Erstellt ein Objekt
Text: Erstellen Sie ein Objekt der Lizenzklasse.
- Name: Lizenz festlegen
text: Rufen Sie die SetLicense-Methode Ihres Objekts auf und geben Sie den Lizenzpfad- oder Lizenzdatei-Stream-Parameter ein.
---
{{< alert style="info" >}}Sie können GroupDocs.Comparison ohne Lizenz verwenden. Die Verwendung und die Funktionen sind im Wesentlichen die gleichen wie bei der lizenzierten API, aber Sie werden bei der Verwendung der nicht lizenzierten API auf einige Einschränkungen stoßen.{{< /alert >}}

## Bewertungsbeschränkungen

Sie können ganz einfach **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** zur Evaluierung herunterladen. Der Evaluierungs-Download ist derselbe wie der gekaufte Download. Die Evaluierungsversion wird einfach lizenziert, wenn Sie einige Codezeilen hinzufügen, um die Lizenz anzuwenden. Bei der Verwendung der API ohne Lizenz gelten folgende Einschränkungen:

* Nur die ersten 3 Dokumentseiten mit einfacher Struktur werden verarbeitet.
* PDF-Dokumente sollten in keiner Sammlung mehr als vier Elemente enthalten.
* Testabzeichen werden im Dokument oben auf jeder Seite platziert.

## Lizenzierung

Die Lizenzdatei enthält Details wie den Produktnamen, die Anzahl der lizenzierten Entwickler, das Ablaufdatum des Abonnements und so weiter. Sie enthält die digitale Signatur, ändern Sie die Datei also nicht. Selbst das versehentliche Hinzufügen eines zusätzlichen Zeilenumbruchs in der Datei macht sie ungültig. Sie müssen eine Lizenz festlegen, bevor Sie die GroupDocs.Comparison-API verwenden, wenn Sie die Evaluierungseinschränkungen vermeiden möchten.
Die Lizenz kann aus einer Datei oder einem Stream-Objekt geladen werden. Der einfachste Weg, eine Lizenz festzulegen, besteht darin, die Lizenzdatei in denselben Ordner wie die Datei GroupDocs.Comparison.dll zu legen und den Dateinamen ohne Pfad anzugeben, wie in den folgenden Beispielen gezeigt.

#### Lizenz aus Datei setzen

Der folgende Code erklärt, wie die Produktlizenz festgelegt wird.

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
// Setup license.
License license = new License();
license.SetLicense(licensePath);
```

#### Lizenz von Stream einstellen

Das folgende Beispiel zeigt, wie eine Lizenz aus einem Stream geladen wird.

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
using (FileStream fileStream = File.OpenRead("GroupDocs.Comparison.lic"))
{
    License license = new License();
    license.SetLicense(fileStream);
}
```

{{< alert style="info" >}}Das mehrmalige Aufrufen von License.SetLicense ist nicht schädlich, sondern verschwendet nur Prozessorzeit. Wenn Sie eine Windows Forms- oder Konsolenanwendung entwickeln, rufen Sie License.SetLicense in Ihrem Startcode auf, bevor Sie GroupDocs.Comparison-Klassen verwenden. Beim Entwickeln einer ASP.NET-Anwendung können Sie License.SetLicense aus der Datei Global.asax.cs (Global.asax.vb) in der geschützten Methode Application_Start aufrufen. Sie wird einmal aufgerufen, wenn die Anwendung gestartet wird. Rufen Sie License.SetLicense nicht innerhalb von Page_Load-Methoden auf, da dies bedeutet, dass die Lizenz jedes Mal geladen wird, wenn eine Webseite geladen wird.{{< /alert >}}

#### Gemessene Lizenz einstellen

{{< alert style="info" >}}Sie können auch eine gemessene Lizenz als Alternative zur Lizenzdatei festlegen. Es handelt sich um einen neuen Lizenzierungsmechanismus, der zusammen mit der bestehenden Lizenzierungsmethode verwendet wird. Es ist nützlich für Kunden, die basierend auf der Nutzung der API-Funktionen abgerechnet werden möchten. Weitere Einzelheiten finden Sie im Abschnitt Häufig gestellte Fragen zur gebührenpflichtigen Lizenzierung.{{< /alert >}}

Hier sind die einfachen Schritte zur Verwendung der Klasse „Metered“.

1. Erstellen Sie eine Instanz der Klasse „Metered“.
2. Übergeben Sie öffentliche und private Schlüssel an die Methode "SetMeteredKey".
3. Verarbeitung durchführen (Aufgabe ausführen).
4. Methode „GetConsumptionQuantity“ der Klasse „Metered“ aufrufen.
5. Es wird die Menge/Menge der API-Anfragen zurückgeben, die Sie bisher verbraucht haben.
6. Methode „GetConsumptionCredit“ der Klasse „Metered“ aufrufen.
7. Das bisher verbrauchte Guthaben wird zurückerstattet.

Im Folgenden finden Sie den Beispielcode, der die Verwendung der Klasse „Metered“ demonstriert.

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
string publicKey = ""; // Your public license key
string privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.SetMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
decimal amountConsumed = GroupDocs.Comparison.Metered.GetConsumptionQuantity();
Console.WriteLine("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
decimal creditsConsumed = GroupDocs.Comparison.Metered.GetConsumptionCredit();
Console.WriteLine("Credits consumed: " + creditsConsumed);
```

