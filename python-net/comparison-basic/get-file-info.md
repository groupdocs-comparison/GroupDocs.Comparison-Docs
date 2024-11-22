---
id: get-file-info
url: comparison/python-net/get-file-info
title: Get file info
weight: 2
description: "This article explains how to detect document file type, size and calculate pages count with GroupDocs.Comparison."
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
    name: Get Comparer file info in Python
    description: Get Comparer file info in Python step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Create a file info object
        text: Call the GetDocumentInfo method on the Source field of the comparer object and assign the result to a file info object of the IDocumentInfo class.
      - name: Get file information
        text: To get general information about a file, access the required field using the file info object. To get information about a particular page, use the PagesInfo field with the required page index and access the required field after that.
---

With [GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) you can retrieve the following information about a file:

*   `FileType`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/filetype/)--> represents the document file type (PDF, Word document, Excel spreadsheet, PowerPoint presentation, image etc.).
*   `PageCount`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/pagecount/)--> represents the number of pages in a document.
*   `FileSize`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/size/)--> represents the document file size.
*   `PagesInfo`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/pagesinfo/)--> represents the page information.

The following code samples show how to get file information:

## Get file info for the file from a local disk

```python
import groupdocs.comparison as gc

def run():
    comparer = gc.Comparer(sourcePath)

    info = comparer.source.get_document_info()

    print(info)
    
    print(f"\nFile type: {info.file_type.file_format}")
    print(f"Number of pages: {info.page_count}")
    print(f"Document size: {info.size} bytes")
    
    print("\nDocument info extracted successfully.")
```

The result is as follows:

![](/comparison/python-net/images/get-file-info.png)

## Get file info for the file from a stream

```python
import groupdocs.comparison as gc

def run():
    with open(sourcePath, 'rb') as source_stream:
        comparer = gc.Comparer(source_stream)

        info = comparer.source.get_document_info()
        
        print(f"\nFile type: {info.file_type.file_format}")
        print(f"Number of pages: {info.page_count}")
        print(f"Document size: {info.size} bytes")
        
        print("\nDocument info extracted successfully.")
```

