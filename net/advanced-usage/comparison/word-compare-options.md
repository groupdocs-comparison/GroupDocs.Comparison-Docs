---
id: word-compare-options
url: comparison/net/word-compare-options
title: Word document comparison options
weight: 13
description: "This article describes the WordCompareOptions class in GroupDocs.Comparison for .NET — display modes (Revisions and Highlight), style change detection, header/footer comparison, and other Word-specific settings."
keywords: WordCompareOptions, DisplayMode, Revisions, Highlight, Word comparison, DetectStyleChanges, HeaderFootersComparison, MarkLineBreaks
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using C# language and GroupDocs.Comparison for .NET
    productCode: comparison
    productPlatform: net
  showVideo: True
  howTo:
    name: How to configure Word document comparison in .NET
    description: Learn how to configure WordCompareOptions to control how Word document comparison results are produced
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Specify necessary settings
        text: Create a WordCompareOptions object and set properties such as DisplayMode, DetectStyleChanges, or HeaderFootersComparison.
      - name: Compare documents
        text: Call the Compare method of your object and pass the resulting file path and the WordCompareOptions object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) provides the [WordCompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) class for configuring comparison of Word documents (`.doc`, `.docx`, `.rtf`, and other word-processing formats). It inherits from [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) and adds Word-specific properties — most notably the `DisplayMode` property, which controls how detected changes are written into the result document.

## Display modes

The [DisplayMode](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) property accepts one of two values from the `WordCompareOptions.ComparisonDisplayMode` enumeration:

- **Revisions** — changes are emitted as native Word revision (track-changes) markup. The result opens in Microsoft Word with the **Review → Accept / Reject** controls ready.
- **Highlight** — inserted, deleted, and modified text is rendered with inline colour highlights directly in the document body. No track-changes metadata is added.

### Revisions mode

{{< tabs "example-revisions">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    WordCompareOptions options = new WordCompareOptions
    {
        DisplayMode = WordCompareOptions.ComparisonDisplayMode.Revisions
    };

    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result:

|                       Revisions mode                           |
| :------------------------------------------------------------: |
| ![](/comparison/net/images/word-track-changes-option-true.png) |

### Highlight mode

{{< tabs "example-highlight">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    WordCompareOptions options = new WordCompareOptions
    {
        DisplayMode = WordCompareOptions.ComparisonDisplayMode.Highlight
    };

    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result:

|                       Highlight mode                            |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/word-track-changes-option-false.png) |

For a step-by-step walkthrough comparing both modes side by side, see the related tutorial: [Word Comparison in .NET: Revision Track vs Highlight Modes](https://blog.groupdocs.com/comparison/word-comparison-net-revision-track-vs-highlight-modes/).

## Detect style changes

Set [DetectStyleChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) to `true` to include formatting differences (bold, font size, colour, etc.) alongside textual edits.

{{< tabs "example-style">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    WordCompareOptions options = new WordCompareOptions
    {
        DisplayMode = WordCompareOptions.ComparisonDisplayMode.Revisions,
        DetectStyleChanges = true
    };

    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

## Compare headers and footers

Set [HeaderFootersComparison](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) to `true` to include header and footer content in the comparison.

{{< tabs "example-headers">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    WordCompareOptions options = new WordCompareOptions
    {
        HeaderFootersComparison = true
    };

    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

## Mark line breaks

Set [MarkLineBreaks](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) to `true` to visually mark paragraph (line) breaks that differ between documents.

{{< tabs "example-linebreaks">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    WordCompareOptions options = new WordCompareOptions
    {
        MarkLineBreaks = true
    };

    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

## Other Word-specific properties

The properties below are also available on `WordCompareOptions`. Several of them are documented in dedicated articles — follow the links for details:

- [CompareBookmarks](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) — compare bookmarks in the source and target documents. See [Compare bookmarks in Word documents]({{< ref "/comparison/net/advanced-usage/comparison/compare-bookmarks-in-word.md" >}}).
- [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) — compare document variable properties (e.g. `DOCVARIABLE` fields). See [Compare document properties and variables]({{< ref "/comparison/net/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
- [CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) — compare built-in and custom document properties. See [Compare document properties and variables]({{< ref "/comparison/net/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
- [RevisionAuthorName](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) — author name stamped on revisions when `DisplayMode = Revisions`. See [Setting author of changes]({{< ref "/comparison/net/advanced-usage/comparison/setting-author-of-changes.md" >}}).
- [ShowRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) — controls whether revision markup remains visible in the result. See [Show Revisions]({{< ref "/comparison/net/advanced-usage/comparison/show-revisions.md" >}}).
- [LeaveGaps](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/) — leave empty lines in place of inserted or deleted content to preserve layout.

All [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) base properties — `InsertedItemStyle`, `DeletedItemStyle`, `ChangedItemStyle`, `SensitivityOfComparison`, `GenerateSummaryPage`, and others — are also available on `WordCompareOptions`.

## See also

- [WordCompareOptions API reference](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/wordcompareoptions/)
- [Word Comparison in .NET: Revision Track vs Highlight Modes (blog tutorial)](https://blog.groupdocs.com/comparison/word-comparison-net-revision-track-vs-highlight-modes/)
- [Compare bookmarks in Word documents]({{< ref "/comparison/net/advanced-usage/comparison/compare-bookmarks-in-word.md" >}})
- [Show Revisions]({{< ref "/comparison/net/advanced-usage/comparison/show-revisions.md" >}})
- [Setting author of changes]({{< ref "/comparison/net/advanced-usage/comparison/setting-author-of-changes.md" >}})
