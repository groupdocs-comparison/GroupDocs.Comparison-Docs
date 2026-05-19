---
id: adjusting-comparison-sensitivity
url: comparison/python-net/developer-guide/comparing-documents/adjusting-comparison-sensitivity
title: Adjusting Comparison Sensitivity
linkTitle: Adjusting sensitivity
weight: 12
description: "Tune the comparison sensitivity (0–100) to balance speed against accuracy. Includes a separate sensitivity value for tables, using GroupDocs.Comparison for Python via .NET."
keywords: comparison sensitivity, sensitivity level, sensitivity_of_comparison, tables sensitivity, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/adjusting-comparison-sensitivity/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to adjust comparison sensitivity in Python
    description: Learn how to adjust comparison sensitivity in Python step by step
    steps:
      - name: Create a Comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure sensitivity
        text: Set sensitivity_of_comparison (and optionally sensitivity_of_comparison_for_tables) on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options to produce the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) supports comparison sensitivity values from **0** (fastest, least detailed) to **100** (slowest, most detailed). The default is **75**.

- **0** — fastest comparison; only fully-disjoint substrings are detected as inserts/deletes.
- **75** — the default. Sub-sequences that have more than 75% of their content inserted or deleted are treated as fully inserted or deleted.
- **100** — slowest comparison; any common sub-sequence is taken into account.

### Worked example

Consider these two strings:

| | |
| --- | --- |
| 1. | `It is our equity poetry` |
| 2. | `Jack is a glad calf` |

They share two common sub-sequences: the word `is` and three space characters. The common sub-sequence is " is " (length 4 including spaces). The inserted sub-sequence is **Jackagladcalf** (length 13). The removed sub-sequence is **Itourequitypoetry** (length 17). The percentage of removed and inserted symbols is `(17 + 13) / (17 + 13 + 4) * 100 = 88%`.

- **`sensitivity_of_comparison = 80`** — 88% > 80%, so the common sub-sequence is discarded. Result: `Jack is a glad calfIt is our equity poetry` (the first string is fully removed, the second fully inserted).
- **`sensitivity_of_comparison = 89`** — 88% < 89%, so the common sub-sequence is kept. Result: `JackIt is aour gladequity calfpoetry`.

## Example 1: Adjust overall sensitivity

Increase sensitivity to detect smaller changes; lower it for faster processing.

{{< tabs "sensitivity-overall">}}
{{< tab "adjust_comparison_sensitivity.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def adjust_comparison_sensitivity():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.sensitivity_of_comparison = 100
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    adjust_comparison_sensitivity()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/adjusting-comparison-sensitivity/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/adjusting-comparison-sensitivity/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/adjusting-comparison-sensitivity/adjust_comparison_sensitivity/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: maximise accuracy for legal or scientific documents where subtle edits matter.

## Example 2: Adjust sensitivity for tables

Tables can have their own sensitivity value, independent of the overall setting:

{{< tabs "sensitivity-tables">}}
{{< tab "adjust_comparison_sensitivity_tables.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def adjust_comparison_sensitivity_tables():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.sensitivity_of_comparison = 100
        options.sensitivity_of_comparison_for_tables = 75
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    adjust_comparison_sensitivity_tables()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/adjusting-comparison-sensitivity/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/adjusting-comparison-sensitivity/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/adjusting-comparison-sensitivity/adjust_comparison_sensitivity_tables/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: tune detection granularity in tables while keeping overall sensitivity high.
