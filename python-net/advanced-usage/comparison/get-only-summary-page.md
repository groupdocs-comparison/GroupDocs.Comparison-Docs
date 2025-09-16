---
id: get-only-summary-page
url: comparison/python-net/get-only-summary-page
title: Get only summary page
weight: 9
description: Learn how to generate only the summary page in the comparison result using GroupDocs.Comparison for Python via .NET.
keywords: Summary page, compare options, ShowOnlySummaryPage, GroupDocs.Comparison Python
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
    name: How to get only summary page in Python
    description: Learn how to get only the summary page in Python step by step
    steps:
      - name: Create comparer and load source
        text: Instantiate Comparer with a source path or stream.
      - name: Add target file
        text: Add the target document using add().
      - name: Configure options
        text: Set ShowOnlySummaryPage = True in CompareOptions.
      - name: Compare documents
        text: Call compare() with the options to generate the result.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can generate only the summary page with high-level statistics and change counts.

## Get only summary page

Enable summary-only output to reduce file size and focus on key metrics.

```python
import groupdocs.comparison as gc

with gc.Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    options = gc.CompareOptions()
    options.show_only_summary_page = True
    comparer.compare("result.docx", options)
```

🔹 Use case: Share a concise overview of differences without exposing full document content.

The result is as follows:

![](/comparison/python-net/images/get-only-summary-page.png)


