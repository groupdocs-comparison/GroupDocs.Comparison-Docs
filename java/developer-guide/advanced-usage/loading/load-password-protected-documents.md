---
id: load-password-protected-documents
url: comparison/java/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "This article explains how to load password-protected PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Java."
keywords: Load password-protected document, Load protected document with GroupDocs.Comparison
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
    name: How to compare password-protected documents
    description: Learn how to compare password-protected documents
    steps:
      - name: Create 'Comparer' object
        text: Create 'Comparer' object passing as a constructor argument source document and object of 'LoadOptions' with password
      - name: Add one or more target documents
        text: Use 'add' method to add one or more documents for comparing passing as second argument object of 'LoadOptions' with password
      - name: Run comparison process
        text: Call 'compare' method to run comparison process and to get path of the result document
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to compare documents that are protected with a password.

The following are the steps to compare password-protected documents.

- Instantiate [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object and specify source document password;
- Instantiate [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream and [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object created at previous step;
- Instantiate another [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object and specify target document password;
- Call [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)>) method and specify target document path or stream and [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object created at previous step;
- Call [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)>) method.

The following code sample shows how to compare password protected documents.

<script src="https://gist.github.com/groupdocs-comparison-gists/8c2a3079211b7489e37fa3e8b715d80c.js"></script>

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
