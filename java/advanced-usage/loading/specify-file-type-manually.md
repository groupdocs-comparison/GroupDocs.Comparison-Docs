---
id: specify-file-type-manually
url: comparison/java/specify-file-type-manually
title: Specify file type for comparison manually
weight: 6
description: "Specify a document file type manually in GroupDocs.Comparison for Java via LoadOptions.setFileType() to skip auto-detection and speed up loading of large files."
keywords: File type, LoadOptions, FileType, auto-detection, fromFileNameOrExtension, document comparison performance
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
    name: How to specify file type for comparison manually in Java
    description: Learn how to specify file type for comparison manually in Java step by step
    steps:
      - name: Create an object of LoadOptions
        text: Create a LoadOptions object and set the FileType property to the known document format.
      - name: Create an object and load source file
        text: Create a Comparer object, passing the source file path and the LoadOptions object to the constructor.
      - name: Load target file
        text: Add the target file using the add method, passing the same LoadOptions object as the second argument.
      - name: Compare documents
        text: Call the compare method of your Comparer object and pass the resulting file path.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) lets you specify the document file type explicitly via [LoadOptions.setFileType()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions/#setFileType-com.groupdocs.comparison.result.FileType-) instead of relying on automatic format detection.

## Why specify the file type

When no file type is provided, GroupDocs.Comparison inspects the file's contents to determine its format. This detection is reliable but adds processing time, which can be noticeable for **large files**.

If you already know the format — for example, because the input is constrained by your application — passing it explicitly skips detection and lets the library go straight to loading. For high-throughput pipelines or batch jobs over large documents, this can produce a measurable speedup.

## Specify the file type explicitly

Use this approach when the document format is known at compile time.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.load.LoadOptions;
import com.groupdocs.comparison.result.FileType;
// ...

LoadOptions loadOptions = new LoadOptions();
loadOptions.setFileType(FileType.DOCX);

try (Comparer comparer = new Comparer("source.docx", loadOptions)) {
    comparer.add("target.docx", loadOptions);
    comparer.compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

`LoadOptions` also has a constructor that takes the file type directly: `new LoadOptions(FileType.DOCX)`.

## Derive the file type from a file path

When the file path is available and its extension is reliable, use [FileType.fromFileNameOrExtension()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/filetype/) to resolve the `FileType` from the extension. This still skips content-based auto-detection, but keeps the calling code generic.

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.load.LoadOptions;
import com.groupdocs.comparison.result.FileType;
// ...

String sourcePath = "source.docx";
String targetPath = "target.docx";

LoadOptions sourceLoadOptions = new LoadOptions();
sourceLoadOptions.setFileType(FileType.fromFileNameOrExtension(sourcePath));

LoadOptions targetLoadOptions = new LoadOptions();
targetLoadOptions.setFileType(FileType.fromFileNameOrExtension(targetPath));

try (Comparer comparer = new Comparer(sourcePath, sourceLoadOptions)) {
    comparer.add(targetPath, targetLoadOptions);
    comparer.compare("result.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

## See also

- [LoadOptions API reference](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions/)
- [Supported document formats]({{< ref "/comparison/java/getting-started/supported-document-formats.md" >}})
- [Load password-protected documents]({{< ref "/comparison/java/advanced-usage/loading/load-password-protected-documents.md" >}})
- [Load custom fonts]({{< ref "/comparison/java/advanced-usage/loading/load-custom-fonts.md" >}})
