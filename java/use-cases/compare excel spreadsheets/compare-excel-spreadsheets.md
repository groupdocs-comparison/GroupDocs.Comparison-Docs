---
id: compare-excel-spreadsheets
url: comparison/java/compare-excel-spreadsheets
title: Compare Excel Spreadsheets. Advanced Cell-by-Cell Analysis in Java
weight: 1
description: "Learn how to compare Excel spreadsheets programmatically using GroupDocs.Comparison for Java. Compare spreadsheets with custom styling, visibility controls, summary pages, and advanced comparison options."
keywords: groupdocs.comparison, excel comparison, spreadsheet comparison, cell by cell comparison, compare excel files, custom styling, summary page, visibility controls, java
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
---

This article demonstrates how to compare **Excel spreadsheets** (XLSX, XLS) using **GroupDocs.Comparison for Java**.\
The examples below are ready to use and let developers quickly identify cell-level differences with customizable styling, visibility controls, summary pages, and advanced comparison options.

Excel spreadsheet comparison is essential for **financial auditing**, **data validation**, **version control**, **compliance reporting**, and **collaborative editing**.
With GroupDocs.Comparison for Java, you can automate Excel comparison workflows and generate result documents that highlight insertions, deletions, and modifications with configurable visual styles.

> 💡 Use this approach when you need to automatically detect and highlight differences between Excel spreadsheet versions without manual review.

## Prerequisites

Before proceeding, make sure you have:

-   **Java** 8 or later (Java 17 LTS recommended).
-   **Maven** or **Gradle** to build the project.
-   **GroupDocs.Comparison for Java** added to your project. See [Installation]({{< ref "comparison/java/getting-started/installation.md" >}}).
-   A valid **GroupDocs.Comparison license** file ([temporary license](https://purchase.groupdocs.com/temporary-license/) available for evaluation).

## Project Structure

The examples assume the following layout:

    compare-excel-spreadsheets-java/
     ├── src/main/java/
     │   └── CompareExcelSpreadsheets.java   # Main class with all comparison examples
     ├── sample-files/                       # Input Excel files (source.xlsx, target.xlsx)
     ├── output/                             # Generated comparison results
     └── pom.xml                             # Maven project with the GroupDocs.Comparison dependency

## Usage Examples

### Basic Comparison

The `basicComparison` method performs a straightforward comparison using default settings:

```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.options.style.StyleSettings;
// ...

private static void basicComparison(String sourcePath, String targetPath, String resultPath) {
    ensureFileExists(sourcePath, "source Excel file");
    ensureFileExists(targetPath, "target Excel file");

    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);
        comparer.compare(resultPath);
    }

    System.out.println("Basic comparison completed.");
}
```

This code uses GroupDocs.Comparison's `Comparer` class to compare two Excel files with default styling, highlighting all differences automatically.

### Styled Comparison with Custom Formatting

The `styledComparison` method applies custom styling and generates a summary page:

```java
import java.awt.Color;
// ...

private static void styledComparison(String sourcePath, String targetPath, String resultPath) {
    ensureFileExists(sourcePath, "source Excel file");
    ensureFileExists(targetPath, "target Excel file");

    CompareOptions compareOptions = new CompareOptions();

    StyleSettings insertedItemStyle = new StyleSettings();
    insertedItemStyle.setFontColor(Color.GREEN);
    insertedItemStyle.setUnderline(true);
    insertedItemStyle.setBold(true);
    insertedItemStyle.setItalic(true);
    compareOptions.setInsertedItemStyle(insertedItemStyle);

    StyleSettings deletedItemStyle = new StyleSettings();
    deletedItemStyle.setFontColor(new Color(165, 42, 42)); // brown
    deletedItemStyle.setUnderline(true);
    deletedItemStyle.setBold(true);
    deletedItemStyle.setItalic(true);
    compareOptions.setDeletedItemStyle(deletedItemStyle);

    StyleSettings changedItemStyle = new StyleSettings();
    changedItemStyle.setFontColor(new Color(178, 34, 34)); // firebrick
    changedItemStyle.setUnderline(true);
    changedItemStyle.setBold(true);
    changedItemStyle.setItalic(true);
    compareOptions.setChangedItemStyle(changedItemStyle);

    compareOptions.setGenerateSummaryPage(true);
    compareOptions.setShowDeletedContent(false);

    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);
        comparer.compare(resultPath, compareOptions);
    }

    System.out.println("Styled comparison completed (changes highlighted, summary page generated).");
}
```

This example demonstrates GroupDocs.Comparison's `CompareOptions` and `StyleSettings` classes for custom formatting. Inserted cells appear in green, deleted cells in brown, and changed cells in firebrick, all with bold, italic, and underline formatting.

### Hide Inserted Content

The `hideInsertedContentComparison` method focuses on deletions and modifications:

```java
private static void hideInsertedContentComparison(String sourcePath, String targetPath, String resultPath) {
    ensureFileExists(sourcePath, "source Excel file");
    ensureFileExists(targetPath, "target Excel file");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setShowInsertedContent(false);

    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);
        comparer.compare(resultPath, compareOptions);
    }

    System.out.println("Comparison completed (inserted content hidden).");
}
```

By setting `ShowInsertedContent` to `false`, this sample suppresses the display of any newly added cells in the result document, making deletions and modifications more prominent.

### Hide Deleted Content

The `hideDeletedContentComparison` method focuses on additions and modifications:

```java
private static void hideDeletedContentComparison(String sourcePath, String targetPath, String resultPath) {
    ensureFileExists(sourcePath, "source Excel file");
    ensureFileExists(targetPath, "target Excel file");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setShowDeletedContent(false);

    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);
        comparer.compare(resultPath, compareOptions);
    }

    System.out.println("Comparison completed (deleted content hidden).");
}
```

Setting `ShowDeletedContent` to `false` removes any visual indication of deleted cells, highlighting only additions and changes.

### Leave Gaps for Deleted Content

The `leaveGapsComparison` method preserves document structure:

```java
private static void leaveGapsComparison(String sourcePath, String targetPath, String resultPath) {
    ensureFileExists(sourcePath, "source Excel file");
    ensureFileExists(targetPath, "target Excel file");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setLeaveGaps(true);

    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);
        comparer.compare(resultPath, compareOptions);
    }

    System.out.println("Comparison completed (gaps left for deleted content).");
}
```

Enabling `LeaveGaps` retains empty cells where deletions occurred, keeping the spreadsheet's layout intact and making the missing content immediately visible.

### Hide Both Inserted and Deleted Content

The `hideBothContentComparison` method shows only modifications:

```java
private static void hideBothContentComparison(String sourcePath, String targetPath, String resultPath) {
    ensureFileExists(sourcePath, "source Excel file");
    ensureFileExists(targetPath, "target Excel file");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setShowInsertedContent(false);
    compareOptions.setShowDeletedContent(false);
    compareOptions.setLeaveGaps(true);

    try (Comparer comparer = new Comparer(sourcePath)) {
        comparer.add(targetPath);
        comparer.compare(resultPath, compareOptions);
    }

    System.out.println("Comparison completed (both inserted and deleted content hidden, gaps left).");
}
```

Both `ShowInsertedContent` and `ShowDeletedContent` are disabled, while `LeaveGaps` remains true to keep the layout. The result highlights only cells that changed value, ideal for change-impact analysis.

### License Management

Apply the GroupDocs.Comparison license before performing comparisons:

```java
import com.groupdocs.comparison.license.License;
// ...

private static void applyLicense() {
    String licensePath = "path to your license file";
    License license = new License();
    license.setLicense(licensePath);
}
```

Update the `licensePath` variable with the path to your license file. Without a valid license, the library runs in evaluation mode with limited capabilities.

### File Validation

The `ensureFileExists` helper method validates file presence:

```java
import java.io.FileNotFoundException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Paths;
// ...

private static void ensureFileExists(String path, String description) {
    if (!Files.exists(Paths.get(path))) {
        throw new UncheckedIOException(new FileNotFoundException(
                "The " + description + " was not found. Path: " + path));
    }
}
```

This helper validates file existence before any comparison operation, providing a clear exception message that aids debugging.

## Running the Examples

1. Place your Excel files in the `sample-files` directory:
   - `source.xlsx` - The original Excel file
   - `target.xlsx` - The modified Excel file to compare against

2. Call the methods above from `main`, after applying the license:
   ```java
   public static void main(String[] args) {
       applyLicense();

       String source = "sample-files/source.xlsx";
       String target = "sample-files/target.xlsx";

       basicComparison(source, target, "output/result_basic.xlsx");
       styledComparison(source, target, "output/result_styled.xlsx");
       hideInsertedContentComparison(source, target, "output/result_hide_inserted.xlsx");
       hideDeletedContentComparison(source, target, "output/result_hide_deleted.xlsx");
       leaveGapsComparison(source, target, "output/result_leave_gaps.xlsx");
       hideBothContentComparison(source, target, "output/result_hide_both.xlsx");
   }
   ```

3. Check the `output` directory for comparison results:
   - `result_basic.xlsx` - Basic comparison result
   - `result_styled.xlsx` - Styled comparison with summary page
   - `result_hide_inserted.xlsx` - Result with inserted content hidden
   - `result_hide_deleted.xlsx` - Result with deleted content hidden
   - `result_leave_gaps.xlsx` - Result with gaps for deleted content
   - `result_hide_both.xlsx` - Result showing only modifications

## Notes

- Replace file paths with your actual document locations.
- Default styling uses standard colors for inserted, deleted, and modified content.
- Summary page generation provides a consolidated view of all changes in a single page.
- Visibility controls allow you to focus on specific change types based on your analysis needs.
- The `LeaveGaps` option preserves document structure, making it easier to identify where content was removed.

## See Also

- [Compare Documents]({{< ref "comparison/java/comparison-basic/compare-documents" >}})
- [Customize Changes Styles]({{< ref "comparison/java/advanced-usage/comparison/customize-changes-styles" >}})
