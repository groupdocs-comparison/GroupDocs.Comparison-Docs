---
id: ocr-based-image-comparison
url: comparison/net/ocr-based-image-comparison
title: Comparing Scanned Images by Their Recognized Text in .NET - Integration Guide
weight: 4
description: "Integrate OCR-based image comparison with GroupDocs.Comparison for .NET 26.10. Compare scanned pages by recognized text instead of pixels, choose a display mode, select a recognition language, read change coordinates, and run offline."
keywords: ocr image comparison, compare scanned documents, OcrOptions, OcrDisplayMode, OcrLanguage, OcrChangeInfo, recognized text comparison, integration, quickstart, production, net ocr comparison, how to integrate
productName: GroupDocs.Comparison for .NET
structuredData:
    showOrganization: True
hideChildren: False
toc: True
draft: false
---

{{< alert style="info" >}} 💡For the **complete working code**, see the [full repository here](https://github.com/groupdocs-comparison/ocr-text-comparison-for-scanned-images-dotnet). {{< /alert >}}

## Overview

Comparing two scans of the same page is a problem pixel comparison handles
badly. Re-scanning shifts margins, drifts line spacing and crops a page
differently, so a pixel-level comparison marks nearly every line as changed and
the one edited word disappears into the noise. Teams working with signed
contracts, archived invoices or any paper-sourced document hit this constantly:
the comparison technically works, and its output is unusable.

GroupDocs.Comparison for .NET 26.10 adds OCR-based image comparison, which reads
the text out of both images first and compares the words. Misalignment stops
mattering, because a word that merely moved is still the same word. What comes
back is the list of real textual edits, each marked on both pages.

Integrating it is a single property on the options object you already pass. This
guide covers that switch, the two result layouts, language selection, reading
change coordinates, and running recognition where there is no network.

{{< alert style="success" >}}
Enabling recognition changes nothing for existing code. `OcrOptions.Enabled`
defaults to `false`, and supplying the options object without setting it leaves
the pixel comparison exactly as it was.
{{< /alert >}}

## Quickstart

Add the package. Version 26.10.0 or later is required - OCR comparison does not
exist before it.

```bash
dotnet add package GroupDocs.Comparison --version 26.10.0
```

There is no second package to install. The recognition engine, Aspose.OCR,
arrives as a transitive dependency.

```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;

using var comparer = new Comparer("documents/source.png");
comparer.Add("documents/target.png");

comparer.Compare("Result/compared.png", new CompareOptions
{
    Ocr = new OcrOptions { Enabled = true },
    GenerateSummaryPage = false,
});

Console.WriteLine($"Changes: {comparer.GetChanges().Length}");
```

Run it against two renderings of a page that differ by a few words. The result
image shows both pages side by side with the differing words boxed, and
`GetChanges()` returns one entry per textual edit rather than one per shifted
line.

## Prerequisites

- **GroupDocs.Comparison 26.10.0 or later**
- **.NET 8.0 or another .NET Core-era target.** Aspose.OCR supplies its native
  runtime for .NET Core and later only. On .NET Framework, asking for OCR throws
  `NotSupportedException` rather than failing somewhere inside the engine.
- **Outbound access on first run, for non-Latin scripts only.** The Latin model
  ships inside the package; every other language is fetched once and cached.

## How does OCR-based image comparison work?

Each image is passed through a recognition engine, which returns the text it
reads and the position of every line. Those two word sequences are then compared
the way two text documents would be. The result is a list of textual edits, each
carrying the words on both sides, the rectangles they occupy on their own page,
and the confidence of the recognition that produced them.

## Core Concepts

**Recognition replaces the pixel pass, it does not supplement it.** With
`Enabled` set, the images are not compared as images at all. Each is read, and
the recognized word sequences are compared. A change therefore describes text,
not a region of differing pixels.

**The display mode is about drawing, not detection.** `SideBySide` and `Text`
find the same edits from the same pair of images. They differ only in what the
result file looks like.

**A change knows where it came from.** Each change carries rectangles on the
source page and on the target page, plus the confidence of the recognition that
produced it - enough to draw the edit back onto the original scan.

## Integration Patterns

### Pattern 1: Side-by-side review for a human approver

The default. Both pages keep their original layout, each marked where it differs
from the other, so an approver sees the edit in context.

```csharp
var options = new CompareOptions
{
    Ocr = new OcrOptions
    {
        Enabled = true,
        DisplayMode = OcrDisplayMode.SideBySide,
    },
    GenerateSummaryPage = false,
};

comparer.Compare(outputPath, options);
```

Use it wherever a person makes the decision: contract review, invoice approval,
anything where "which clause changed" matters more than "what text changed".

### Pattern 2: Plain-text output for a compact record

```csharp
var options = new CompareOptions
{
    Ocr = new OcrOptions
    {
        Enabled = true,
        DisplayMode = OcrDisplayMode.Text,
    },
    GenerateSummaryPage = false,
};

comparer.Compare(outputPath, options);
```

`Text` renders the recognized words of both documents as a single stream with
deletions and insertions highlighted, reproducing none of the original fonts,
tables, columns or images. The result file is a fraction of the side-by-side
one - useful for an audit trail or an email digest, where storage and
readability matter more than fidelity.

Note the trade-off: because this mode reproduces nothing of the pages, the
coordinate arrays described in Pattern 3 come back empty.

### Pattern 3: Reading change positions for your own UI

When the application draws its own overlay, take the coordinates and ignore the
result image.

```csharp
comparer.Compare(outputPath, options);

foreach (ChangeInfo change in comparer.GetChanges())
{
    if (change is not OcrChangeInfo ocrChange)
    {
        continue;
    }

    Console.WriteLine($"{ocrChange.Type}: '{ocrChange.SourceText}'"
        + $" -> '{ocrChange.TargetText}'"
        + $" (confidence {ocrChange.Confidence:F2})");

    foreach (Rectangle box in ocrChange.TargetBoxes)
    {
        Highlight(box.X, box.Y, box.Width, box.Height);
    }
}
```

`GetChanges()` is typed as `ChangeInfo[]`, so reaching the OCR detail requires a
cast. `SourceBoxes` and `TargetBoxes` hold one rectangle per line of text, in
pixels of that side's own image, with float coordinates. `Confidence` runs from
0 to 1.

{{< alert style="warning" >}}
`Rectangle` here is `GroupDocs.Comparison.Result.Rectangle`. Adding
`using System.Drawing;` to the file makes the name ambiguous and the build
fails with CS0104.
{{< /alert >}}

## Configuration Reference

| Property | Type | Default | Notes |
|---|---|---|---|
| `Enabled` | `bool` | `false` | Switches from pixel comparison to recognized-text comparison |
| `DisplayMode` | `OcrDisplayMode` | `SideBySide` | `SideBySide` keeps both layouts; `Text` emits a plain word stream |
| `Language` | `OcrLanguage` | `Latin` | 154 values; only `Latin` ships inside the package |
| `DisableResourceDownloads` | `bool` | `false` | Fail instead of fetching a missing model. **Process-wide** |
| `ResourcesPath` | `string` | `null` | Folder models are read from and cached in. **Process-wide** |

The last two apply to the whole process rather than to one call, so set them
once during startup rather than per comparison.

## Choosing a recognition language

`Language` takes single alphabets (`Deu`, `Rus`, `Jpn`), script-wide models
(`Cyrillic`, `Chinese`, `Indic`, `PersoArabic`), and `Auto` for detection.
Naming the script the pages actually use reads their characters more accurately
than a general-purpose model does.

```csharp
var options = new CompareOptions
{
    Ocr = new OcrOptions
    {
        Enabled = true,
        Language = OcrLanguage.Cyrillic,
    },
    GenerateSummaryPage = false,
};
```

Anything other than `Latin` needs a model that is not in the package. It is
downloaded on first use and cached in `ResourcesPath`.

## Error Handling

Two failures are worth handling explicitly: an unavailable recognition model,
and a platform that cannot run recognition at all.

```csharp
try
{
    comparer.Compare(outputPath, options);
}
catch (NotSupportedException)
{
    // .NET Framework: Aspose.OCR ships no native runtime for it.
    logger.LogError("OCR comparison needs a .NET Core-era runtime.");
    throw;
}
catch (Exception ex) when (NamesAMissingModel(ex))
{
    // DisableResourceDownloads is set and the model is not on disk.
    logger.LogError("Recognition model for {Language} not available offline.",
        options.Ocr.Language);
    throw;
}
```

A missing model reports itself through the exception chain, so inspect
`InnerException` as well as the outer message when deciding whether a failure
is about the model or about the comparison.

## Production Readiness Checklist

- Target .NET 8.0 or later; confirm no .NET Framework target reaches this path
- Pin GroupDocs.Comparison to 26.10.0 or above in the project file
- Set `ResourcesPath` to a writable folder your deployment controls
- For air-gapped hosts, ship the models and set `DisableResourceDownloads`
- Decide the display mode per consumer: `SideBySide` for people, `Text` for logs
- Record `Confidence` alongside each change and flag low values for manual review
- Apply a licence; evaluation mode limits what can be processed

## Running without network access

A build agent or an air-gapped host should never attempt an unannounced
download. Setting `DisableResourceDownloads` turns a missing model into an
error rather than a fetch that hangs or is refused.

```csharp
var options = new CompareOptions
{
    Ocr = new OcrOptions
    {
        Enabled = true,
        Language = OcrLanguage.Latin,
        DisableResourceDownloads = true,
        ResourcesPath = "/opt/ocr-models",
    },
    GenerateSummaryPage = false,
};
```

Latin text works offline with no preparation, since that model is inside the
package. For any other script, copy the cached model folder from a machine that
has fetched it once, and point `ResourcesPath` at it.

## Frequently Asked Questions

**Does enabling OCR change how my existing comparisons behave?**
No. `Enabled` defaults to `false`, and passing an `OcrOptions` instance without
setting it leaves the pixel comparison untouched.

**Why are the coordinate arrays empty?**
`DisplayMode` is set to `Text`. That mode does not reproduce the pages the text
was read from, so there is nothing to report positions against. Switch to
`SideBySide` if coordinates are needed.

**Do I need to install Aspose.OCR separately?**
No. It is a transitive dependency of GroupDocs.Comparison.

**Can this run on .NET Framework?**
No. Aspose.OCR provides its native runtime for .NET Core and later only;
requesting OCR on .NET Framework throws `NotSupportedException`.

**Which image formats are accepted?**
The same raster formats the library already reads. See the supported formats
page linked below.

## Conclusion

OCR-based image comparison turns a comparison that technically worked but
produced unusable output into one that reports the handful of edits a reviewer
cares about. The integration is one property; the decisions worth making are
which display mode each consumer needs, which language model the documents
require, and whether recognition must run without reaching the network.

Start with `Enabled = true` and the defaults, confirm the change count matches
what you expect on a known pair of pages, then add language selection and
coordinate handling as the application needs them.

## See Also

- [Get list of changes](https://docs.groupdocs.com/comparison/net/get-list-of-changes/)
- [Get changes coordinates](https://docs.groupdocs.com/comparison/net/get-changes-coordinates/)
- [Supported document formats](https://docs.groupdocs.com/comparison/net/supported-document-formats/)
- [API reference](https://reference.groupdocs.com/comparison/net/)
- [GroupDocs.Comparison for .NET 26.10 release highlights](https://blog.groupdocs.com/comparison/groupdocs-comparison-for-net-26-10/)
- [Complete working example on GitHub](https://github.com/groupdocs-comparison/ocr-text-comparison-for-scanned-images-dotnet)
