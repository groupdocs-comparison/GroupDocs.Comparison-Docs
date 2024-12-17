---
id: load-file-from-local-disk
url: comparison/python-net/load-file-from-local-disk
title: Load file from local disk
weight: 1
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from local disk when using GroupDocs.Comparison for Python via .NET."
keywords: Load document from local disk, Load document from file path, Load document with GroupDocs.Comparison
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
    name: How Load file from local disk in Python
    description: Learn how to load a file from a local disk in Python step by step
    steps:
      - name: Create a string variable with the path to the file
        text: Create a string variable with the path to the source file. You may specify absolute or relative file paths as per your requirements.
      - name: Create an object and load the source file
        text: Create an object and load a source file by specifying in the parameter a string variable.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

When the source file is located on the local disk, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to load it using the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> class constructor by specifying an absolute or relative path. To load the target file located on the local disk, use the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify an absolute or relative path as the parameter.

The following code snippet shows how to load files from a local disk:

```python
import groupdocs.comparison as gc

def load_file_from_local_disk(output_file_path, source_file_path, target_file_path):  
    # Initialize comparer with the source document
    with gc.Comparer(source_file_path) as comparer:
        # Add the target document for comparison
        comparer.add(target_file_path)
        
        # Compare the documents and save the result
        comparer.compare(output_file_path)
    
    # Log the success message with the output file path
    print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
```