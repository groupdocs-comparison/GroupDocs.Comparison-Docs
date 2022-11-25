---
id: load-file-from-stream
url: comparison/java/load-file-from-stream
title: Load file from stream
weight: 2
description: ""
keywords:
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Documents Comparison Tool
    description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to load file from input stream
    description: Learn how to load file from input stream
    steps:
      - name: Create 'Comparer' object
        text: Create 'Comparer' object passing source input stream as a constructor argument
      - name: Add one or more target documents
        text: Use 'add' method to add one or more documents for comparing
      - name: Run comparison process
        text: Call 'compare' method to run comparison process and to get path of the result document
---

In case when you have the file in the form of a stream. To avoid the overhead of saving stream as a file on disk, **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** provides a way to work with file streams directly.

The following are the steps to be followed:

- Obtain file stream;
- Pass opened source stream to [Comprer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class constructor or pass opened target file stream to [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)>) method.

Following code snippet describes how to load file from stream.

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

## More resources

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)

### Free Online App

Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
