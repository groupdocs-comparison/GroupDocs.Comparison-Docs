---
id: get-changes-coordinates
url: comparison/java/get-changes-coordinates
title: Get changes coordinates
weight: 5
description: "This article explains how to obtain coordinates for detected changes at a document pages preview when compare documents with GroupDocs.Comparison for Java"
keywords: Compare documents, get changes coordinates
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
    name: How to get changes coordinates in Java
    description: Learn how to get changes coordinates in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
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

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to detect changes between source and target documents and get changes coordinates at document preview images. These coordinates can be useful to highlight changes at the document preview images.

To get the changes coordinates, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. Call the [setCalculateCoordinates](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setCalculateCoordinates-boolean-) to get coordinates.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object from the previous step.
5.  Call the [getChanges()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#getChanges--) method.

The following code snippet shows how to compare multiple documents with specific options:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.result.ChangeInfo;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setCalculateCoordinates(true);
    final Path resultPath = comparer.compare("result.docx", compareOptions);

    ChangeInfo[] changes = comparer.getChanges();
    for (ChangeInfo change : changes) {
        System.out.printf("Change Type: %d, X: %f, Y: %f, Text: %s%n",
            change.getType(), change.getBox().getX(), change.getBox().getY(), change.getText());
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/get-changes-coordinates.png)
