---
id: show-revisions
url: comparison/nodejs-java/show-revisions
title: Show Revisions
weight: 14
description: "This article explains how to customize the display of revisions in the output document in GroupDocs.Comparison for Node.js via Java."
keywords: ShowRevisions, revision
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
    name: How to show Revisions in JavaScript
    description: Learn how to show Revisions in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify ShowRevisions of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare and customize the visibility of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the visibility of revisions is enabled. To turn off the visibility of revisions, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/)--> object. Specify the source file path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target file path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/)--> object. Set the `ShowRevisions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowRevisions-boolean-)--> property to `false`.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/)--> object from the previous step.

The following code snippet shows how to disable the visibility of revisions:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);
const options = new groupdocs.comparison.CompareOptions();
options.setShowRevisions(false);
const resultPath = comparer.compare(outputPath, options);
```

The result is as follows:

|                            Closed state                             |                             Open state                             |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-revisions-true-close-revisions.png) | ![](/comparison/nodejs-java/images/show-revisions-true-open-revisions.png) |


|              Disable display Revisions               |
| :--------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-revisions-false.png) |

