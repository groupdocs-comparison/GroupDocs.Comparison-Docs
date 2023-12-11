---
id: show-gap-lines
url: comparison/nodejs-java/show-gap-lines
title: Show gap lines instead of changes
weight: 15
description: "This article explains how to adjust the display of the output document so that the changed content is replaced with empty lines in GroupDocs.Comparison for Node.js via Java."
keywords: LeaveGaps, gap lines, empty lines
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
    name: How to show gap lines instead of changes in Java
    description: How to show gap lines instead of changes in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify ShowInsertedContent and ShowDeletedContent of false value and LeaveGaps of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to adjust appearance of the output document.

By default, changes from the two input files (source and target files) are added to the output document and highlighted. Use the [ShowInsertedContent](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowInsertedContent-boolean-) and [ShowDeletedContent](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowDeletedContent-boolean-) properties to configure the content of the output file.

Use the [LeaveGaps](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setLeaveGaps-boolean-) property to adjust the display of the output document, which allows to replace changed content with empty lines. To use this property, activate the [ShowInsertedContent](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowInsertedContent-boolean-) and [ShowDeletedContent](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowDeletedContent-boolean-) properties.

Follow these steps to adjust appearance of the output document:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/) object. Specify the source file path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/) object. Set the [ShowInsertedContent](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowInsertedContent-boolean-), [ShowDeletedContent](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setShowDeletedContent-boolean-), and/or [LeaveGaps](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setLeaveGaps-boolean-) properties.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/) object from the previous step.

The following code snippet shows how get the desired result

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);

const options = new groupdocs.comparison.CompareOptions();
options.setShowInsertedContent(false);
options.setShowDeletedContent(false);
options.setLeaveGaps(true);

comparer.compare(resultPath, options);
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                        Default result                         |                Result without LeaveGaps property                 |
| :-----------------------------------------------------------: | :--------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-gap-lines-default-result.png) | ![](/comparison/nodejs-java/images/show-gap-lines-without-leavegaps.png) |

|                        Default result                         |                Result with LeaveGaps property                 |
| :-----------------------------------------------------------: | :-----------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/show-gap-lines-default-result.png) | ![](/comparison/nodejs-java/images/show-gap-lines-with-leavegaps.png) |
