---
id: groupdocs-comparison-for-net-22-6-release-notes
url: comparison/net/groupdocs-comparison-for-net-22-6-release-notes
title: GroupDocs.Comparison for .NET 22.6 Release Notes
weight: 17
description: ""
keywords: 
productName: GroupDocs.Comparison for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for .NET 22.6{{< /alert >}}

## Major Features

Below is the list of most notable changes in release of GroupDocs.Comparison for .NET 22.6:

*   Fixed issue when unnecessary PNG file is left after conversion from SVG to image
*   Changed alternative title does not count as StyleChange in Slides
*   Added support of .NET Framework 4.0, .NET Standard 2.1 and .NET 6.0


## Full List of Issues Covering all Changes in this Release

| Key | Summary | Issue Type |
| --- | --- | --- |
| COMPARISONNET-3056 | Unnecessary PNG file is left after conversion from SVG to image | Bug |
| COMPARISONNET-3053 | Changed alternative title does not count as StyleChange in Slides | Bug |


## Public API and Backward Incompatible Changes
Starting from this version support of .NET Framework 4.0, .NET Standard 2.1 and .NET 6.0 was added for GroupDocs.Comparison. Support of .NET Framework 2.0  was dropped instead. 

Current release has a known issue: Comparing of PDF does not work when use libary in .NET 6.0 project. This will be hotfixed ASAP