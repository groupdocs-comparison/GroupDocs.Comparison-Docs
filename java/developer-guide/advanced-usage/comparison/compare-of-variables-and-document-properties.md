---
id: compare-of-variables-and-document-properties
url: comparison/java/compare-of-variables-and-document-properties
title: Compare of Variables and Document properties
weight: 11
description: "This article explains how to activate the comparison of document properties in GroupDocs.Comparison for Java."
keywords: variables properties, built properties, custom properties, compare document properties, CompareVariableProperty, CompareDocumentProperty
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
    name: How to get extended information on the summary page
    description: Learn how to get extended information on the summary page
    steps:
      - name: Create 'Comparer' object
        text: Create object of 'Comparer' class passing source document as a constructor argument
      - name: Add one or more target documents
        text: Use 'add' method to add one or more documents for comparing
      - name: Set up compare options object
        text: Create object of 'CompareOptions' class and use its methods 'setCompareVariableProperty(true)' and 'setCompareDocumentProperty(true)' to enable appropriate settings
      - name: Run comparison process
        text: Call 'compare' method to run comparison process passing compare options as a second argument
---

---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** allows you to compare various properties of a WORD document such as _Variable_, _Built_, and _Custom_ properties.

The following fields of the CompareOptions class are used to enable comparison functions for document properties:

- [CompareVariableProperty](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)>) - to activate the comparison of _variable_ properties;
- [CompareDocumentProperty](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareDocumentProperty(boolean)>) - to activate the comparison of _built_ and _custom_ properties.

Following are the steps to activate compare document properties:

- Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source file path or stream;
- Call [add](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method and specify target file path or stream;
- Instantiate [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and set [CompareVariableProperty](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)>) property to _true_ ([CompareDocumentProperty](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareDocumentProperty(boolean)>) to _true_ for _built_ and _custom_ properties);
- Call [compare](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()>) method and pass [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.

## Example code block to activate comparison of Variable, Built and Custom properties

---

<script src="https://gist.github.com/groupdocs-comparison-gists/eb7a2b4514a63bf8846a4520787f4fc5.js"></script>

## The result of comparing properties

---

The result of comparing properties is presented on a separate page - _Properties summary page_.

![](/comparison/java/images/properties-summary-page.png)

## More resources

---

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
