---
id: compare-multiple-documents
url: comparison/nodejs-java/compare-multiple-documents
title: Compare multiple documents
weight: 3
description: "Learn more about how to compare multiple Word documents or PowerPoint presentations simultaneously with GroupDocs.Comparison for Node.js via Java."
keywords: Compare multiple documents, documents multi-comparison, compare more than two documents 
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: True
structuredData:
    showOrganization: True
---
{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare more that two documents.

To compare several documents, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method and specify target document path or stream. Repeat this step for every target document.
3.  Call the [compare()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method.

The following code snippets show how to several documents:

## Compare several documents from a local disk

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile1);
comparer.add(targetFile2);
comparer.add(targetFile3);
const resultPath = comparer.compare(resultInputStream);
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/nodejs-java/images/compare-multiple-word.png)

## Compare several documents from a stream

{{< tabs "example2">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceInputStream);
comparer.add(targetInputStream1);
comparer.add(targetInputStream2);
comparer.add(targetInputStream3);
const resultPath = comparer.compare(resultInputStream);
```
{{< /tab >}}
{{< /tabs >}}


