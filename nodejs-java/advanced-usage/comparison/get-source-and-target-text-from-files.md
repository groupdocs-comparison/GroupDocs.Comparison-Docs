---
id: get-source-and-target-text-from-files
url: comparison/nodejs-java/get-source-and-target-text-from-files
title: Get source and target text from files
weight: 7
description: "This article explains how to get source and target texts of specific changes using GroupDocs.Comparison for Node.js via Java."
keywords: Get target txt, Get source txt, documents diff, compare documents, compare files
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
    name: How to get source and target text in Java
    description: Learn how to get source and target text in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path or source file stream parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file or target file stream using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify ExtendedSummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Output the changes text
        text: Display source or target text of the changes using change info array element.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to get source and target texts of specific changes in the output file.

To get a list of changed source and target texts, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Call the [compare()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method.
4.  Call the [getChanges()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getChanges--) method.

The following code snippets show how to get specified texts from a file.

## Get source and target text from local disk

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourcePath);
    comparer.add(targetPath);
    const resultPath = comparer.compare(outputPath);
    let changes = comparer.getChanges();
    for (ChangeInfo change : changes) {
        System.out.println();
        System.out.println("Source text: " + change.getSourceText());
        System.out.println("Target text: " + change.getTargetText());
    }
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/nodejs-java/images/get-source-and-target-text-from-files.png)

## Get source and target text from stream

{{< tabs "example2">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceInputStream);
    comparer.add(targetInputStream);
    const resultPath = comparer.compare(outputPath);
    let changes = comparer.getChanges();
    for (ChangeInfo change : changes){
        System.out.println();
        System.out.println("Source text: "+change.getSourceText());
        System.out.println("Target text: "+change.getTargetText());
    }
```
{{< /tab >}}
{{< /tabs >}}