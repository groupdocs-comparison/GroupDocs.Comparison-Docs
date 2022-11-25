---
id: get-list-of-changes
url: comparison/java/get-list-of-changes
title: Get list of changes
weight: 6
description: "This article explains how to get collection of changes between compared documents when using GroupDocs.Comparison for Java."
keywords: Get file diff, documents diff, compare documents, compare files
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
    name: How to get list of changes
    description: Learn how to get list of changes
    steps:
      - name: Create 'Comparer' object
        text: Create object of 'Comparer' class passing source document as a constructor argument
      - name: Add one or more target documents
        text: Use 'add' method to add one or more documents for comparing
      - name: Run comparison process
        text: Call 'compare' method to run comparison process
      - name: Retrieve list of changes
        text: Use 'getChanges()' method of comparer object to retrieve list of changes
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to obtain list of changes between source and target files.

The following are the steps to obtain changes list.

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source file path or stream;
- Call [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method and specify target file path or stream;
- Call [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()>) method;
- Call [getChanges](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()>) method.

The following code sample demonstrates how to get list of all changes.

## Get list of changes from local disk

<script src="https://gist.github.com/groupdocs-comparison-gists/883e152bcb4f92becd8cc5051118c36a.js"></script>

## Get list of changes from stream

<script src="https://gist.github.com/groupdocs-comparison-gists/a39965c7ca12a3a78f65821c59d20c29.js"></script>

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
