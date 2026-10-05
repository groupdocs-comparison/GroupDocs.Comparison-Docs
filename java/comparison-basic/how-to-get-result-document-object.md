---
id: how-to-get-result-document-object
url: comparison/java/how-to-get-result-document-object
title: Work with the comparison result
weight: 4
description: "Get the path of the GroupDocs.Comparison for Java result document and the list of detected changes, then open the result with Aspose.Words for Java for further manipulation."
keywords: comparison result, compare return value, result path, getChanges, ChangeInfo, Aspose.Words integration
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
    name: How to work with the comparison result in Java
    description: Learn how to get the comparison result and the list of changes in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the add method
      - name: Compare documents
        text: Call the compare method of your object and keep the returned result path.
      - name: Get changes
        text: Call the getChanges method of your object to get the list of detected changes.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) gives you two things after a comparison: the result document and the list of detected changes.

To work with the comparison result, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. It returns the `java.nio.file.Path` of the result document.
4.  Call the [getChanges()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#getChanges--) method to get the detected changes as an array of [ChangeInfo](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changeinfo/) objects.

{{< alert style="info" >}}
Use the `Path` returned by `compare()` rather than the path you passed in: in some situations the library changes the extension of the result file.
{{< /alert >}}

The following code snippets show how to get the changes and how to modify the result document with Aspose.Words for Java:

## Get the result document and the list of changes

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.result.ChangeInfo;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");
    final Path resultPath = comparer.compare("result.docx");
    System.out.println("Result document: " + resultPath);

    ChangeInfo[] changes = comparer.getChanges();
    for (ChangeInfo change : changes) {
        System.out.println("Source text: " + change.getSourceText());
        System.out.println("Target text: " + change.getTargetText() + "\n");
    }
}
```
{{< /tab >}}
{{< /tabs >}}

## Modify the result document with Aspose.Words

The result is a regular document of the compared format, so you can open it with any library that supports the format. The example below opens a Word result with [Aspose.Words for Java](https://products.aspose.com/words/java/) and appends some text to it. Aspose.Words for Java is a separate product — add it to your project as its own dependency.

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    // Add target document and save comparison result
    comparer.add("target.docx");
    final Path resultPath = comparer.compare("result.docx");

    // Open the result document with Aspose.Words
    Document asposeDocument = new Document(resultPath.toString());

    // Access the Document's builder to add content.
    DocumentBuilder builder = new DocumentBuilder(asposeDocument);

    // Add some text to the document.
    builder.writeln("Hello, World!");
    builder.write("This is an example of using Aspose.Words.");

    // Save the document to a file.
    asposeDocument.save("output.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## See also

- [Compare documents]({{< ref "comparison/java/comparison-basic/compare-documents.md" >}})
- [Get list of changes]({{< ref "comparison/java/advanced-usage/comparison/get-list-of-changes.md" >}})
- [Get file info]({{< ref "comparison/java/comparison-basic/get-file-info.md" >}})
