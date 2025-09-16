---
id: specify-file-type-manually
url: comparison/python-net/specify-file-type-manually
title: Specify file type for comparison manually
weight: 17
description: Learn how to manually specify the file type when comparing documents using GroupDocs.Comparison for Python via .NET.
keywords: File type, LoadOptions, Compare documents, GroupDocs.Comparison Python
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
    name: How to specify file type for comparison manually in Python
    description: Learn how to specify file type for comparison manually in Python step by step
    steps:
      - name: Create LoadOptions
        text: Create LoadOptions and set FileType for both source and target.
      - name: Create comparer and load source
        text: Instantiate Comparer with source path or stream and LoadOptions.
      - name: Add target
        text: Add target path or stream with the same LoadOptions.
      - name: Compare documents
        text: Call compare() to get the result document.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) allows you to manually specify the file type for each input using `LoadOptions`.

## Compare documents from local disk and specify file type manually

Explicitly set input `FileType` when the extension is ambiguous or missing.

```python
import groupdocs.comparison as gc

source_path = "source.docx"
target_path = "target.docx"
result_path = "result.docx"

# Create load options and set the file type
load_options = gc.LoadOptions()
load_options.file_type = gc.FileType.DOCX

with gc.Comparer(source_path, load_options) as comparer:
    comparer.add(target_path, load_options)
    comparer.compare(result_path)
```

🔹 Use case: Process files with incorrect or missing extensions by forcing the correct type.


