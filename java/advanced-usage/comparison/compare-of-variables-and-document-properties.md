---
id: compare-of-variables-and-document-properties
url: comparison/java/compare-of-variables-and-document-properties
title: Compare of Variables and Document properties
weight: 11
description: "This article explains how to activate the comparison of document properties in GroupDocs.Comparison for Java."
keywords: variables properties, built properties, custom properties, compare document properties, CompareVariableProperty, CompareDocumentProperty
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
    name: How to Variables and Document properties in Java
    description: Learn how to compare Variables and Document properties in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CompareVariableProperty and CompareDocumentProperty of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to compare various properties of a Word document such as _Variable_, _Built_, and _Custom_ properties.

Use the following methods of the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) class to enable comparison functions for document properties:

- [setCompareVariableProperty()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareVariableProperty-boolean-) allows the comparison of _variable_ properties
- [setCompareDocumentProperty()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareDocumentProperty-boolean-) allows  the comparison of _built_ and _custom_ properties

To activate compare document properties, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/) object. Specify the source file path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) object. Call the [setCompareVariableProperty()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareVariableProperty-boolean-) method to compare the _variable_ properties and/or the [setCompareDocumentProperty()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCompareDocumentProperty-boolean-) for _built_ and _custom_ properties.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) object from the previous step.

The following code snippet shows how activate comparison of the _variable_, _Bbuilt_ and _custom_ properties:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");
    CompareOptions options = new CompareOptions();

    // to activate comparison of variable properties
    options.setCompareVariableProperty(true); 

    // to activate the comparison of built and custom properties
    options.setCompareDocumentProperty(true); 

    final Path resultPath = comparer.compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/properties-summary-page.png)
