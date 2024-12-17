---
id: load-file-from-stream
url: comparison/python-net/load-file-from-stream
title: Load file from stream
weight: 2
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from a stream when using GroupDocs.Comparison for Python via .NET."
keywords: Load document from stream, Load document with GroupDocs.Comparison
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
    name: How to load a file from a stream in Python
    description: Learn how to load a file from a stream in Python step by step
    steps:
      - name: Create an object and specify source file stream
        text: Create an object of Comparer class. The constructor takes the source file stream. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the target file stream using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

To avoid the saving stream as a file, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to work with file streams directly.

To work with a stream, follow these steps:

1.  Obtain a file stream.
2.  Pass the opened source file stream to the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> class constructor or pass the opened target file stream to the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method.

The following code snippet shows how to load a file from a stream:

```python
import groupdocs.comparison as gc

def load_file_from_stream(output_file_path, source_file_path, target_file_path):  
    with open(source_file_path, 'rb') as source_stream:
        with gc.Comparer(source_stream) as comparer:
            # Add the target document for comparison using a file stream
            with open(target_file_path, 'rb') as target_stream:
                comparer.add(target_stream)
            
                # Compare the documents and save the result
                comparer.compare(output_file_path)
    
    # Log the success message with the output file path
    print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
```
