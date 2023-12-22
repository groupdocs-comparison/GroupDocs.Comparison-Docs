---
id: get-changes-coordinates
url: comparison/nodejs-java/get-changes-coordinates
title: Get changes coordinates
weight: 5
description: "This article explains how to obtain coordinates for detected changes at a document pages preview when comparing documents with GroupDocs.Comparison for Node.js via Java"
keywords: Compare documents, get changes coordinates
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
    name: How to get changes coordinates in JavaScript
    description: Learn how to get changes coordinates in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CalculateCoordinates of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the compare options parameter.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Output changes coordinates
        text: Display information about the changes coordinates using the Box field for each element of the changes info object, and then use the field with the name of the coordinate.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to detect changes between the source and target documents and get coordinates of the changes in the document preview images. These coordinates can be useful to highlight changes in the document preview images.

To get the coordinates of changes, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object. Call the `setCalculateCoordinates`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setCalculateCoordinates-boolean-)--> to get coordinates.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object from the previous step.
5.  Call the `getChanges()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getChanges- -)--> method.

The following code snippet shows how to compare multiple documents with specific options:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);

const compareOptions = new groupdocs.comparison.CompareOptions();
compareOptions.setCalculateCoordinates(true);
const resultPath = comparer.compare(resultFile, compareOptions);

let changes = comparer.getChanges();
for (ChangeInfo change : changes) {
    System.out.printf("Change Type: %d, X: %f, Y: %f, Text: %s%n",
        change.getType(), change.getBox().getX(), change.getBox().getY(), change.getText());
}
```

The result is as follows:

![](/comparison/nodejs-java/images/get-changes-coordinates.png)
