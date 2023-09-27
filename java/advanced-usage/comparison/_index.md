---
id: comparison
url: comparison/java/comparison
title: Comparison
weight: 2
description: "Learn more about advanced document comparison use cases - how to adjust comparison detalisation level, get changed elements coordinates, detect style detection and many more using GroupDocs.Comparison for Java"
keywords: Compare document with detalisation, Compare documents with password
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
*   [CompareBookmarks](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareBookmarks-boolean-) indicates if compare bookmarks.
*   [CompareVariableProperty](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareVariableProperty-boolean-) indicate if compare variable properties.
*   [CompareDocumentProperty](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareDocumentProperty-boolean-) indicates if compare built and custom properties.
*   [ShowRevisions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setShowRevisions-boolean-) indicates if show other revisions in the output document.
*   [LeaveGaps](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setLeaveGaps-boolean-) indicates if show empty lines instead of inserted/deleted components in the final document.

For details, see the following guides:
