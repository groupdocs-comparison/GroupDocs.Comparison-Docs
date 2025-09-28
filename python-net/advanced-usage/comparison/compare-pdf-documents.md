---
id: compare-pdf-documents
url: comparison/python-net/compare-pdf-documents
title: Compare PDF documents
weight: 3
description: "Learn how to compare PDF documents using GroupDocs.Comparison for Python via .NET. Detect and highlight text and formatting differences between PDF files with Python code."
keywords: Compare PDF in Python, Compare PDF files, GroupDocs.Comparison for Python via .NET, Compare PDF documents, Document comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Compare PDF documents
    description: Compare PDF documents natively with high performance using Python language and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: True
  howTo:
    name: How to Compare PDF documents in Python
    description: Learn how to compare PDF documents in Python step by step
    steps:
      - name: Create a comparer instance
        text: Instantiate the Comparer class and load the source PDF file.
      - name: Add target files
        text: Add one or more PDF files to compare against the source.
      - name: Run comparison
        text: Call the compare method to generate the result file with highlighted changes.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) makes it simple to **compare PDF documents** and identify changes in text, formatting, annotations, and structure.  
This is particularly useful for reviewing contracts, business agreements, and legal documents where precise difference detection is critical.

With the API, you can:

- Compare two or more **PDF files**  
- Highlight differences such as insertions, deletions, and formatting updates  
- Save the comparison results to a new PDF or another supported format  

## How to compare PDF documents in Python

To compare PDF files, follow these steps:

1. Create an instance of the `Comparer` class and load the source PDF file.  
2. Add one or more target PDF files.  
3. Call the `compare()` method and provide the result file path.  

## Example: Compare PDF documents

```python
import groupdocs.comparison as gc

source_path = "source.pdf"
target_path = "target.pdf"
result_path = "result.pdf"

# Initialize the comparer with the source PDF document
with gc.Comparer(source_path) as comparer:

    # Add the target PDF document
    comparer.add(target_path)

    # Compare and save the results
    comparer.compare(result_path)
```