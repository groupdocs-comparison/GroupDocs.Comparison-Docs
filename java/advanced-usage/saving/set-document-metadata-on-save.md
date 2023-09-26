---
id: set-document-metadata-on-save
url: comparison/java/set-document-metadata-on-save
title: Set document metadata on save
weight: 1
description: "Follow this guide and learn how to set document metadata when saving output document after files comparison within your Java applications."
keywords: Save document metadata,  Compare documents, Document comparison, File diff
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
    name: How set document metadata on save in Java
    description: Learn how to set document metadata on save in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the SaveOtions object with the required metadata parameter initialised by MetadataType enum.
---

Document can contain some metadata information, such as author, organization, etc. [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to select metadata source when saving output document.  

Possible metadata sources are as follows:

- Source document metadata
- Target document metadata
- User-defined metadata

To set output document metadata, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [SaveOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) object. Call the [setCloneMetadataType()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/saveoptions/#setCloneMetadataType-com.groupdocs.comparison.options.enums.MetadataType-) method to set the appropriate [MetadataType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/metadatatype/) variant.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [SaveOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/saveoptions/) object as a parameter.

The following code snippets show how to set output document metadata:

## Set metadata from source file

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceFile)) {
    comparer.add(targetFile);
    final SaveOptions saveOptions = new SaveOptions();
    saveOptions.setCloneMetadataType(MetadataType.SOURCE);
    final Path resultPath = comparer.compare(outputFile, saveOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Set metadata from target file

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceFile)) {
    comparer.add(targetFile);
    final SaveOptions saveOptions = new SaveOptions();
    saveOptions.setCloneMetadataType(MetadataType.TARGET);
    final Path resultPath = comparer.compare(outputFile, saveOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Set user-defined metadata 

{{< tabs "example3">}}
{{< tab "Java" >}}
```java

try (Comparer comparer = new Comparer(sourceFile)) {
    comparer.add(targetFile);
    final FileAuthorMetadata fileAuthorMetadata = new FileAuthorMetadata();
    fileAuthorMetadata.setAuthor("Tom");
    fileAuthorMetadata.setCompany("GroupDocs");
    fileAuthorMetadata.setLastSaveBy("Jack");
    final SaveOptions saveOptions = new SaveOptions();
    saveOptions.setCloneMetadataType(MetadataType.FILEAUTHOR);
    saveOptions.setFileAuthorMetadata(fileAuthorMetadata);
    final Path resultPath = comparer.compare(outputFile, saveOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
