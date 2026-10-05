---
id: save-comparison-result-in-different-format
url: comparison/java/save-comparison-result-in-different-format
title: Save comparison result in different format
weight: 3
description: "Save the GroupDocs.Comparison for Java result document in a format different from the source — for example compare .txt files and save the result as .pdf — by specifying the target extension in the compare() path."
keywords: save comparison result, different format output, compare TXT save PDF, output format conversion Java
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
    name: How save comparison result in different format in Java
    description: Learn how to save comparison result in different format in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the add method.
      - name: Compare documents
        text: Call the compare method of your object and put the resulting file path parameter.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to save output document in different formats.

To save output document in different format, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the result document path with the required format.

The following code snippet shows how to save comparison result in different format:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.txt")) {
    // Add target document
    comparer.add("target.txt");

    // Compare and save comparison result
    final Path resultPath = comparer.compare("result.pdf");
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="warning" >}}
On Java 17 and later, start the JVM with `--add-opens java.base/java.io=ALL-UNNAMED` when saving a text comparison result to a file with a different extension. Without this flag the result file is written as plain text regardless of its extension.
{{< /alert >}}

## See also

- [Set password for output document]({{< ref "comparison/java/advanced-usage/saving/set-password-for-resultant-document.md" >}})
- [Set document metadata on save]({{< ref "comparison/java/advanced-usage/saving/set-document-metadata-on-save.md" >}})
- [Supported file formats]({{< ref "comparison/java/getting-started/supported-document-formats.md" >}})
