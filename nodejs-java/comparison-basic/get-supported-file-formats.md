---
id: get-supported-document-formats
url: comparison/nodejs-java/get-supported-document-formats
title: Get supported file formats
weight: 1
description: "This article explains how to obtain supported file formats list when viewing documents with GroupDocs.Comparison within your Java applications."
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
    name: Get file formats supported by Comparison in JavaScriptScript
    description: Get file formats supported by Comparison Java step by step
    steps:
      - name: Get an array of supported file types
        text: Call the GetSupportedFileTypes method of the FileType object. Additionally, the OrderBy method can sort the resulting array, using lambda expression as the parameter. The result is a collection of a FileType data type, with the possibility of iteration.
      - name: Output the supported file types
        text: Iterate through the collection, to output the supported data types, for example, to the console.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get the list of all [supported file formats]({{< ref "comparison/nodejs-java/getting-started/supported-document-formats.md" >}}). To do this, follow these steps:

1. Call the `getSupportedFileTypes`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/filetype/#getSupportedFileTypes- -)--> method of the `FileType`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/filetype/)--> class.
2. Enumerate through the collection of the `FileType`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/filetype/)--> objects.

The following code snippet shows how to obtain a list of supported file formats:


```javascript
fileTypes = await groupdocs.comparison.FileType.getSupportedFileTypes();
let count = 0;
while (fileTypes.size() > count) 
{
  console.log(fileTypes.get(count).toString());
  count++;
}
```

The result is as follows:

![](/comparison/nodejs-java/images/get-supported-formats.png)
