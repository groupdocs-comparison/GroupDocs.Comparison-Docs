---
id: word-track-changes
url: comparison/nodejs-java/word-track-changes
title: Show results of comparison as a Word Track Changes
weight: 13
description: "This article explains how to use the Microsoft Word Track Changes comparing as a built-in feature in GroupDocs.Comparison for Node.js via Java."
keywords: WordTrackChanges, revisions
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
    name: How to show results of comparison as a Word Track Changes
    description: Learn how to use Word Track Changes in comparison result
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify WordTrackChanges of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to customize the display of revisions in the output document.

Revision is a collection of changes received when comparing documents using built-in Word tools.

By default, the Word Track Changes option is `false`. Follow these steps to turn on the Word Track Changes:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/)--> object. Specify the source file path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target file path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/)--> object. Set the `WordTrackChanges`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setWordTrackChanges-boolean-)--> property to `true`;
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/)--> object from the previous step.

The following code snippet shows how to disable the display of revisions:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);
const options = new groupdocs.comparison.CompareOptions();
options.setWordTrackChanges(true);
comparer.compare(resultPath, options);
```

The result is as follows:

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/word-track-changes-option-true.png) |




|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/word-track-changes-option-false.png) |

