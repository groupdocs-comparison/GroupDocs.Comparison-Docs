---
id: comparison
url: comparison/java/comparison
title: Comparison
weight: 2
description: "Reference for all CompareOptions properties in GroupDocs.Comparison for Java — sensitivity, styles, coordinates, summary page, bookmarks, revisions, and format-specific options."
keywords: CompareOptions, comparison sensitivity, detect style changes, GenerateSummaryPage, CompareBookmarks, ShowRevisions, LeaveGaps, WordCompareOptions, PdfCompareOptions
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
---
[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) provides many ways to customize the logic of the changes' detection algorithm and output file creation by setting the [CompareOptions](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.options/compareoptions) class properties.   

You can customize the following parameters:

*   [CalculateCoordinates](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCalculateCoordinates-boolean-) indicates if calculate coordinates for changed components.
*   [ChangedItemStyle](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setChangedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-) specifies the style of the changed items.
*   [DeletedItemStyle](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDeletedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-) specifies the style of the deleted items.
*   [DetalisationLevel](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDetalisationLevel-com.groupdocs.comparison.options.style.DetalisationLevel-) gets or sets the comparison detailing level.
*   [DetectStyleChanges](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDetectStyleChanges-boolean-) indicates if  detect style changes or not.
*   [DiagramMasterSetting](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDiagramMasterSetting-com.groupdocs.comparison.options.style.DiagramMasterSetting-) gets or sets the path to the master, or uses comparison without a master (this option is for diagrams only).
*   [GenerateSummaryPage](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setGenerateSummaryPage-boolean-) indicates if add summary page with detected changes statistics for output document or not.
*   [InsertedItemStyle](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setInsertedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-) specifies style of inserted items.
*   [MarkChangedContent](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setMarkChangedContent-boolean-) indicates if use frames for shapes in Word Processing and for rectangles in Image documents.
*   [MarkNestedContent](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setMarkNestedContent-boolean-) indicates if accept inserted/deleted styles for all children of inserted/deleted items.
*   [OriginalSize](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setOriginalSize-com.groupdocs.comparison.options.OriginalSize-) gets or sets the original sizes of comparing documents.
*   [PasswordSaveOption](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setPasswordSaveOption-com.groupdocs.comparison.options.enums.PasswordSaveOption-) gets or sets the password save option. For details, see [here]({{< ref "comparison/java/advanced-usage/saving/set-password-for-resultant-document.md" >}}).
*   [SensitivityOfComparison](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setSensitivityOfComparison-int-) gets or sets the comparison sensitivity. For details, see [here]({{< ref "comparison/java/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}}).
*   [ShowDeletedContent](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowDeletedContent-boolean-) indicates if show deleted components in output document or not.
*   [ShowInsertedContent](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowInsertedContent-boolean-) indicates if show inserted components in output document or not.
*   [WordsSeparatorChars](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setWordsSeparatorChars-char---) sets an array of delimiters to split text into words.
*   [CompareBookmarks](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareBookmarks-boolean-) indicates if compare bookmarks. See [Compare bookmarks in Word]({{< ref "comparison/java/advanced-usage/comparison/compare-bookmarks-in-word.md" >}}).
*   [CompareVariableProperty](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareVariableProperty-boolean-) indicates if compare variable properties. See [Compare variables and document properties]({{< ref "comparison/java/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
*   [CompareDocumentProperty](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareDocumentProperty-boolean-) indicates if compare built and custom properties. See [Compare variables and document properties]({{< ref "comparison/java/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
*   [ShowRevisions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowRevisions-boolean-) indicates if show other revisions in the output document. See [Show revisions]({{< ref "comparison/java/advanced-usage/comparison/show-revisions.md" >}}).
*   [LeaveGaps](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setLeaveGaps-boolean-) indicates if show empty lines instead of inserted/deleted components in the final document. See [Show gap lines]({{< ref "comparison/java/advanced-usage/comparison/show-gap-lines.md" >}}).

For details, see the following guides:

{{< alert style="tip" >}}
**Format-specific options:** For Word documents, you can use [WordCompareOptions]({{< ref "comparison/java/advanced-usage/comparison/word-compare-options.md" >}}) to control revision display mode, author attribution, and bookmark comparison in addition to the general `CompareOptions` above. For PDF documents, [PdfCompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/pdfcompareoptions/) controls the result layout, page range, and image comparison — see [Disable image comparison in PDF documents]({{< ref "comparison/java/advanced-usage/comparison/disable-image-comparison-in-pdf-documents.md" >}}).
{{< /alert >}}

## See also

- [Compare documents]({{< ref "comparison/java/comparison-basic/compare-documents.md" >}})
- [Word compare options]({{< ref "comparison/java/advanced-usage/comparison/word-compare-options.md" >}})
- [Adjusting comparison sensitivity]({{< ref "comparison/java/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}})
- [Get list of changes]({{< ref "comparison/java/advanced-usage/comparison/get-list-of-changes.md" >}})
