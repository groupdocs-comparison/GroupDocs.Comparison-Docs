---
id: get-list-of-changes
url: comparison/nodejs-java/get-list-of-changes
title: Get a list of changes
weight: 6
description: "This article explains how to get a collection of changes between compared documents when using GroupDocs.Comparison for Node.js via Java."
keywords: Get file diff, documents diff, compare documents, compare files
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
    name: How to get a list of changes in JavaScript
    description: Learn how to get a list of changes in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of the Comparer class. The constructor takes the source file path or source file stream parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file or target file stream using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get a list of changes between the source and target documents.

To get a list of changes, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.
4.  Call the `getChanges`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getChanges- -)--> method.

The following code snippets show how to get a list of all changes:

## Get a list of changes from a local disk

```javascript
const comparer = new groupdocs.comparison.Comparer(source);
comparer.add(target);
comparer.compare();
let changes = comparer.getChanges();
for (ChangeInfo change : changes) {
    Console.log("Change Type: " + change.getType() +
                        ", Page: " + change.getPageInfo().getPageNumber() +
                        ", Change ID: " + change.getId() +
                        ", Text: " + change.getText());
}
```

The result is as follows:

![](/comparison/nodejs-java/images/get-changes-list.png)

## Get a list of changes from a stream

```javascript
const comparer = new groupdocs.comparison.Comparer(new FileInputStream(source));
comparer.add(new FileInputStream(target));
comparer.compare();
let changes = comparer.getChanges();
for (ChangeInfo change : changes) {
    Console.log("Change Type: " + change.getType() +
                        ", Page: " + change.getPageInfo().getPageNumber() +
                        ", Change ID: " + change.getId() +
                        ", Text: " + change.getText());
}
```
