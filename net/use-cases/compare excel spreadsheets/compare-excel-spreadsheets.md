---
id: compare-excel-spreadsheets
url: comparison/net/compare-excel-spreadsheets
title: Compare Excel Spreadsheets. Advanced Cell-by-Cell Analysis in C#
weight: 1
description: "Learn how to compare Excel spreadsheets programmatically using GroupDocs.Comparison for .NET. Compare spreadsheets with custom styling, visibility controls, summary pages, and advanced comparison options."
keywords: groupdocs.comparison, excel comparison, spreadsheet comparison, cell by cell comparison, compare excel files, custom styling, summary page, visibility controls, csharp, dotnet
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---

{{< alert style="info" >}} 💡For the **complete working code** and detailed explanations, please refer to the [full repository here](https://github.com/groupdocs-comparison/net-excel-comparison-sample).  
This repository contains all source files, helper classes, and configuration examples to implement Excel spreadsheet comparison in your .NET applications.{{< /alert >}}

This article demonstrates how to compare **Excel spreadsheets** (XLSX, XLS) using **GroupDocs.Comparison for .NET**.\
The sample project provides ready-to-use examples that enable developers to quickly identify cell-level differences with customizable styling, visibility controls, summary pages, and advanced comparison options.

Excel spreadsheet comparison is essential for **financial auditing**, **data validation**, **version control**, **compliance reporting**, and **collaborative editing**.  
With GroupDocs.Comparison for .NET, you can automate Excel comparison workflows and generate result documents that highlight insertions, deletions, and modifications with configurable visual styles.

> 💡 Use this approach when you need to automatically detect and highlight differences between Excel spreadsheet versions without manual review.

## Prerequisites

Before proceeding, make sure you have:

-   **GroupDocs.Comparison for .NET** installed. [Get a free trial](https://purchase.groupdocs.com/temp-license/100078).
-   **.NET SDK** 6.0 or later installed.
-   **Visual Studio** 2019 or later (recommended) or any .NET-compatible IDE.
-   A valid **GroupDocs.Comparison license** file (temporary license available for evaluation).

## Installation

Clone or download the [sample repository](https://github.com/groupdocs-comparison/net-excel-comparison-sample).

```bash
git clone https://github.com/groupdocs-comparison/net-excel-comparison-sample.git
cd net-excel-comparison-sample/CompareExcelSpreadsheets
```

Install the GroupDocs.Comparison NuGet package:

```bash
dotnet add package GroupDocs.Comparison
```

Or via Package Manager Console in Visual Studio:

```powershell
Install-Package GroupDocs.Comparison
```

## Repository Structure

The project includes:

    compare-excel-spreadsheets-dotnet/
     ├── CompareExcelSpreadsheets/
     │   ├── Program.cs                    # Main program with all comparison examples
     │   └── CompareExcelSpreadsheets.csproj  # Project file with dependencies
     ├── sample-files/                     # Input Excel files (source.xlsx, target.xlsx)
     ├── output/                           # Generated comparison results
     └── README.md

## Usage Examples

Below are simplified versions of the sample code. For the full implementation, see the [repository](https://github.com/groupdocs-comparison/net-excel-comparison-sample).

### Basic Comparison

The `BasicComparison` method performs a straightforward comparison using default settings:

```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;

private static void BasicComparison(string sourcePath, string targetPath, string resultPath)
{
    EnsureFileExists(sourcePath, "source Excel file");
    EnsureFileExists(targetPath, "target Excel file");

    using (var comparer = new Comparer(sourcePath))
    {
        comparer.Add(targetPath);
        comparer.Compare(resultPath);
    }

    Console.WriteLine("Basic comparison completed.");
}
```

This code uses GroupDocs.Comparison's `Comparer` class to compare two Excel files with default styling, highlighting all differences automatically.

### Styled Comparison with Custom Formatting

The `StyledComparison` method applies custom styling and generates a summary page:

```csharp
private static void StyledComparison(string sourcePath, string targetPath, string resultPath)
{
    EnsureFileExists(sourcePath, "source Excel file");
    EnsureFileExists(targetPath, "target Excel file");

    var compareOptions = new CompareOptions
    {
        InsertedItemStyle = new StyleSettings()
        {
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
            IsBold = true,
            IsItalic = true
        },
        DeletedItemStyle = new StyleSettings()
        {
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
            IsBold = true,
            IsItalic = true
        },
        ChangedItemStyle = new StyleSettings()
        {
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
            IsBold = true,
            IsItalic = true
        },
        GenerateSummaryPage = true,
        ShowDeletedContent = false,
    };

    using (var comparer = new Comparer(sourcePath))
    {
        comparer.Add(targetPath);
        comparer.Compare(resultPath, compareOptions);
    }

    Console.WriteLine("Styled comparison completed (changes highlighted, summary page generated).");
}
```

This example demonstrates GroupDocs.Comparison's `CompareOptions` and `StyleSettings` classes for custom formatting. Inserted cells appear in green, deleted cells in brown, and changed cells in firebrick, all with bold, italic, and underline formatting.

### Hide Inserted Content

The `HideInsertedContentComparison` method focuses on deletions and modifications:

```csharp
private static void HideInsertedContentComparison(string sourcePath, string targetPath, string resultPath)
{
    EnsureFileExists(sourcePath, "source Excel file");
    EnsureFileExists(targetPath, "target Excel file");

    var compareOptions = new CompareOptions
    {
        ShowInsertedContent = false
    };

    using (var comparer = new Comparer(sourcePath))
    {
        comparer.Add(targetPath);
        comparer.Compare(resultPath, compareOptions);
    }

    Console.WriteLine("Comparison completed (inserted content hidden).");
}
```

By setting `ShowInsertedContent` to `false`, this sample suppresses the display of any newly added cells in the result document, making deletions and modifications more prominent.

### Hide Deleted Content

The `HideDeletedContentComparison` method focuses on additions and modifications:

```csharp
private static void HideDeletedContentComparison(string sourcePath, string targetPath, string resultPath)
{
    EnsureFileExists(sourcePath, "source Excel file");
    EnsureFileExists(targetPath, "target Excel file");

    var compareOptions = new CompareOptions
    {
        ShowDeletedContent = false
    };

    using (var comparer = new Comparer(sourcePath))
    {
        comparer.Add(targetPath);
        comparer.Compare(resultPath, compareOptions);
    }

    Console.WriteLine("Comparison completed (deleted content hidden).");
}
```

Setting `ShowDeletedContent` to `false` removes any visual indication of deleted cells, highlighting only additions and changes.

### Leave Gaps for Deleted Content

The `LeaveGapsComparison` method preserves document structure:

```csharp
private static void LeaveGapsComparison(string sourcePath, string targetPath, string resultPath)
{
    EnsureFileExists(sourcePath, "source Excel file");
    EnsureFileExists(targetPath, "target Excel file");

    var compareOptions = new CompareOptions
    {
        LeaveGaps = true
    };

    using (var comparer = new Comparer(sourcePath))
    {
        comparer.Add(targetPath);
        comparer.Compare(resultPath, compareOptions);
    }

    Console.WriteLine("Comparison completed (gaps left for deleted content).");
}
```

Enabling `LeaveGaps` retains empty cells where deletions occurred, keeping the spreadsheet's layout intact and making the missing content immediately visible.

### Hide Both Inserted and Deleted Content

The `HideBothContentComparison` method shows only modifications:

```csharp
private static void HideBothContentComparison(string sourcePath, string targetPath, string resultPath)
{
    EnsureFileExists(sourcePath, "source Excel file");
    EnsureFileExists(targetPath, "target Excel file");

    var compareOptions = new CompareOptions
    {
        ShowInsertedContent = false,
        ShowDeletedContent = false,
        LeaveGaps = true
    };

    using (var comparer = new Comparer(sourcePath))
    {
        comparer.Add(targetPath);
        comparer.Compare(resultPath, compareOptions);
    }

    Console.WriteLine("Comparison completed (both inserted and deleted content hidden, gaps left).");
}
```

Both `ShowInsertedContent` and `ShowDeletedContent` are disabled, while `LeaveGaps` remains true to keep the layout. The result highlights only cells that changed value, ideal for change-impact analysis.

### License Management

Apply the GroupDocs.Comparison license before performing comparisons:

```csharp
private static void ApplyLicense()
{
    string licensePath = "path to your license file";
    License license = new License();
    license.SetLicense(licensePath);
}
```

Update the `licensePath` variable with the path to your license file. Without a valid license, the library runs in evaluation mode with limited capabilities.

### File Validation

The `EnsureFileExists` helper method validates file presence:

```csharp
private static void EnsureFileExists(string path, string description)
{
    if (!File.Exists(path))
    {
        throw new FileNotFoundException($"The {description} was not found. Path: {path}", path);
    }
}
```

This helper validates file existence before any comparison operation, providing a clear exception message that aids debugging.

## Running the Examples

1. Place your Excel files in the `sample-files` directory:
   - `source.xlsx` - The original Excel file
   - `target.xlsx` - The modified Excel file to compare against

2. Update the license path in `Program.cs`:
   ```csharp
   string licensePath = "path to your license file";
   ```

3. Run the project:
   ```bash
   dotnet run
   ```

4. Check the `output` directory for comparison results:
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
- For detailed examples and advanced scenarios, see the [full repository](https://github.com/groupdocs-comparison/net-excel-comparison-sample).

## See Also

- [Compare Documents]({{< ref "comparison/net/comparison-basic/compare-documents" >}})
- [Customize Changes Styles]({{< ref "comparison/net/advanced-usage/comparison/customize-changes-styles" >}})
- [Compare Excel Spreadsheets: Advanced Cell-by-Cell Analysis with C#](https://blog.groupdocs.com/comparison/compare-excel-spreadsheets-advanced-cell-by-cell-analysis-csharp/)
