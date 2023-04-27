---
id: groupdocs-comparison-for-net-23-4-release-notes
url: comparison/net/groupdocs-comparison-for-net-23-4-release-notes
title: GroupDocs.Comparison for .NET 23.4 Release Notes
weight: 18
description: ""
keywords: release notes, groupdocs.comparison, .net, 23.4
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---
## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
| COMPARISONNET-3389 | Feature | [Implemented abilty to compare folders](#folder-comparison-function) |
| COMPARISONNET-3280 | Fix | Exception occurs when selecting accepted changes |
| COMPARISONNET-3450 | Fix | Exception when user compare the same documents |
| COMPARISONNET-3484 | Fix | Exception when comparing text files |

## Major Features
Below is the list of most notable changes in release of GroupDocs.Comparison for .NET 23.4:

*   Implemented folder comparison feature
*   Fixed exception when selecting accepted changes
*   Added changes to summary page that will indicate that user trying to compare the same documents for all supported document types
*   Fixed Exception when comparing text filesCompare

## Folders comparison 
Starting from 23.4 we've added ability to compare folders. Here is a code snippet how to compare folders

```csharp
using System;
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
class YoursProgram
{
  static void Main(string[] args)
  {
      CompareOptions compareOptions = new CompareOptions
      {
          DirectoryCompare = true,
      };
      Comparer comparer = new Comparer("C:\Folder_1", compareOptions);
      comparer.Add("C:\Folder_2", compareOptions);
      comparer.Compare("C:\Result.html", compareOptions);
  }
}
```

![Folder comparison function](/comparison/net/images/result-comparison-folders-html.png)

more details could be found on documentation [here](/comparison/net/compare-folders).