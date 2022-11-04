---
id: groupdocs-comparison-for-java-22-10-release-notes
url: comparison/java/groupdocs-comparison-for-java-22-10-release-notes
title: GroupDocs.Comparison for Java 22.11 Release Notes
weight: 11
description: ""
keywords:
productName: GroupDocs.Comparison for Java
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for Java 22.11{{< /alert >}}

## Major Features

Below is the list of most notable changes in release of GroupDocs.Comparison for Java 22.11:

*   Fixed issue with redundant attributes in HTML
*   Fixed Comparison crash in specific Cells documents with grouped objects/shapes
*   Fully added/removed worksheets now have colored tab in Cells
*   Fixed issue with confusing comparison results in the last paragraphs in Words
*   Fixed issue with memos/notes set in the Cells were not compared
*   Fixed lost grouped state of GroupShape in Slides
*   Fixed PDF annotations not compared
*   Fixed lost alternative text in Note
*   Implemented ability to compare SVG(Scalable Vector Graphics) documents
*   Fixed issue with group figures lose their name after comparison in Cells
*   Fixed issue with alternative text not counting as StyleChange in Slides
*   Fixed issue when unnecessary PNG file is left after conversion from SVG to image
*   Changed alternative title does not count as StyleChange in Slides

## Full List of Issues Covering all Changes in this Release

| Key                | Summary                                                           | Issue Type  |
|--------------------|-------------------------------------------------------------------|-------------|
| COMPARISONNET-2972 | Change Tab Color for modified Cells documents                     | Improvement |
| COMPARISONNET-2997 | Implement comparing SVG files                                     | Feature     |
| COMPARISONNET-2973 | Remove empty attributes in HTML                                   | Bug         |
| COMPARISONNET-2948 | Comparison issues in last paragraphs for certain documents        | Bug         |
| COMPARISONNET-2730 | Issue in comparing the Excel files with grouped objects/shapes    | Bug         |
| COMPARISONNET-2731 | Memos/notes set in the cells are not compared in the Excel files  | Bug         |
| COMPARISONNET-3002 | Lost grouped state of GroupShape in Slides                        | Bug         |
| COMPARISONNET-3022 | Changed alt text does not count as StyleChange in Words           | Bug         |
| COMPARISONNET-2996 | Alt text comparison issue in Note                                 | Bug         |
| COMPARISONAPP-67   | PDF with annotations are not compared properly                    | Bug         |
| COMPARISONNET-3001 | Excel group figures lose their name after comparison              | Bug         |
| COMPARISONNET-3027 | Changed alt text does not count as StyleChange in Slides          | Bug         |
| COMPARISONNET-3056 | Unnecessary PNG file is left after conversion from SVG to image   | Bug         |
| COMPARISONNET-3053 | Changed alternative title does not count as StyleChange in Slides | Bug         |

## Public API and Backward Incompatible Changes

1. Starting from this version GroupDocs.Comparison has ability to compare SVG documents
2. Starting from this version Java 8 is minimum required version. Java 7 is not supported anymore.
