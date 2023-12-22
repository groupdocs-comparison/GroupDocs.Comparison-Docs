---
id: get-file-info
url: comparison/nodejs-java/get-file-info
title: Get file info
weight: 2
description: "This article explains how to detect document file type, size and calculate pages count with GroupDocs.Comparison."
keywords: Get file info, Get File Type, Page count, File size
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: Get Comparer file info in JavaScriptScript
    description: Get Comparer file info in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Create a file info object
        text: Call the GetDocumentInfo method on the Source field of the comparer object and assign the result to a file info object of the IDocumentInfo class.
      - name: Get file information
        text: To get general information about a file, access the required field using the file info object. To get information about a particular page, use the PagesInfo field with the required page index and access the required field after that.
---

With [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) you can retrieve the following information about a file:

*   `FileType`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/filetype/)--> represents the document file type (PDF, Word document, Excel spreadsheet, PowerPoint presentation, image etc.).
*   `PageCount`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/pagecount/)--> represents the number of pages in a document.
*   `FileSize`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/size/)--> represents the document file size.
*   `PagesInfo`<!--](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.interfaces/idocumentinfo/pagesinfo/)--> represents the page information.

The following code samples show how to get file information:

## Get file info for the file from a local disk

```javascript
const comparer = new groupdocs.comparison.Comparer(Constants.SOURCE_WORD);

let info = await comparer.getSource().getDocumentInfo();

console.log(`\nFile type: ${info.getFileType().getFileFormat()}`);
console.log(`Number of pages: ${info.getPageCount()}`);
console.log(`Document size: ${info.getSize()} bytes`);
```

The result is as follows:

![](/comparison/nodejs-java/images/get-file-info.png)

## Get file info for the file from a stream

```javascript
const comparer = new groupdocs.comparison.Comparer(new FileInputStream(Constants.SOURCE_WORD));

let info = await comparer.getSource().getDocumentInfo();

console.log(`\nFile type: ${info.getFileType().getFileFormat()}`);
console.log(`Number of pages: ${info.getPageCount()}`);
console.log(`Document size: ${info.getSize()} bytes`);
```

