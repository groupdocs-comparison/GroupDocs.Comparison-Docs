---
id: load-file-from-stream
url: comparison/java/load-file-from-stream
title: Load file from stream
weight: 2
description: "This article explains how to load PDF, Word, Excel, PowerPoint documents from stream when using GroupDocs.Comparison for Java."
keywords: Load document from stream, Load document with GroupDocs.Comparison
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
    name: How load file from stream in Java
    description: Learn how to load file from stream in Java step by step
    steps:
      - name: Create an object and specify source file stream
        text: Create an object of Comparer class. The constructor takes the source file stream. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the target file stream using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

To avoid the saving stream as a file, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to work with file streams directly.

To work with stream, follow these steps:

1.  Obtain file stream.
2.  Pass opened source file stream to the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) class constructor or pass opened target file stream to the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method.

The following code snippet shows how to load file from stream:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import java.nio.file.Path;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
// ...

try (Comparer comparer = new Comparer(sourceInputStream)) {
    comparer.add(targetInputStream);
    final Path resultPath = comparer.compare(resultOutputStream);
}
```
{{< /tab >}}
{{< /tabs >}}
