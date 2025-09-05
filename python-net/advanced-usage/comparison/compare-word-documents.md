---
id: compare-word-documents
url: comparison/python-net/compare-word-documents
title: Compare Word documents
weight: 2
description: "Learn how to compare Word (.doc, .docx) documents using GroupDocs.Comparison for Python via .NET. Detect and highlight text and formatting differences with simple Python code."
keywords: Compare Word in Python, Compare DOCX files, GroupDocs.Comparison for Python via .NET, Compare Word documents, Document comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Compare Word documents
    description: Compare Word documents natively with high performance using Python language and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: True
  howTo:
    name: How to Compare Word documents in Python
    description: Learn how to compare Word documents in Python step by step
    steps:
      - name: Create a comparer instance
        text: Instantiate the Comparer class and load the source Word file.
      - name: Add target files
        text: Add one or more Word documents to compare against the source.
      - name: Run comparison
        text: Call the compare method to generate the result file with highlighted changes.
---

# Compare Word documents in Python

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) allows developers to easily **compare Word documents** and detect differences in text, formatting, styles, and structure.  
This is useful for legal contracts, business reports, and collaborative editing workflows where accurate change tracking is essential.

With the API, you can:

- Compare **DOC and DOCX files**  
- Highlight insertions, deletions, and formatting changes  
- Export results as a Word document or another supported format  

## How to compare Word documents in Python

To compare Word files, follow these steps:

1. Create an instance of the `Comparer` class and load the source Word document.  
2. Add one or more target Word documents.  
3. Call the `compare()` method to generate the result file.  

## Example: Compare Word documents

```python
import groupdocs.comparison as gc

source_path = "source.docx"
target_path = "target.docx"
result_path = "result.docx"

# Initialize the comparer with the source Word document
with gc.Comparer(source_path) as comparer:

    # Add the target Word document
    comparer.add(target_path)

    # Compare and save the results
    comparer.compare(result_path)
```