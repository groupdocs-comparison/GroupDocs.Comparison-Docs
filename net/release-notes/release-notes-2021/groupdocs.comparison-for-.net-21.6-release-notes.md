---
id: groupdocs-comparison-for-net-21-6-release-notes
url: comparison/net/groupdocs-comparison-for-net-21-6-release-notes
title: GroupDocs.Comparison for .NET 21.6 Release Notes
weight: 15
description: ""
keywords:
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---

{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for .NET 21.6{{< /alert >}}

## Major Features

Below is the list of most notable changes in release of GroupDocs.Comparison for .NET 21.6:

- Fixed getting information about page number and size for changes when calling GetChanges() method
- Fixed getting page information and coordinates for Hyperlink component in Word format
- Improved comparison of merged cells in Cells format
- Fixed comparison of empty cells with changed style in Cells format
- Fixed comparison of specific paragraphs in PDF format

## Full List of Issues Covering all Changes in this Release

| Key                | Summary                                                   | Issue Type  |
| ------------------ | --------------------------------------------------------- | ----------- |
| COMPARISONNET-2720 | Change logic of getting information about page in changes | Improvement |
| COMPARISONNET-2760 | Issue with comparing merged cells                         | Bug         |
| COMPARISONNET-2716 | Comparing PDF files takes too much time                   | Bug         |
| COMPARISONNET-2762 | Issue with compare empty cells with changed style         | Bug         |
| COMPARISONNET-2759 | Comparison API slides changes dont have pageNumber        | Bug         |
| COMPARISONNET-2763 | Comparison API word hyperlink problem                     | Bug         |

## Public API and Backward Incompatible Changes

none
