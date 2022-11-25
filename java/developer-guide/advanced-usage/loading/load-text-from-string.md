---
id: load-text-from-string
url: comparison/java/load-text-from-string
title: Load text from string
weight: 5
description: "This article explains how to load values from variables of string type when using GroupDocs.Comparison for Java."
keywords: Load values from variables of string type, Load text with GroupDocs.Comparison
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
    name: How to load text from string
    description: Learn how to text from string
    steps:
      - name: Create object of 'LoadOptions' class
        text: Create 'LoadOptions' object
      - name: Configure load options
        text: Use method 'setLoadText(true)' to let Comparer know that the constructor argument will be source text
      - name: Create object of 'Comparer' class
        text: Create 'Comparer' object passing source text and load options as a constructor arguments
      - name: Add target text
        text: Use 'add' method to add text for comparing and load options
      - name: Run comparison process
        text: Call 'compare' method to run comparison process and to get path of the result document
---

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) allows to compare values from variables of _string_ type.
The following are the steps to compare text from variables:

- Instantiate [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object and set [LoadText](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)>) property to true (this indicates that passed string contains text to be compared, not file path);
- Pass source string content to [Comprer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class constructor together with created [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions)
- Pass target string content to [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)>) method together with [LoadOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) in which [LoadText](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)>) property is set to true.

The following code snippet shows how to load values from variables:

## <script src="https://gist.github.com/groupdocs-comparison-gists/425813e53c5d5fb0fd54bd7cbdbbc8cb.js"></script>

Can also be combined with different ways of passing documents (be it file path or stream), as shown in the following code example:

<script src="https://gist.github.com/groupdocs-comparison-gists/c600672647eab7f9c38ec9bd77466e67.js"></script>

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
