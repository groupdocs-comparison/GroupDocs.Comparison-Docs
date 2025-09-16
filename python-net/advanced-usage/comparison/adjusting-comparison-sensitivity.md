---
id: adjusting-comparison-sensitivity
url: comparison/python-net/adjusting-comparison-sensitivity
title: Adjusting comparison sensitivity
weight: 2
description: Learn how to adjust comparison sensitivity to balance speed and accuracy using GroupDocs.Comparison for Python via .NET.
keywords: Comparison sensitivity, sensitivity level, tables sensitivity, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
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
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target path or stream using add().
      - name: Configure sensitivity
        text: Set sensitivity_of_comparison and optionally sensitivity_of_comparison_for_tables.
      - name: Compare documents
        text: Call compare() with options to generate the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) supports sensitivity levels from 0 (fastest, least detailed) to 100 (slowest, most detailed).

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to adjust comparison sensitivity to achieve the necessary balance between the comparison speed and accuracy. Possible comparison sensitivity values range is from **0** to **100**.

- **Minimal value** (**0**) sets sensitivity to a minimal value provides the fastest comparison speed, but it may produce worst comparison quality. If there is at least one common letter in two compared words then these words are not treated as fully inserted and deleted
- **Value by default** means **75**. Comparison occurs when the percentage of deleted or inserted elements in relation to all elements does not exceed 75%
- **Maximum value** (**100**) provides the best quality, but slowest comparison speed. Comparison occurs at any length of a common sub-sequence of two compared objects

For better understanding about how comparison algorithms work let's suppose we have two strings:

| Strings                          |
| -------------------------------- |
| ` 1``. It is our equity poetry ` |
| ` 2``. Jack is a glad calf `     |

So, these strings have two common sub-sequences: "**is**" word and 4 space symbols.   
Common sub-sequence is - " **is** " and its length is 4 symbols (there are 2 space symbols in it).  
Length of inserted sub-sequence is 13 symbols - **Jackagladcalf**  
Removed sub-sequence length is 17 symbols - **Itourequitypoetry\*_  
Lets calculate percent of removed and inserted symbols: (17 + 13) / (17 + 13 + 4) * 100 = 88%

*Case 1.* If **SensitivityOfComparison = 80%** comparison of these two strings produces the next result:  
**Jack is a glad calfIt is our equity poetry**

Because calculated percent of removed and inserted symbols equals **88%** and it is bigger than value of **SensitivityOfComparison** equals **80%** then this common sub-sequence will be not taken into account.  
The first string considered completely removed and the second string considered completely inserted. The same results are produced for any calculated percent less than **83%**.

_Case 2._ If **SensitivityOfComparison = 89%**, comparison of these two strings produces the next result:  
**JackIt is aour gladequity calfpoetry**

Common sub-sequence was found, because **89% > 88%**. The same results are produced for any calculated percent bigger than **88%**.

## Adjust overall sensitivity

Increase sensitivity to detect smaller changes or reduce it for faster processing.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.sensitivity_of_comparison = 100
    comparer.compare("result.docx", options)
```

🔹 Use case: Maximize accuracy for legal or scientific documents where subtle edits matter.

## Adjust sensitivity for tables

Use a separate sensitivity value for tabular content.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.sensitivity_of_comparison = 100
    options.sensitivity_of_comparison_for_tables = 75
    comparer.compare("result.docx", options)
```

🔹 Use case: Tune detection granularity in tables while keeping overall sensitivity high.


