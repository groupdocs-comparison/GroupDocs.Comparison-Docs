---
id: groupdocs-comparison-for-java-22-3-release-notes
url: comparison/java/groupdocs-comparison-for-java-22-3-release-notes
title: GroupDocs.Comparison for Java 22.3 Release Notes
weight: 12
description: ""
keywords:
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
---

{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for Java 22.3{{< /alert >}}

## Major Features

Below is the list of most notable changes in release of GroupDocs.Comparison for Java 22.3:

- Implemented replacement for empty lines, instead of displaying changes in result document for paragraphs in Word format
- Implemented сomparison of values from string variables
- Improved image comparison in Cells format
- Improved creating charts in Cells format
- Improved display of components with styles changes for Word format
- Improved informativeness of error messages in PDF format
- Improved comparison of merged cells in Cells format
- Improved processing of paragraphs with style changes in PDF format
- Improved image generation in PreviewOptions for Words documents
- Improved calculation of coordinates for run for Words documents
- Added new parameter to image style comparison that allows you to track the markup type in Word format
- Removed redundant span tags around unchanged text in HTML
- Fixed issue with closing streams while comparing text documents
- Fixed and improved Header/Footer component comparison
- Fixed and improved lists handling
- Fixed handling of some unsupported file signatures
- Fixed coordinate calculation for changes in ChangeInfo list
- Fixed creation of charts in some cases in Excel format
- Fixed creation of resulting document in HTML format
- Fixed change list counting in Diagram format
- Fixed getting information about page number and size for changes when calling getChanges() method
- Fixed getting page information and coordinates for Hyperlink component in Word format
- Fixed comparison of empty cells with changed style in Cells format
- Fixed comparison of specific paragraphs in PDF format
- Fixed display of paragraphs with a table of contents in PDF format
- Fixed an issue when comparing some annotations in PDF format
- Fixed display of ComponentType property in the list of changes from the getChanges() method
- Fixed display of text styles on PropertySummaryPage
- Fixed setting page numbers for changes for Note and Text document formats
- Fixed setting coordinates and page information for some changes in Word document format
- Fixed setting coordinates for changes in Cells documents and Word documents with comments
- Fixed display logic of empty SummaryPage
- Fixed issue with displaying marked changes if the change takes several lines
- Fixed issue with displaying marked paragraph changes
- Fixed issue with Word changes having unnecessary objects
- Fixed issue with hyperlinks in Diagram not counting in SummaryPage
- Fixed issue with getChanges method not returning nested content
- Fixed issue with HTML title in result file containing unnecessary <span> tag.
- Fixed issue with MarkNestedContent property in Diagram removing changes
- Fixed issue related to error when comparing HTML documents
- Fixed lost alternative text's title in Cells
- Fixed issue with grouped objects not comparing in PowerPoint documents
- Fixed issue with Word and PDF changes counters returning incorrect number of changes
- Fixed issue with presentation file not reflecting style changes
- Fixed issue with wrong height in PDF result output
- Fixed incorrect calculating of coordinates for PDF with Images
- Fixed issue with Cells output file containing changes from fully deleted worksheet when MarkNestendContent property is disabled
- Fixed issue with Imaging changes counters returning incorrect number of changes
- Fixed issue with PDF output file containing warning message
- Fixed issue with HTML elements not comparing by attributes
- Fixed incorrect text positioning in PDF
- Fixed Comparison crash in specific Words documents
- Fixed issue with HTML comparing for Comparison App
- Fixed issue with image comparing for Comparison App
- Fixed issue with particular PDFs returning no result

## Full List of Issues Covering all Changes in this Release

| Key                 | Summary                                                                        | Issue Type  |
| ------------------- | ------------------------------------------------------------------------------ | ----------- |
| COMPARISONNET-2560  | Word Document comparison output is not as expected                             | Bug         |
| COMPARISONNET-2597  | Excel files comparison issue                                                   | Bug         |
| COMPARISONNET-2624  | Incomplete creating charts                                                     | Bug         |
| COMPARISONNET-2626  | Cannot get the line difference and how to show style changes details in output | Bug         |
| COMPARISONNET-2627  | Prevent situation when during comparing text file stream is empty              | Bug         |
| COMPARISONNET-2667  | Compare input strings                                                          | Feature     |
| COMPARISONJAVA-895  | Spreadsheet Comparison output is not as expected                               | Improvement |
| COMPARISONNET-2659  | Improve creating of gap lines                                                  | Improvement |
| COMPARISONNET-2651  | Lots of changes for deletion of HeaderFooter                                   | Bug         |
| COMPARISONNET-2655  | Comparison issue in Word documents with numbered list                          | Bug         |
| COMPARISONNET-2686  | Exception throws when try to compare file with itself without licensing        | Bug         |
| COMPARISONNET-2687  | Error about memory leaking is shown for any error                              | Bug         |
| COMPARISONNET-2629  | API is not tracking the position change for an image in the Word file          | Feature     |
| COMPARISONNET-2631  | Issue display some special characters in Html                                  | Bug         |
| COMPARISONNET-2691  | Issue with comparing Charts in Cells format                                    | Bug         |
| COMPARISONNET-2694  | Document comparison result has no/wrong box position data                      | Bug         |
| COMPARISONNET-2715  | Issue with getting list of changes for Diagrams                                | Bug         |
| COMPARISONNET-2720  | Change logic of getting information about page in changes                      | Improvement |
| COMPARISONNET-2760  | Issue with comparing merged cells                                              | Bug         |
| COMPARISONNET-2716  | Comparing PDF files takes too much time                                        | Bug         |
| COMPARISONNET-2762  | Issue with compare empty cells with changed style                              | Bug         |
| COMPARISONNET-2759  | Comparison API slides changes dont have pageNumber                             | Bug         |
| COMPARISONNET-2763  | Comparison API word hyperlink problem                                          | Bug         |
| COMPARISONNET-2593  | Summary Page does not count moved text blocks                                  | Improvement |
| COMPARISONNET-2454  | Part of the symbols are not displayed when comparing PDF files                 | Bug         |
| COMPARISONNET-2787  | Object reference error when comparing PDF documents that contains annotations  | Bug         |
| COMPARISONNET-2786  | Issue with displaying PropertySummaryPage                                      | Bug         |
| COMPARISONNET-2790  | Groupdocs.Comparison API Text files changes don't have page number             | Bug         |
| COMPARISONNET-2791  | Groupdocs.Comparison API Notes documents changes don't have page number        | Bug         |
| COMPARISONNET-2818  | Issue with detecting PageNumber in nodes                                       | Bug         |
| COMPARISONNET-2839  | Issue with displaying marked changes                                           | Bug         |
| COMPARISONAPP-56    | Fix changes coordinates for Cells documents                                    | Bug         |
| COMPARISONNET-2843  | Issue with displaying marked paragraph changes                                 | Bug         |
| COMPARISONNET-2842  | Issue with displaying marked changes with transfer to new line                 | Bug         |
| COMPARISONNET-2792  | Groupdocs.Comparison API Word changes have unnecessary objects                 | Bug         |
| COMPARISONNET-2866  | Changing empty SummaryPage format                                              | Bug         |
| COMPARISONNET-2865  | Improved calculation of coordinates for run for Words documents                | Improvement |
| COMPARISONNET-2869  | Issue with MarkNestedContent option in Slides                                  | Bug         |
| COMPARISONNET-2870  | Issue with MarkNestedContent option in Note                                    | Bug         |
| COMPARISONNET-2871  | Issue with SummaryPage counters in Diagram                                     | Bug         |
| COMPARISONNET-2872  | Issue with HTML title in result file                                           | Bug         |
| COMPARISONNET-2876  | Issue with MarkNestedContent property in Diagram                               | Bug         |
| COMPARISONNET-2875  | Issue with disabling show inserted/deleted content properties                  | Bug         |
| COMPARISONNET-2918  | Issue with changes counters in Word                                            | Bug         |
| COMPARISONNET-2919  | Issue with changes counters in PDF                                             | Bug         |
| COMPARISONNET-2898  | Issue when comparing grouped objects in PowerPoint documents                   | Bug         |
| COMPARISONNET-2873  | Presentation file comparison issue                                             | Bug         |
| COMPARISONAPP-71    | Wrong PDF pages height                                                         | Bug         |
| COMPARISONAPP-62    | Incorrect calculating of coordinates for PDF with Images                       | Bug         |
| COMPARISONNET-2920  | Issue with changes counters in Imaging                                         | Bug         |
| COMPARISONNET-2509  | PDF comparison, output shows a warning message                                 | Bug         |
| COMPARISONNET-2921  | Issue with Worksheets and MarkNestedContent property in Cells                  | Bug         |
| COMPARISONNET-2922  | Issue with comparing tag attributes in HTML                                    | Bug         |
| COMPARISONNET-2559  | Comparing particular PDFs return no result                                     | Bug         |
| COMPARISONNET-2947  | Document comparison crashes                                                    | Bug         |
| COMPARISONNET-2944  | Remove redundant span tags                                                     | Bug         |
| COMPARISONAPP-76    | Issue with HTML comparing                                                      | Bug         |
| COMPARISONAPP-77    | Issue with image comparing                                                     | Bug         |
| COMPARISONJAVA-981  | Alt text comparison issue                                                      | Bug         |
| COMPARISONJAVA-979  | PDF with table of content comparison issue                                     | Bug         |
| COMPARISONJAVA-946  | Index Comparison in PDF                                                        | Bug         |
| COMPARISONJAVA-875  | Can we compare cell borders and cell with filled colors                        | Bug         |
| COMPARISONJAVA-1185 | Comparing PDF files takes too much time                                        | Bug         |

## Public API and Backward Incompatible Changes

1. To see changes in the display of information about components with style changes, you can use the following code:

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);

    CompareOptions options = new CompareOptions();
    options.setDetectStyleChanges(true);
    options.setDetalisationLevel(DetalisationLevel.High);

    comparer.compare(resultPath, options);
}
```

2. Learn more about getting result document with changed content replaced with empty lines can be
   found [here](https://docs.groupdocs.com/comparison/java/show-gap-lines/).

3. Learn more about сomparison of values from string variables can be
   found [here](https://docs.groupdocs.com/comparison/java/load-text-from-string/).
