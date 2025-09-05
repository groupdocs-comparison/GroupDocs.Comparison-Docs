---
id: get-result-document-object
title: Get comparison result as an object model
toc: true
url: comparison/python-net/get-result-document-object
weight: 4
description: Learn how to get the result document object model with GroupDocs.Comparison for Python via .NET
hideChildren: false
keywords: Compare documents, result document object, GroupDocs.Comparison for Python via .NET, comparison result object model
productName: GroupDocs.Comparison for Python via .NET
structuredData:
  application:
    description: Compare documents natively with high performance using Python language and GroupDocs.Comparison for Python via .NET
    name: Document Comparison
    productCode: comparison
    productPlatform: python-net
  howTo:
    description: Learn how to get comparison result document object in Python step by step
    name: How to get comparison result document object in Python
    steps:
    - name: Create an object and load source file
      text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specifyn absolute or relative file path as per your requirements.
    - name: Load target file
      text: Add the path to the target file using the add method.
    - name: Compare documents
      text: Call the compare method of your object and get the result document object.
  showOrganization: true
  showVideo: true
---

# Get comparison result as an object model in Python

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) allows you to obtain the **result document object model** after comparing files.

To get the result document object, follow these steps:

1.  Instantiate the `Comparer` object. Provide the source document path
    or stream.\
2.  Call the `add()` method and provide the target document path or
    stream.\
3.  Call the `compare()` method and assign its return value to a
    `Document` object.

With the `Document` object, you can access the file name, detected changes, stream, and other information. The object model is fully compatible with Aspose libraries, so you can also use it for advanced
processing.

## Example: Obtain the result document object and get changes

``` python
import groupdocs.comparison as gc

source_path = "source.docx"
target_path = "target.docx"
result_path = "result.docx"

# Initialize comparer with the source document
with gc.Comparer(source_path) as comparer:
    # Add target document
    comparer.add(target_path)

    # Perform comparison and get the result Document object
    result_document = comparer.compare(result_path)

    # Iterate through detected changes
    for change in result_document.changes:
        print("\033[92mSource text:\033[0m", change.source_text)  # green
        print("\033[94mTarget text:\033[0m", change.target_text, "\n")  # blue

```

The result will list source and target text segments for each detected
change.

