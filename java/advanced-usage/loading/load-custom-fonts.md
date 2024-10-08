---
id: load-custom-fonts
url: comparison/java/load-custom-fonts
title: Load custom fonts
weight: 4
description: "This article explains how to load custom fonts PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Java."
keywords: Custom fonts, fonts
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
    name: How to load custom fonts in Java
    description: Learn how to load custom fonts in Java step by step
    steps:
      - name: Create an object and load font.
        text: Create an object of LoadOptions class. Access the object field using the Add method with the path to the font file parameter.
      - name: Create an object and load source file with Options
        text: Create an object of Comparer class. The constructor takes the source file path parameter and object of LoadOptions. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to compare documents that contains non-standard fonts.

To connect custom fonts and compare documents, follow these steps:

1. Instantiate the [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions) object. Speicfy a list of directories with custom fonts.
2. Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object with source document path or stream and the [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions) object created in the previous step.
3. Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
4. Call the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) method.

The following code snippet shows how to connect custom fonts and compare documents:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.load.LoadOptions;
import java.nio.file.Path;
// ...

// Instantiate the LoadOptions object and create a list of custom font directories.
LoadOptions loadOptions = new LoadOptions();
loadOptions.getFontDirectories().add("./fontPath/");
 
try (Comparer comparer = new Comparer(sourceDocument, loadOptions)) {
    comparer.add(targetDocument);
    final Path resultPath = comparer.compare(resultDocument);
}
```
{{< /tab >}}
{{< /tabs >}}