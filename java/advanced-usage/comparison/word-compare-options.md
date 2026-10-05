---
id: word-compare-options
url: comparison/java/word-compare-options
title: Word document comparison options
weight: 13
description: "This article describes the WordCompareOptions class in GroupDocs.Comparison for Java — display modes (Revisions and Highlight), style change detection, header/footer comparison, and other Word-specific settings."
keywords: WordCompareOptions, DisplayMode, Revisions, Highlight, Word comparison, DetectStyleChanges, HeaderFootersComparison, MarkLineBreaks
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to configure Word document comparison in Java
    description: Learn how to configure WordCompareOptions to control how Word document comparison results are produced
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the add method.
      - name: Specify necessary settings
        text: Create a WordCompareOptions object and set properties such as DisplayMode, DetectStyleChanges, or HeaderFootersComparison.
      - name: Compare documents
        text: Call the compare method of your object and pass the resulting file path and the WordCompareOptions object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) provides the [WordCompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) class for configuring comparison of Word documents (`.doc`, `.docx`, `.rtf`, and other word-processing formats). It extends [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) and adds Word-specific properties — most notably the `DisplayMode` property, which controls how detected changes are written into the result document.

## Display modes

The [setDisplayMode()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) method accepts one of two values from the `WordCompareOptions.ComparisonDisplayMode` enumeration:

- **REVISIONS** (default) — changes are emitted as native Word revision (track-changes) markup. The result opens in Microsoft Word with the **Review → Accept / Reject** controls ready.
- **HIGHLIGHT** — inserted, deleted, and modified text is rendered with inline colour highlights directly in the document body. No track-changes metadata is added.

{{< alert style="info" >}}
A plain `CompareOptions` object keeps producing highlighted output, as before. Track-changes output is the default only when you pass a `WordCompareOptions` object.
{{< /alert >}}

### Revisions mode

{{< tabs "example-revisions">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.WordCompareOptions;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    WordCompareOptions options = new WordCompareOptions();
    options.setDisplayMode(WordCompareOptions.ComparisonDisplayMode.REVISIONS);

    comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result:

|                       Revisions mode                            |
| :-------------------------------------------------------------: |
| ![](/comparison/java/images/word-track-changes-option-true.png) |

In this mode the changes live in the result document as Word revisions, so `Comparer.getChanges()` is not available after the comparison. Use `HIGHLIGHT` mode when you need the list of changes from the API.

### Highlight mode

{{< tabs "example-highlight">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.WordCompareOptions;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    WordCompareOptions options = new WordCompareOptions();
    options.setDisplayMode(WordCompareOptions.ComparisonDisplayMode.HIGHLIGHT);

    comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result:

|                       Highlight mode                             |
| :--------------------------------------------------------------: |
| ![](/comparison/java/images/word-track-changes-option-false.png) |

## Detect style changes

Call [setDetectStyleChanges(true)](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDetectStyleChanges-boolean-) to include formatting differences (bold, font size, colour, etc.) alongside textual edits.

{{< tabs "example-style">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    WordCompareOptions options = new WordCompareOptions();
    options.setDisplayMode(WordCompareOptions.ComparisonDisplayMode.REVISIONS);
    options.setDetectStyleChanges(true);

    comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

## Compare headers and footers

Call [setHeaderFootersComparison(true)](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setHeaderFootersComparison-boolean-) to include header and footer content in the comparison.

{{< tabs "example-headers">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    WordCompareOptions options = new WordCompareOptions();
    options.setHeaderFootersComparison(true);

    comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

## Mark line breaks

Call [setMarkLineBreaks(true)](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) to visually mark paragraph (line) breaks that differ between documents.

{{< tabs "example-linebreaks">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    WordCompareOptions options = new WordCompareOptions();
    options.setMarkLineBreaks(true);

    comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

## Other Word-specific properties

The properties below are also available on `WordCompareOptions`. Several of them are documented in dedicated articles — follow the links for details:

- [setCompareBookmarks()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) — compare bookmarks in the source and target documents. See [Compare bookmarks in Word documents]({{< ref "/comparison/java/advanced-usage/comparison/compare-bookmarks-in-word.md" >}}).
- [setCompareVariableProperty()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) — compare document variable properties (e.g. `DOCVARIABLE` fields). See [Compare document properties and variables]({{< ref "/comparison/java/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
- [setCompareDocumentProperty()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) — compare built-in and custom document properties. See [Compare document properties and variables]({{< ref "/comparison/java/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
- [setRevisionAuthorName()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) — author name stamped on revisions when the display mode is `REVISIONS`. See [Setting author of changes]({{< ref "/comparison/java/advanced-usage/comparison/setting-author-of-changes.md" >}}).
- [setShowRevisions()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) — controls whether revision markup remains visible in the result. See [Show Revisions]({{< ref "/comparison/java/advanced-usage/comparison/show-revisions.md" >}}).
- [setLeaveGaps()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/) — leave empty lines in place of inserted or deleted content to preserve layout. See [Show gap lines]({{< ref "/comparison/java/advanced-usage/comparison/show-gap-lines.md" >}}).

All [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) base properties — `InsertedItemStyle`, `DeletedItemStyle`, `ChangedItemStyle`, `SensitivityOfComparison`, `GenerateSummaryPage`, and others — are also available on `WordCompareOptions`.

{{< alert style="info" >}}
The Word-specific setters on `CompareOptions` (`setWordTrackChanges()`, `setCompareBookmarks()`, `setRevisionAuthorName()`, and others) are deprecated. They keep working for backward compatibility, but new code should use `WordCompareOptions`. On a `WordCompareOptions` object, `setWordTrackChanges(true)` is equivalent to `setDisplayMode(REVISIONS)` and `setWordTrackChanges(false)` to `setDisplayMode(HIGHLIGHT)`.
{{< /alert >}}

## See also

- [WordCompareOptions API reference](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/wordcompareoptions/)
- [Compare bookmarks in Word documents]({{< ref "/comparison/java/advanced-usage/comparison/compare-bookmarks-in-word.md" >}})
- [Show Revisions]({{< ref "/comparison/java/advanced-usage/comparison/show-revisions.md" >}})
- [Setting author of changes]({{< ref "/comparison/java/advanced-usage/comparison/setting-author-of-changes.md" >}})
