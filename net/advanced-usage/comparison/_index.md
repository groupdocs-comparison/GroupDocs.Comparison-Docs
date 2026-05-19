---
id: comparison
url: comparison/net/comparison
title: Comparison
weight: 2
description: "Reference for all CompareOptions properties in GroupDocs.Comparison for .NET — sensitivity, styles, coordinates, summary page, bookmarks, revisions, and format-specific options."
keywords: CompareOptions, comparison sensitivity, detect style changes, GenerateSummaryPage, CompareBookmarks, ShowRevisions, LeaveGaps, WordCompareOptions
productName: GroupDocs.Comparison for .NET
hideChildren: False
structuredData:
    showOrganization: True
---
[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) provides many ways to customize the logic of the changes' detection algorithm and output file creation by setting the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) class properties.   

You can customize the following parameters:

*   [CalculateCoordinates](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/calculatecoordinates) indicates if calculate coordinates for changed components.
*   [ChangedItemStyle](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/changeditemstyle) specifies the style of the changed items.
*   [DeletedItemStyle](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/deleteditemstyle) specifies the style of the deleted items.
*   [DetalisationLevel](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/detalisationlevel) gets of sets the comparison detalization level.
*   [DetectStyleChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/detectstylechanges) indicates if  detect style changes or not.
*   [DiagramMasterSetting](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/diagrammastersetting) gets or sets the path to the master, or uses comparison without a master (this option is for diagrams only).
*   [GenerateSummaryPage](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/generatesummarypage) indicates if add summary page with detected changes statistics for output document or not.
*   [InsertedItemStyle](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/inserteditemstyle) specifies style of inserted items.
*   [MarkChangedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/markchangedcontent) indicates if use frames for shapes in Word Processing and for rectangles in Image documents.
*   [MarkNestedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/marknestedcontent) indicates if accept inserted/deleted styles for all children of inserted/deleted items.
*   [OriginalSize](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/originalsize) gets or sets the original sizes of comparing documents.
*   [PasswordSaveOption](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/passwordsaveoption) gets or sets the password save option. For details, see [here]({{< ref "comparison/net/advanced-usage/saving/set-password-for-resultant-document.md" >}}).
*   [SensitivityOfComparison](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/sensitivityofcomparison) gets or sets the comparison sensitivity. For details, see [here]({{< ref "comparison/net/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}}).
*   [ShowDeletedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) indicates if show deleted components in output document or not.
*   [ShowInsertedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) indicates if show inserted components in output document or not.
*   [WordsSeparatorChars](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/wordsseparatorchars) sets an array of delimiters to split text into words.
*   [CompareBookmarks](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparebookmarks) indicates if compare bookmarks. See [Compare bookmarks in Word]({{< ref "comparison/net/advanced-usage/comparison/compare-bookmarks-in-word.md" >}}).
*   [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) indicates if compare variable properties. See [Compare variables and document properties]({{< ref "comparison/net/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
*   [CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) indicates if compare built and custom properties. See [Compare variables and document properties]({{< ref "comparison/net/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}}).
*   [ShowRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showrevisions) indicates if show other revisions in the output document. See [Show revisions]({{< ref "comparison/net/advanced-usage/comparison/show-revisions.md" >}}).
*   [LeaveGaps](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) indicates if show empty lines instead of inserted/deleted components in the final document. See [Show gap lines]({{< ref "comparison/net/advanced-usage/comparison/show-gap-lines.md" >}}).

For details, see the following guides:

{{< alert style="tip" >}}
**Format-specific options:** For Word documents, you can use [WordCompareOptions]({{< ref "comparison/net/advanced-usage/comparison/word-compare-options.md" >}}) to control revision display mode, author attribution, and bookmark comparison in addition to the general `CompareOptions` above.
{{< /alert >}}

## See also

- [Compare documents]({{< ref "comparison/net/comparison-basic/compare-documents.md" >}})
- [Word compare options]({{< ref "comparison/net/advanced-usage/comparison/word-compare-options.md" >}})
- [Adjusting comparison sensitivity]({{< ref "comparison/net/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}})
- [Get list of changes]({{< ref "comparison/net/advanced-usage/comparison/get-list-of-changes.md" >}})