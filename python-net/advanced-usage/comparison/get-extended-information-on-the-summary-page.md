---
id: get-extended-information-on-the-summary-page
url: comparison/python-net/get-extended-information-on-the-summary-page
title: Get extended information on the summary page
weight: 10
description: Learn how to enable extended information on the summary page using GroupDocs.Comparison for Python via .NET.
keywords: summary page, extended information, ExtendedSummaryPage, GroupDocs.Comparison Python
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
    name: How to get extended information on the summary page in Python
    description: Learn how to get extended information on the summary page in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target file
        text: Add the target path or stream using add().
      - name: Configure options
        text: Set ExtendedSummaryPage = True in CompareOptions.
      - name: Compare documents
        text: Call compare() with options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can generate a summary page with additional statistics about the comparison.

## Enable extended information on the summary page

Include extended statistics along with the standard summary page.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.extended_summary_page = True
    comparer.compare("result.docx", options)
```

🔹 Use case: Provide management with detailed metrics beyond the standard summary counts.


