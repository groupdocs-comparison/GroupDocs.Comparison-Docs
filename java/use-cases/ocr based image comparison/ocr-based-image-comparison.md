---
id: ocr-based-image-comparison
url: comparison/java/ocr-based-image-comparison
title: Comparing Scanned Images by Their Recognized Text in Java - Integration Guide
weight: 4
description: "Integrate OCR-based image comparison with GroupDocs.Comparison for Java 26.11. Compare scanned pages by recognized text instead of pixels, choose a display mode, select a recognition language, read change coordinates, and run offline."
keywords: ocr image comparison, compare scanned documents, OcrOptions, OcrDisplayMode, OcrLanguage, OcrChangeInfo, recognized text comparison, integration, quickstart, production, java ocr comparison, how to integrate
productName: GroupDocs.Comparison for Java
structuredData:
    showOrganization: True
hideChildren: False
toc: True
draft: false
---

## Overview

Comparing two scans of the same page is a problem pixel comparison handles
badly. Re-scanning shifts margins, drifts line spacing and crops a page
differently, so a pixel-level comparison marks nearly every line as changed and
the one edited word disappears into the noise. Teams working with signed
contracts, archived invoices or any paper-sourced document hit this constantly:
the comparison technically works, and its output is unusable.

GroupDocs.Comparison for Java 26.11 adds OCR-based image comparison, which reads
the text out of both images first and compares the words. Misalignment stops
mattering, because a word that merely moved is still the same word. What comes
back is the list of real textual edits, each marked on both pages.

Integrating it is a single setting on the options object you already pass. This
guide covers that switch, the two result layouts, language selection, reading
change coordinates, and running recognition where there is no network.

{{< alert style="success" >}}
Enabling recognition changes nothing for existing code. `OcrOptions.isEnabled()`
returns `false` by default, and supplying the options object without enabling it
leaves the pixel comparison exactly as it was.
{{< /alert >}}

## Quickstart

Add the dependency. Version 26.11 or later is required - OCR comparison does not
exist before it. See [Installation]({{< ref "comparison/java/getting-started/installation.md" >}})
for the GroupDocs Maven repository settings.

```xml
<dependency>
    <groupId>com.groupdocs</groupId>
    <artifactId>groupdocs-comparison</artifactId>
    <version>26.11</version>
</dependency>
```

There is no second dependency to declare. The recognition engine, Aspose.OCR for
Java (`com.aspose:aspose-ocr`), arrives as a transitive dependency.

```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.options.OcrOptions;
// ...

try (Comparer comparer = new Comparer("documents/source.png")) {
    comparer.add("documents/target.png");

    OcrOptions ocr = new OcrOptions();
    ocr.setEnabled(true);

    CompareOptions options = new CompareOptions();
    options.setOcr(ocr);
    options.setGenerateSummaryPage(false);

    comparer.compare("result/compared.png", options);

    System.out.println("Changes: " + comparer.getChanges().length);
}
```

Run it against two renderings of a page that differ by a few words. The result
image shows both pages side by side with the differing words boxed, and
`getChanges()` returns one entry per textual edit rather than one per shifted
line.

## Prerequisites

- **GroupDocs.Comparison for Java 26.11 or later**
- **Java 8 or later**
- **Aspose.OCR for Java on the classpath.** Maven and Gradle add it for you as a
  transitive dependency. It brings ONNX Runtime with native libraries.
- **Outbound access on first run, for non-Latin scripts only.** The Latin model
  ships with the engine; every other language is fetched once and cached.

{{< alert style="info" >}}
If you never use OCR comparison, you can exclude `com.aspose:aspose-ocr` from the
GroupDocs.Comparison dependency - every other comparison works without it. With
the library excluded, enabling `OcrOptions` fails with a `ComparisonException`
whose message names the missing dependency.
{{< /alert >}}

## How does OCR-based image comparison work?

Each image is passed through a recognition engine, which returns the text it
reads and the position of every line. Those two word sequences are then compared
the way two text documents would be. The result is a list of textual edits, each
carrying the words on both sides, the rectangles they occupy on their own page,
and the confidence of the recognition that produced them.

## Core Concepts

**Recognition replaces the pixel pass, it does not supplement it.** With
OCR enabled, the images are not compared as images at all. Each is read, and
the recognized word sequences are compared. A change therefore describes text,
not a region of differing pixels.

**The display mode is about drawing, not detection.** `SIDE_BY_SIDE` and `TEXT`
are two layouts of the result file. `SIDE_BY_SIDE` keeps the pages; `TEXT` lays out
the recognized words alone.

**A change knows where it came from.** In `SIDE_BY_SIDE` mode each change carries
rectangles on the source page and on the target page, plus the confidence of the
recognition that produced it - enough to draw the edit back onto the original scan.

## Integration Patterns

### Pattern 1: Side-by-side review for a human approver

The default. Both pages keep their original layout, each marked where it differs
from the other, so an approver sees the edit in context.

```java
import com.groupdocs.comparison.options.OcrDisplayMode;
// ...

OcrOptions ocr = new OcrOptions();
ocr.setEnabled(true);
ocr.setDisplayMode(OcrDisplayMode.SIDE_BY_SIDE);

CompareOptions options = new CompareOptions();
options.setOcr(ocr);
options.setGenerateSummaryPage(false);

comparer.compare(outputPath, options);
```

Use it wherever a person makes the decision: contract review, invoice approval,
anything where "which clause changed" matters more than "what text changed".

### Pattern 2: Plain-text output for a compact record

```java
OcrOptions ocr = new OcrOptions();
ocr.setEnabled(true);
ocr.setDisplayMode(OcrDisplayMode.TEXT);

CompareOptions options = new CompareOptions();
options.setOcr(ocr);
options.setGenerateSummaryPage(false);

comparer.compare(outputPath, options);
```

`TEXT` renders the recognized words of both documents as a single stream with
deletions and insertions highlighted, reproducing none of the original fonts,
tables, columns or images. The result file is a fraction of the side-by-side
one - useful for an audit trail or an email digest, where storage and
readability matter more than fidelity.

Note the trade-off: because this mode reproduces nothing of the pages, the
coordinate arrays described in Pattern 3 come back empty and the confidence of
every change is `0`.

### Pattern 3: Reading change positions for your own UI

When the application draws its own overlay, take the coordinates and ignore the
result image.

```java
import com.groupdocs.comparison.result.ChangeInfo;
import com.groupdocs.comparison.result.OcrChangeInfo;
import com.groupdocs.comparison.result.Rectangle;
// ...

comparer.compare(outputPath, options);

for (ChangeInfo change : comparer.getChanges()) {
    if (!(change instanceof OcrChangeInfo)) {
        continue;
    }
    OcrChangeInfo ocrChange = (OcrChangeInfo) change;

    System.out.printf("%s: '%s' -> '%s' (confidence %.2f)%n",
            ocrChange.getType(), ocrChange.getSourceText(), ocrChange.getTargetText(),
            ocrChange.getConfidence());

    for (Rectangle box : ocrChange.getTargetBoxes()) {
        highlight(box.getX(), box.getY(), box.getWidth(), box.getHeight());
    }
}
```

`getChanges()` is typed as `ChangeInfo[]`, so reaching the OCR detail requires a
cast. `getSourceBoxes()` and `getTargetBoxes()` hold one rectangle per line of
text, in pixels of that side's own image, with `double` coordinates. For an
insertion the source side is empty, for a deletion the target side.
`getConfidence()` runs from 0 to 1.

{{< alert style="warning" >}}
`Rectangle` here is `com.groupdocs.comparison.result.Rectangle`. Importing
`java.awt.*` in the same file makes the name ambiguous with `java.awt.Rectangle`
and the build fails - import the GroupDocs class explicitly.
{{< /alert >}}

## Configuration Reference

| Method | Type | Default | Notes |
|---|---|---|---|
| `setEnabled` | `boolean` | `false` | Switches from pixel comparison to recognized-text comparison |
| `setDisplayMode` | `OcrDisplayMode` | `SIDE_BY_SIDE` | `SIDE_BY_SIDE` keeps both layouts; `TEXT` emits a plain word stream |
| `setLanguage` | `OcrLanguage` | `LATIN` | 154 values; only `LATIN` ships with the engine |
| `setDisableResourceDownloads` | `boolean` | `false` | Fail instead of fetching a missing model. **JVM-wide** |
| `setResourcesPath` | `String` | `null` | Folder models are read from and cached in. **JVM-wide** |

The last two configure Aspose.OCR for the whole JVM rather than for one call: each
OCR comparison applies them to the engine's global settings, and they stay in force
for the comparisons that follow. Use the same values for every comparison in the
process, for example by building `OcrOptions` in one place.

## Choosing a recognition language

`setLanguage()` takes single alphabets (`DEU`, `RUS`, `JPN`), script-wide models
(`CYRILLIC`, `CHINESE`, `INDIC`, `PERSO_ARABIC`), and `AUTO` for detection.
Naming the script the pages actually use reads their characters more accurately
than a general-purpose model does.

```java
import com.groupdocs.comparison.options.OcrLanguage;
// ...

OcrOptions ocr = new OcrOptions();
ocr.setEnabled(true);
ocr.setLanguage(OcrLanguage.CYRILLIC);

CompareOptions options = new CompareOptions();
options.setOcr(ocr);
options.setGenerateSummaryPage(false);
```

Anything other than `LATIN` needs a model that is not shipped with the engine. It is
downloaded on first use and cached in the resources path.

## Error Handling

Two failures are worth handling explicitly: a recognition model that is not available,
and Aspose.OCR missing from the classpath. Both surface from `compare()` as a
`ComparisonException`.

```java
import com.groupdocs.comparison.common.exceptions.ComparisonException;
// ...

try {
    comparer.compare(outputPath, options);
} catch (ComparisonException ex) {
    if (namesAMissingModel(ex)) {
        // setDisableResourceDownloads(true) is set and the model is not on disk.
        logger.error("Recognition model for {} is not available offline.", ocr.getLanguage());
    }
    throw ex;
}

// ...

private static boolean namesAMissingModel(Throwable ex) {
    for (Throwable t = ex; t != null; t = t.getCause()) {
        if (t.getMessage() != null && t.getMessage().contains("Please install the")) {
            return true;
        }
    }
    return false;
}
```

A missing model reports itself through the exception chain - the innermost cause is
the engine's own `AsposeOCRException`, and its message names the model file, for
example `aspose-ocr-cyrillic-v1.ocr`. Inspect the causes as well as the outer message
when deciding whether a failure is about the model or about the comparison.

## Production Readiness Checklist

- Pin GroupDocs.Comparison for Java to 26.11 or above in the build file
- Keep `com.aspose:aspose-ocr` on the runtime classpath of every service that enables OCR
- Set the resources path to a writable folder your deployment controls
- For air-gapped hosts, ship the models and call `setDisableResourceDownloads(true)`
- Decide the display mode per consumer: `SIDE_BY_SIDE` for people, `TEXT` for logs
- Record the confidence alongside each change and flag low values for manual review
- Apply a license; evaluation mode limits what can be processed

## Running without network access

A build agent or an air-gapped host should never attempt an unannounced
download. `setDisableResourceDownloads(true)` turns a missing model into an
error rather than a fetch that hangs or is refused.

```java
OcrOptions ocr = new OcrOptions();
ocr.setEnabled(true);
ocr.setLanguage(OcrLanguage.LATIN);
ocr.setDisableResourceDownloads(true);
ocr.setResourcesPath("/opt/ocr-models");

CompareOptions options = new CompareOptions();
options.setOcr(ocr);
options.setGenerateSummaryPage(false);
```

Latin text works offline with no preparation, since that model ships with the
engine. For any other script, copy the cached model folder from a machine that
has fetched it once, and point the resources path at it.

## Frequently Asked Questions

**Does enabling OCR change how my existing comparisons behave?**
No. OCR is disabled by default, and passing an `OcrOptions` instance without
enabling it leaves the pixel comparison untouched.

**Why are the coordinate arrays empty?**
The display mode is `TEXT`. That mode does not reproduce the pages the text
was read from, so there is nothing to report positions against. Switch to
`SIDE_BY_SIDE` if coordinates are needed.

**Do I need to add Aspose.OCR separately?**
No. It is a transitive dependency of GroupDocs.Comparison for Java. You only need to
think about it if you exclude it, or if you deploy the jar without its dependencies.

**Which image formats are accepted?**
The same raster formats the library already reads. See the supported formats
page linked below.

## Conclusion

OCR-based image comparison turns a comparison that technically worked but
produced unusable output into one that reports the handful of edits a reviewer
cares about. The integration is one setting; the decisions worth making are
which display mode each consumer needs, which language model the documents
require, and whether recognition must run without reaching the network.

Start with `setEnabled(true)` and the defaults, confirm the change count matches
what you expect on a known pair of pages, then add language selection and
coordinate handling as the application needs them.

## See Also

- [Get list of changes]({{< ref "comparison/java/advanced-usage/comparison/get-list-of-changes.md" >}})
- [Get changes coordinates]({{< ref "comparison/java/advanced-usage/comparison/get-changes-coordinates.md" >}})
- [Supported document formats]({{< ref "comparison/java/getting-started/supported-document-formats.md" >}})
- [API reference](https://reference.groupdocs.com/comparison/java/)
