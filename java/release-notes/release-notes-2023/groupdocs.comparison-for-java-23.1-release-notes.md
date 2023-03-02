---
id: groupdocs-comparison-for-java-23-1-release-notes
url: comparison/java/groupdocs-comparison-for-java-23-1-release-notes
title: GroupDocs.Comparison for Java 23.1 Release Notes
weight: 6
description: ""
keywords:
productName: GroupDocs.Comparison for Java
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for Java 23.1{{< /alert >}}

## Major Features

Below is the list of most notable changes in release of GroupDocs.Comparison for Java 23.1:

* Added ability to show results of comparison in result document as a Word Track changes.
* Fixed issue in PDF when compare files with Hieroglyphics could not return correct data if highlight was changed
* Fixed issue when some characters were not output in specific cases of PDF documents comparison
* Fixed issue when some annotations were lost after PDF documents comparison
* Improved comparison of list tags in HTML

## Full List of Issues Covering all Changes in this Release

| Key                 | Summary                                                                        | Issue Type  |
|---------------------|--------------------------------------------------------------------------------|-------------|
| COMPARISONNET-3106  | Words: Show results of comparison in result document as a Word Track changes   | Feature     |
| COMPARISONNET-3218  | Comparison of PDF files with Hieroglyphics depending on the Aspose PDF version | Improvement |
| COMPARISONNET-2347  | Improve comparison of list tags in HTML                                        | Improvement |
| COMPARISONNET-2746  | String wrap comparison issue                                                   | Bug         |
| COMPARISONNET-3217  | Incorrect display of annotations                                               | Bug         |
| COMPARISONJAVA-933  | String wrap comparison issue                                                   | Bug         |
| COMPARISONJAVA-1349 | Not possible to compare DOCX                                                   | Bug         |

## Public API and Backward Incompatible Changes

1. Starting from this version there is an ability to show results of comparison in result document as a Word Track changes, see example [here](https://docs.groupdocs.com/comparison/java/word-track-changes/)