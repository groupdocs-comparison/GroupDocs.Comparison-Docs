---
id: set-password-for-output-document
url: comparison/java/set-password-for-output-document
title: Set password for output document
weight: 2
description: "This article explains how to set document password after files comparison within your Java applications using GroupDocs.Comparison for Java."
keywords: Compare document and protect with password
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
      - name: Create an object of CompareOptions
        text: Create an object of CompareOptions class with the PasswordSaveOption parameter initialised by PasswordSaveOption enum value.
      - name: Create an object of SaveOptions
        text: Create an object of SaveOptions class with the Password parameter.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter, SaveObject object and CompareOption object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to protect output document with password.

To protect output document, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) object. Call the [setPasswordSaveOption()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setPasswordSaveOption-com.groupdocs.comparison.options.enums.PasswordSaveOption-) method and specify the `PasswordSaveOption.USER` value.
4.  Instantiate the [SaveOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) object. Call the [setPassword()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/saveoptions/#setPassword-java.lang.String-) property to specify a password string.
5.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [SaveOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) and [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) objects as parameters.

The following code snippet shows how to compare documents and protect the output document with password:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setPasswordSaveOption(PasswordSaveOption.USER);
    SaveOptions saveOptions = new SaveOptions();
    saveOptions.setPassword("3333");
    final Path resultPath = comparer.compare("result.docx", saveOptions, compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
