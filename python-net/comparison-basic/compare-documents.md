---
id: compare-documents
url: comparison/python-net/compare-documents
title: Compare documents
weight: 3
description: "This article demonstrates how to compare Word, Excel, PowerPoint, Outlook, OneNote, PDF, Image, HTML, AutoCAD, Visio, OpenDocument, OneNote documents using GroupDocs.Comparison for Python via .NET."
keywords: Compare documents, document comparison in Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python language and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: True
  howTo:
    name: How to compare documents in Python
    description: Learn how to compare documents in Python step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---


Change detection algorithms of [GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allow you to detect changes in different document parts and blocks:

*   Text blocks - paragraphs, words and characters
*   Tables
*   Images
*   Shapes etc.

GroupDocs.Comparison highlights detected changes with different colors:

*   Added – <font color="blue">**blue** </font>
*   Modified – <font color="green">**green**</font>
*   Style – <font color="green">**green**</font>
*   Deleted – <font color="red">**red**</font>

You can customize the changes styling scheme using different formatting - italic, bold, underlined, strike-through, etc.

To compare two documents, follow these steps:

1.   Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object with the source document path or stream.
2.   Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method and specify the target document path or stream.
3.   Call the `compare()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.

The following code snippets show how to compare two documents:

## Compare local documents

```python
import groupdocs.comparison as gc

# Initialize the comparer object with the source file path
with gc.Comparer(sourcePath) as comparer:

    # Add the target file for comparison and perform the compare operation
    comparer.add(targetPath)
    comparer.compare(output_file_name)
```

The output file is as follows:

![](/comparison/python-net/images/compare-documents.png)

## Compare documents from a stream

```python
import groupdocs.comparison as gc

def run():

    # Initialize the comparer object with the source file stream
    with open(sourcePath, 'rb') as source_stream:
        comparer = gc.Comparer(source_stream)

        # Add the target file for comparison from a stream and perform the compare operation
        with open(targetPath, 'rb') as target_stream:
            comparer.add(target_stream)
            comparer.compare(output_file_name)
```

