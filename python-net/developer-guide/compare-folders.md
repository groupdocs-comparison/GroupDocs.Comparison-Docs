---
id: compare-folders
url: comparison/python-net/developer-guide/compare-folders
title: Compare Folders
linkTitle: Compare folders
weight: 5
description: "Compare two folders to detect added, deleted, and modified files using the directory_compare option of GroupDocs.Comparison for Python via .NET."
keywords: directories comparison, folder comparison, compare directories, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-folders/
    - /comparison/python-net/advanced-usage/compare-folders/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare directories (folders) natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare directories (folders) in Python
    description: Learn how to compare directories in Python step by step
    steps:
      - name: Configure CompareOptions for directory comparison
        text: Create CompareOptions and set directory_compare to True.
      - name: Create a Comparer for the source folder
        text: Pass the source folder path and the CompareOptions to the Comparer constructor.
      - name: Add the target folder
        text: Call add() with the target folder path and the CompareOptions.
      - name: Compare folders
        text: Call compare_directory() with the result file path and the CompareOptions.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can compare two folders, surface which files were added, deleted, or modified, and produce either a `TXT` or `HTML` report.

Steps:

1. Instantiate `CompareOptions`.
2. Set `directory_compare = True`.
3. Optionally set `folder_comparison_extension` to `FolderComparisonExtension.HTML` for an HTML report (the default is TXT).
4. Optionally set `show_only_changed = True` to filter out unchanged items.
5. Create `Comparer` with the source folder path and the `CompareOptions`.
6. Call `add()` with the target folder and the same `CompareOptions`.
7. Call `compare_directory()` with the result file path and the `CompareOptions`.

## Example: Compare two folders

The example below uses the bare folder names `SourceFolder` and `TargetFolder` rather than `./SourceFolder` so that the example-runner can detect them as shared sample directories. In your own code you can use any absolute or relative path — `./source-folder`, `/home/me/projects/src`, etc.

{{< tabs "compare-folders">}}
{{< tab "compare_folders.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions, FolderComparisonExtension

def compare_folders():
    compare_options = CompareOptions()
    compare_options.directory_compare = True
    compare_options.folder_comparison_extension = FolderComparisonExtension.HTML
    compare_options.show_only_changed = True

    with Comparer("SourceFolder", compare_options) as comparer:
        comparer.add("TargetFolder", compare_options)
        comparer.compare_directory("./result.html", compare_options)
        print("Folders compared successfully. Check output in result.html.")

if __name__ == "__main__":
    compare_folders()
```
{{< /tab >}}
{{< tab "result.htmlResult.html" >}}  
```text
<!DOCTYPE html><style>
details {
   padding-left: 20px;
}
details details 
   padding-left: calc(100 % -20px);
}
details summary {
    padding-left: 20px;
    cursor: pointer;
[TRUNCATED]
```
[Download full output](/comparison/python-net/_output_files/developer-guide/compare-folders/compare_folders/result.htmlResult.html)
{{< /tab >}}
{{< /tabs >}}

Replace `./SourceFolder` and `./TargetFolder` with the directories you want to compare.

The following images show the comparison results:

| Result in HTML | Result in TXT |
| --- | --- |
| ![](/comparison/python-net/images/result-comparison-folders-html.png) | ![](/comparison/python-net/images/result-comparison-folders-txt.png) |
