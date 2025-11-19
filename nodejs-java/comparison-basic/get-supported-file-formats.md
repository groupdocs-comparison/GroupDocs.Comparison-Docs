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
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get the list of all [supported file formats]({{< ref "comparison/nodejs-java/getting-started/supported-document-formats.md" >}}).

The following code snippet shows how to obtain a list of supported file formats and print them to the console.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Get a collection of all supported file types
const fileTypes = groupdocs.FileType.getSupportedFileTypes();

// Iterate through the collection and print each supported format
let count = 0;
while (fileTypes.size() > count) {
  console.log(fileTypes.get(count).toString());
  count++;
}

// Exit the process when enumeration is complete
process.exit(0);
```

This example:

1. Calls `getSupportedFileTypes` on the `FileType` class to retrieve supported formats.
2. Iterates through the returned collection of `FileType` objects and writes their string representations to the console.

The result is as follows:

![](/comparison/nodejs-java/images/get-supported-formats.png)
