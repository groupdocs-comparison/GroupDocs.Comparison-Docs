---
id: how-to-merge-source-code-files
url: comparison/python-net/developer-guide/comparing-documents/how-to-merge-source-code-files
title: How to Merge Source Code Files
linkTitle: Merge source code files
weight: 25
description: "Selectively accept or reject detected changes to merge two versions of a source code file using GroupDocs.Comparison for Python via .NET."
keywords: merge code, accept changes, reject changes, apply changes, ComparisonAction, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/how-to-merge-source-code-files/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to merge source code files in Python
    description: Learn how to merge source code files in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source code file path.
      - name: Add target
        text: Add the target source code file.
      - name: Compare and get changes
        text: Call compare() then get_changes().
      - name: Accept or reject each change
        text: Set comparison_action on each ChangeInfo to ACCEPT or REJECT.
      - name: Apply changes
        text: Call apply_changes() with ApplyChangeOptions(changes=...) to produce the merged file.
---

GroupDocs.Comparison can merge source code files by exposing each detected change as a `ChangeInfo` and letting you set `comparison_action` to `ComparisonAction.ACCEPT` (apply without highlighting) or `ComparisonAction.REJECT` (discard from the result).

## Steps to apply or reject changes

1. Instantiate `Comparer` with the source document path or stream.
2. Call `add()` with the target document.
3. Call `compare()` to run the comparison.
4. Call `get_changes()` to retrieve the change collection.
5. Set `comparison_action` on each change to `ComparisonAction.ACCEPT` or `ComparisonAction.REJECT`.
6. Call `apply_changes()` with `ApplyChangeOptions(changes=...)` to produce the merged file.

## Example scenario

You need to compare several versions of source code files and selectively accept or discard changes made by different authors.

Before comparison:

![Source file](/comparison/python-net/images/how-to-merge-source-code-file-source.png)
![Target file](/comparison/python-net/images/how-to-merge-source-code-file-target.png)

The differences show two methods in `source.cs`: `AddNumbers` and `Sum`. Without using `comparison_action`, all changes are auto-applied to the output and both methods are removed. With `comparison_action` you can choose which method survives.

## Example: Merge two source code files

{{< tabs "merge-source-code">}}
{{< tab "merge_source_code_files.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import ApplyChangeOptions
from groupdocs.comparison.result import ComparisonAction

def merge_source_code_files():
    with Comparer("./source.cs") as comparer:
        comparer.add("./target.cs")
        comparer.compare("./result.cs")
        changes = comparer.get_changes()

        # Accept the first 10 changes; reject the rest
        for i, change in enumerate(changes):
            change.comparison_action = ComparisonAction.ACCEPT if i < 10 else ComparisonAction.REJECT

        with open("./result.cs", "wb") as result_file:
            comparer.apply_changes(result_file, ApplyChangeOptions(changes=changes))

if __name__ == "__main__":
    merge_source_code_files()
```
{{< /tab >}}
{{< tab "source.cs" >}}
{{< tab-text >}}
`source.cs` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/how-to-merge-source-code-files/source.cs) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.cs" >}}
{{< tab-text >}}
`target.cs` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/how-to-merge-source-code-files/target.cs) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.cs" >}}  
```text
Binary file (CS, 121 bytes)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/how-to-merge-source-code-files/merge_source_code_files/result.cs)
{{< /tab >}}
{{< /tabs >}}

## Result

The merged file marks deleted elements in red, added elements in blue, and modified elements in green. An accompanying HTML file highlights every changed code region.

| Result source code file | Result HTML file |
| --- | --- |
| ![](/comparison/python-net/images/how-to-merge-source-code-file-result-CS.png) | ![](/comparison/python-net/images/how-to-merge-source-code-file-result-HTML.png) |

As shown, only one of the two methods was removed.
