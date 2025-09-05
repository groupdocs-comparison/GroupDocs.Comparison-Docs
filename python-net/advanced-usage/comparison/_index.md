---
id: comparison
url: comparison/python-net/comparison
title: Comparison
weight: 2
description: "Learn more about advanced document comparison use cases - how to adjust comparison sensitivity level, get coordinates of changed elements, detect style detection and many more using GroupDocs.Comparison for Python via .NET"
keywords: Compare document with detalisation, Compare documents with password
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
structuredData:
    showOrganization: True
---
[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) provides many ways to customize the logic of the changes' detection algorithm and output file creation by setting the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/compareoptions)--> class properties.   

You can customize the following parameters:

*   `CalculateCoordinates`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setCalculateCoordinates-boolean-)--> specifies whether to calculate coordinates for changed components.
*   `ChangedItemStyle`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setChangedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-)--> specifies the style of the changed items.
*   `DeletedItemStyle`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setDeletedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-)--> specifies the style of the deleted items.
*   `DetalisationLevel`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setDetalisationLevel-com.groupdocs.comparison.options.style.DetalisationLevel-)--> gets or sets the comparison detailing level.
*   `DetectStyleChanges`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setDetectStyleChanges-boolean-)--> specifies whether to detect style changes.
*   `DiagramMasterSetting`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setDiagramMasterSetting-com.groupdocs.comparison.options.style.DiagramMasterSetting-)--> gets or sets the path to the master, or uses comparison without a master (this option is for diagrams only).
*   `GenerateSummaryPage`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setGenerateSummaryPage-boolean-)--> specifies whether to add a summary page with the detected changes statistics to the output document.
*   `InsertedItemStyle`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setInsertedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-)--> specifies the style of inserted items.
*   `MarkChangedContent`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setMarkChangedContent-boolean-)--> specifies whether to use frames for shapes in Word Processing and for rectangles in Image documents.
*   `MarkNestedContent`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setMarkNestedContent-boolean-)--> specifies whether to accept inserted/deleted styles for all children of inserted/deleted items.
*   `OriginalSize`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setOriginalSize-com.groupdocs.comparison.options.OriginalSize-)--> gets or sets the original sizes of comparing documents.
*   `ShowDeletedContent`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setShowDeletedContent-boolean-)--> specifies whether to show deleted components in the output document.
*   `ShowInsertedContent`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setShowInsertedContent-boolean-)--> specifies whether to show inserted components in the output document.
*   `WordsSeparatorChars`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setWordsSeparatorChars-char- - -)--> sets an array of delimiters to split text into words.
*   `CompareBookmarks`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setCompareBookmarks-boolean-)--> specifies whether to compare bookmarks.
*   `CompareVariableProperty`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setCompareVariableProperty-boolean-)--> specifies whether to compare variable properties.
*   `CompareDocumentProperty`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setCompareDocumentProperty-boolean-)--> specifies whether to compare built and custom properties.
*   `ShowRevisions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setShowRevisions-boolean-)--> specifies whether to show other revisions in the output document.
*   `LeaveGaps`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setLeaveGaps-boolean-)--> specifies whether to show empty lines instead of inserted/deleted components in the final document.
*   `PasswordSaveOption`<!--](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/compareoptions/properties/passwordsaveoption)--> specifies the password save option. For details, see [here]({{< ref "comparison/net/advanced-usage/saving/set-password-for-resultant-document.md" >}}).  
*   `SensitivityOfComparison`<!--](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/compareoptions/properties/sensitivityofcomparison)--> specifies the comparison sensitivity. For details, see [here]({{< ref "comparison/net/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}}).  


For details, see the following guides:
