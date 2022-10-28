---
id: groupdocs-comparison-for-net-22-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-22-3-release-notes
title: GroupDocs.Comparison for .NET 22.3 Release Notes
weight: 19
description: ""
keywords:
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---

{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for .NET 22.3{{< /alert >}}

## Major Features

Below is the list of most notable changes in release of GroupDocs.Comparison for .NET 22.3:

- Fixed issue with redundant attributes in HTML
- Fixed Comparison crash in specific Cells documents with grouped objects/shapes
- Fully added/removed worksheets now have colored tab in Cells
- Fixed issue with confusing comparison results in the last paragraphs in Words
- Fixed issue with memos/notes set in the Cells were not compared
- Fixed lost grouped state of GroupShape in Slides
- Fixed PDF annotations not compared
- Fixed lost alternative text in Note

## Full List of Issues Covering all Changes in this Release

| Key                | Summary                                                          | Issue Type  |
| ------------------ | ---------------------------------------------------------------- | ----------- |
| COMPARISONNET-2972 | Change Tab Color for modified Cells documents                    | Improvement |
| COMPARISONNET-2973 | Remove empty attributes in HTML                                  | Bug         |
| COMPARISONNET-2948 | Comparison issues in last paragraphs for certain documents       | Bug         |
| COMPARISONNET-2730 | Issue in comparing the Excel files with grouped objects/shapes   | Bug         |
| COMPARISONNET-2731 | Memos/notes set in the cells are not compared in the Excel files | Bug         |
| COMPARISONNET-3002 | Lost grouped state of GroupShape in Slides                       | Bug         |
| COMPARISONNET-3022 | Changed alt text does not count as StyleChange in Words          | Bug         |
| COMPARISONNET-2996 | Alt text comparison issue in Note                                | Bug         |
| COMPARISONAPP-67   | PDF with annotations are not compared properly                   | Bug         |

## Public API and Backward Incompatible Changes

none
