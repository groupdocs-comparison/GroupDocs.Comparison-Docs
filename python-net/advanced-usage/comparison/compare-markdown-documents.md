---
id: compare-markdown-documents
url: comparison/python-net/compare-markdown-documents
title: Compare Markdown documents
weight: 1
description: "Learn how to compare Markdown (.md) documents using GroupDocs.Comparison for Python via .NET. Detect and highlight differences between Markdown files with simple Python code."
keywords: Compare Markdown in Python, Compare .md files, GroupDocs.Comparison for Python via .NET, Document difference detection, Compare Markdown documents
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Compare Markdown documents
    description: Compare Markdown documents natively with high performance using Python language and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: True
  howTo:
    name: How to Compare Markdown documents in Python
    description: Learn how to compare Markdown documents in Python step by step
    steps:
      - name: Create a comparer instance
        text: Instantiate the Comparer class and load the source Markdown file.
      - name: Add target files
        text: Add one or more Markdown files to compare against the source.
      - name: Run comparison
        text: Call the compare method to generate the result file with highlighted changes.
---

# Compare Markdown documents in Python

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) provides a simple way to **compare Markdown documents** and highlight differences in content, formatting, and structure. This is especially useful for developers working with versioned documentation, README files, or technical writing where precise change detection is needed.

With the API, you can:

- Compare two or more **Markdown (.md) files**  
- Highlight insertions, deletions, and modifications  
- Export results to a single Markdown file or another supported format  

## How to compare Markdown files in Python

To compare Markdown documents, follow these steps:

1. Create an instance of the `Comparer` class and load the source Markdown file.  
2. Add one or more target Markdown files for comparison.  
3. Call the `compare()` method and provide the path for the result file.  

## Example: Compare Markdown documents

```python
import groupdocs.comparison as gc

source_path = "source.md"
target_path = "target.md"
result_path = "result.md"

# Initialize the comparer with the source Markdown document
with gc.Comparer(source_path) as comparer:

    # Add the target Markdown document
    comparer.add(target_path)

    # Compare and save the results
    comparer.compare(result_path)
```