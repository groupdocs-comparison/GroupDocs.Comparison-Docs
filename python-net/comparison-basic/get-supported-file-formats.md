---
id: get-supported-document-formats
url: comparison/python-net/get-supported-document-formats
title: Get supported file formats
weight: 1
description: "This article explains how to obtain supported file formats list when viewing documents with GroupDocs.Comparison within your Python applications."
keywords: Get file info, Get File Type, Page count, File size
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
    name: Get file formats supported by Comparison in Python
    description: Get file formats supported by Comparison Python step by step
    steps:
      - name: Get an array of supported file types
        text: Call the GetSupportedFileTypes method of the FileType object. Additionally, the OrderBy method can sort the resulting array, using lambda expression as the parameter. The result is a collection of a FileType data type, with the possibility of iteration.
      - name: Output the supported file types
        text: Iterate through the collection, to output the supported data types, for example, to the console.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to get the list of all [supported file formats]({{< ref "comparison/python-net/getting-started/supported-document-formats.md" >}}). To do this, follow these steps:

1. Call the `getSupportedFileTypes`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.result/filetype/#getSupportedFileTypes- -)--> method of the `FileType`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.result/filetype/)--> class.
2. Enumerate through the collection of the `FileType`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.result/filetype/)--> objects.

The following code snippet shows how to obtain a list of supported file formats:


```python
import groupdocs.comparison as gc

def run():
    try:
        # Retrieve the supported file types
        supported_file_types = gc.result.FileType.get_supported_file_types()

        for file_type in sorted(supported_file_types, key=lambda x: x.extension):
            print(file_type)

        print("\nSupported file types retrieved successfully.")
        
    except Exception as error:
        print("An error occurred while retrieving supported file types:", error)
```

The result is as follows:

![](/comparison/python-net/images/get-supported-formats.png)
