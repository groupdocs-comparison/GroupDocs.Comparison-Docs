---
id: load-file-from-local-disk
url: comparison/java/load-file-from-local-disk
title: Load file from local disk
weight: 1
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from local disk when using GroupDocs.Comparison for Java."
keywords: Load document from local disk, Load document from file path, Load document with GroupDocs.Comparison
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How Load file from local disk in Java
    description: Learn how to load file from local disk in Java step by step
    steps:
      - name: Create a string variable with the path to the file
        text: Create a string variable with the path to the source file. You may specify absolute or relative file path as per your requirements.
      - name: Create an object and load source file
        text: Create an object and load a source file by specifying in the parameter a string variable.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

When the source file is located on the local disk, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to load it using the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) class constructor by specifying absolute or relative path. To load the target file located on the local disk, use the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify absolute or relative path as parameter.

The following code snippet shows how to load files from local disk:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
string sourcePath = "source.docx";
using (Comparer comparer = new Comparer(sourcePath))
{
    string targetPath = "target.docx";
    comparer.Add("targetPath");
    comparer.Compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}