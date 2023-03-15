---
id: groupdocs-comparison-for-net-23-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-23-3-release-notes
title: GroupDocs.Comparison for .NET 23.3 Release Notes
weight: 19
description: ""
keywords: release notes, groupdocs.comparison, .net, 23.3
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---
## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
| COMPARISONNET-3376 | Feature | [Setting author of changes](#setting-author-of-changes) |
| COMPARISONNET-3280 | Fix | Exception throws when comparing vsdx files |
| COMPARISONNET-3352 | Fix | [Watermark placement changes are not detected in Word comparison](#watermark-coordinate-change-detection) |
| COMPARISONNET-3380 | Fix | Word comparison doesn't show what style changes have been made |
| COMPARISONNET-3379 | Fix | Comparer.Compare does not terminate when comparing documents |



## Major Features
Below is the list of most notable changes in release of GroupDocs.Comparison for .NET 23.3:

*   Fixed exception with comparing vsdx documents
*   Fixed issue with watermark offset being ignored
*   Fixed issue with ignoring style changes in Word format
*   Fixed issue of stopping the program on Comparer.Compare
*   Added setting author of changes

## Watermark Coordinate Change Detection
Before 23.3 the fact of changing watermark position on Words documents was not detected. We've added ability to detect watermark position change, 
see screenshot below
![Compare watermark example](/comparison/net/images/how-to-compare-watermark.png)


## Setting author of changes
1.  To set new changes author, you can use the following code:
```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
	CompareOptions options = new CompareOptions()
    {
        ShowRevisions = true,
        WordTrackChanges = true,
        RevisionAuthorName = "New author",
    };
    comparer.Compare(resultPath, options);
}
```
![set new author of changes example](/comparison/net/images/set-new-author-of-changes-example.png)
More about setting changes author can be found [here](/comparison/net/setting-author-of-changes/).