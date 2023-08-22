---
id: comparison
url: comparison/net/comparison
title: Comparison
weight: 2
description: "Learn more about advanced document comparison use cases - how to adjust comparison detalisation level, get changed elements coordinates, detect style detection and many more using GroupDocs.Comparison for .NET"
keywords: Compare document with detalisation, Compare documents with password
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
*   [CompareBookmarks](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparebookmarks) indicates if compare bookmarks.
*   [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) indicate if compare variable properties.
*   [CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) indicates if compare built and custom properties.
*   [ShowRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showrevisions) indicates if show other revisions in the output document.
*   [LeaveGaps](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) indcates if show empty lines instead of inserted/deleted components in the final document.

For details, see the following guides:
