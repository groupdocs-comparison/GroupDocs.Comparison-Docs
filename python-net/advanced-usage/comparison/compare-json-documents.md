---
id: compare-json-documents
title: Compare JSON documents
url: comparison/python-net/compare-json-documents
weight: 6
description: Learn how to compare JSON files using GroupDocs.Comparison for Python via .NET. Detect differences in nested JSON objects,  arrays, and data types with visual and textual comparison modes.
hideChildren: false
keywords: Compare JSON in Python, Compare JSON files, JSON difference detection, GroupDocs.Comparison for Python via .NET, JSON comparison API
productName: GroupDocs.Comparison for Python via .NET
toc: true
structuredData:
  application:
    description: Compare JSON files with high precision using Python language and GroupDocs.Comparison for Python via .NET
    name: Compare JSON documents
    productCode: comparison
    productPlatform: python-net
  howTo:
    description: Learn how to compare JSON documents in Python step by step
    name: How to Compare JSON files in Python
    steps:
    - name: Create a comparer instance
      text: Instantiate the Comparer class and load the source JSON file.
    - name: Add target files
      text: Add one or more JSON documents to compare against the source.
    - name: Run comparison
      text: Call the compare method and generate the result file with highlighted differences.
  showOrganization: true
  showVideo: true
---

# Compare JSON documents in Python

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) allows developers to easily **compare JSON files** and detect differences in deeply nested objects, arrays, data types, and structures.\
This is useful for validating APIs, configurations, and large datasets where accuracy is critical.

With the API, you can:

-   Compare two or more **JSON documents**\
-   Highlight differences in nested objects, arrays, and values\
-   Use **visual mode** (HTML report with highlights) or **textual mode** (JSON diff output)\
-   Apply or reject detected changes programmatically

### Example: Compare JSON files in Python

```python
import groupdocs.comparison as gc

source_path = "source.json"
target_path = "target.json"
result_path = "result.json"

# Initialize the comparer with the source JSON document
with gc.Comparer(source_path) as comparer:

    # Add the target JSON document
    comparer.add(target_path)

    # Compare and save the result file
    comparer.compare(result_path)
```

The resulting `result.json` will contain the combined JSON structure with **differences highlighted inline**.

## Visual comparison mode

Generate a **single HTML report** that highlights changes visually:\
- **Deleted items** appear in red\
- **Inserted or modified items** appear in blue

```python
import groupdocs.comparison as gc
from groupdocs.comparison.options import CompareOptions

source_path = "source.json"
target_path = "target.json"
result_path = "result.html"

options = CompareOptions()
options.generate_summary_page = True  # Include summary of changes

with gc.Comparer(source_path) as comparer:
    comparer.add(target_path)
    comparer.compare(result_path, options)
```

## Textual comparison mode

Produce a **merged JSON file** with inline diff markers:\
- Deleted content is wrapped in `[ ]`\
- Inserted content is wrapped in `( )`

```python
import groupdocs.comparison as gc
from groupdocs.comparison.options import CompareOptions

source_path = "source.json"
target_path = "target.json"
result_path = "result.json"

options = CompareOptions()
options.detect_style_changes = True
options.show_deleted_content = True

with gc.Comparer(source_path) as comparer:
    comparer.add(target_path)
    comparer.compare(result_path, options)
```

## Applying or rejecting changes

You can also programmatically **accept or reject** detected changes in
JSON comparison results:

```python
import groupdocs.comparison as gc

source_path = "source.json"
target_path = "target.json"
result_path = "result.json"

with gc.Comparer(source_path) as comparer:
    comparer.add(target_path)

    # Run comparison first
    comparer.compare(result_path)

    # Iterate over detected changes
    for change in comparer.get_changes():
        if change.comparison_action == "Deleted":
            change.comparison_action = "Reject"  # reject deletion
        else:
            change.comparison_action = "Accept"  # accept additions/updates

    # Apply the updated decisions
    comparer.apply_changes(result_path)
```
