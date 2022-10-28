---
id: set-password-for-resultant-document
url: comparison/java/set-password-for-resultant-document
title: Set password for resultant document
weight: 2
description: "This article explains how to set document password after files comparison within your Java applications using GroupDocs.Comparison for Java."
keywords: Compare document and protect with password
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
    name: How to set password for resultant document
    description: Learn how to set password for resultant document
    steps:
      - name: Create 'Comparer' object
        text: Create object of 'Comparer' class passing source document as a constructor argument
      - name: Add one or more target documents
        text: Use 'add' method to add one or more documents for comparing
      - name: Set up compare options object
        text: Create object of 'CompareOptions' class and call its method 'setPasswordSaveOption(PasswordSaveOption.User)' to enable appropriate settings
      - name: Set up document save object
        text: Create object of 'SaveOptions' class and use its method 'setPassword()' to pass password of the result document
      - name: Run comparison process
        text: Call 'compare' method to run comparison process passing compare options as a second argument and save options as a third argument
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to protect resultant document with password.

The following are the steps to protect resultant document:

- Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream;
- Call [add](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method and specify target document path or stream.
- Instantiate [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object with
- Set [PasswordSaveOption](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setPasswordSaveOption(int)>) property of [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object to [PasswordSaveOption.User](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PasswordSaveOption#User);
- Instantiate [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) object and set using [Password](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions#setPassword(java.lang.String)>) setter desired password for resultant document;
- Call [compare](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,%20com.groupdocs.comparison.options.CompareOptions)>) method and pass [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) and [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) objects to a method;

The following code snippet demonstrates how to compare documents and protect resultant document with password

<script src="https://gist.github.com/groupdocs-comparison-gists/c0c27c8c12411d3c228f9df899b4fc92.js"></script>

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
