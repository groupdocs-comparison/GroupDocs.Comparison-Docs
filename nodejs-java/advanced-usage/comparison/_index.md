---
id: comparison
url: comparison/nodejs-java/comparison
title: Comparison
weight: 2
description: "Learn more about advanced document comparison use cases - how to adjust comparison sensitivity level, get coordinates of changed elements, detect style detection and many more using GroupDocs.Comparison for Node.js via Java"
keywords: Compare document with detalisation, Compare documents with password
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
---
[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) provides many ways to customize the logic of the changes' detection algorithm and output file creation by setting the `CompareOptions` class properties.   

You can customize the following parameters:

*   `CalculateCoordinates` specifies whether to calculate coordinates for changed components.
*   `ChangedItemStyle` specifies the style of the changed items.
*   `DeletedItemStyle` specifies the style of the deleted items.
*   `DetalisationLevel` gets or sets the comparison detailing level.
*   `DetectStyleChanges` specifies whether to detect style changes.
*   `DiagramMasterSetting` gets or sets the path to the master, or uses comparison without a master (this option is for diagrams only).
*   `GenerateSummaryPage` specifies whether to add a summary page with the detected changes statistics to the output document.
*   `InsertedItemStyle` specifies the style of inserted items.
*   `MarkChangedContent` specifies whether to use frames for shapes in Word Processing and for rectangles in Image documents.
*   `MarkNestedContent` specifies whether to accept inserted/deleted styles for all children of inserted/deleted items.
*   `OriginalSize` gets or sets the original sizes of comparing documents.
*   `PasswordSaveOption` gets or sets the password save option. For details, see [here]({{< ref "comparison/nodejs-java/advanced-usage/saving/set-password-for-resultant-document.md" >}}).
*   `SensitivityOfComparison` gets or sets the comparison sensitivity. For details, see [here]({{< ref "comparison/nodejs-java/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}}).
*   `ShowDeletedContent` specifies whether to show deleted components in the output document.
*   `ShowInsertedContent` specifies whether to show inserted components in the output document.
*   `WordsSeparatorChars` sets an array of delimiters to split text into words.
*   `CompareBookmarks` specifies whether to compare bookmarks.
*   `CompareVariableProperty` specifies whether to compare variable properties.
*   `CompareDocumentProperty` specifies whether to compare built and custom properties.
*   `ShowRevisions` specifies whether to show other revisions in the output document.
*   `LeaveGaps` specifies whether to show empty lines instead of inserted/deleted components in the final document.

For details, see the following guides:
