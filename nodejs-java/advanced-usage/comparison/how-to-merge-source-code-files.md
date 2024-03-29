---
id: how-to-merge-source-code-files
url: comparison/nodejs-java/how-to-merge-source-code-files
title: How to merge source code files
weight: 8
description: "This article explains how to control file merging in GroupDocs.Comparison for Node.js via Java."
keywords: Merging documents, documents diff, compare documents, compare files
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
    name: How to get source and target text in JavaScript
    description: Learn how to get source and target text in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Reject or accept changes
        text: To reject or Accept changes, access the ComparisonAction field of the array element and set the Reject or Accept value from the enum ComparisonAction.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Apply Changes
        text: To apply changes call the applyChanges method of the Comparer class object. The method accepts a file stream of the resulting file and an ApplyChangeOptions object that contains a ChangeInfo array.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to merge source code files by using the `ComparisonAction`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction/)--> properties:

- `ComparisonAction.ACCEPT`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction/#ACCEPT)--> accepts the found changes and adds them to the file without highlighting
- `ComparisonAction.REJECT`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction/#REJECT)--> rejects the found changes and removes them from the output file

To apply/reject changes to the output file, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.
4.  Call the `getChanges()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getChanges- -)--> method to get the list of changes.
5.  Call the `setComparisonAction()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/changeinfo/#setComparisonAction-com.groupdocs.comparison.result.ComparisonAction-)--> method of the appropriate change object. Specify the `ComparisonAction.ACCEPT`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction#ACCEPT)--> or the `ComparisonAction.REJECT`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction#REJECT)--> value.
6.  Call the `applyChanges()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#applyChanges-java.lang.String-com.groupdocs.comparison.options.save.SaveOptions-com.groupdocs.comparison.options.ApplyChangeOptions-)--> method. Specify the collection of changes.

For example, you need to compare and merge several versions of source code files and accept or discard changes made by different persons.

![](/comparison/nodejs-java/images/how-to-merge-source-code-file-source.png)
![](/comparison/nodejs-java/images/how-to-merge-source-code-file-target.png)

The differences show that the two methods are in the **source.cs** file: `AddNumbers` and `Sum`.

If you do not use the `ComparisonAction`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction/)--> property, all changes are committed to the output file, and these methods are removed. If you need to control the merging of files, the `ComparisonAction`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.result/comparisonaction/)--> property helps you.

The following code snippet shows how to merge two source code files:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
comparer.add(targetPath);
const resultPath = comparer.compare(outputPath);

let changes = comparer.getChanges();
for (int i = 0; i < 10; i++) {
    changes[i].setComparisonAction(groupdocs.comparison.ComparisonAction.ACCEPT);
}

for (int i = 10; i < changes.length; i++) {
  changes[i].setComparisonAction(groupdocs.comparison.ComparisonAction.REJECT);
}

comparer.applyChanges(resultPath, new ApplyChangeOptions(changes));
```

As a result, you get a merged source code file where the deleted elements are marked in <font color="red">**red**</font>, the added – in <font color="blue">**blue**</font>, and the modified – in <font color="green">**green**</font>.

Also, you receive an HTML file with changed places in the code.

| Result source code file                                                 | Result HTML file                                                          |
| ----------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| ![](/comparison/nodejs-java/images/how-to-merge-source-code-file-result-CS.png) | ![](/comparison/nodejs-java/images/how-to-merge-source-code-file-result-HTML.png) |

As you can see from the resulting files, only one of the two methods was removed.
