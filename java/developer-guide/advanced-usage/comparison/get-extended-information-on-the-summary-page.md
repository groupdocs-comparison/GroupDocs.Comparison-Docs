---
id: get-extended-information-on-the-summary-page
url: comparison/java/get-extended-information-on-the-summary-page
title: Get extended information on the summary page
weight: 10
description: "This article explains how to get extended information about comparison of documents on the summary page with GroupDocs.Comparison for Java."
keywords: Compare documents, summary page, SummaryPage, extended information, ExtendedSummaryPage
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
        text: Create object of 'CompareOptions' class using its method 'setExtendedSummaryPage(true)' to configure extended summary page
      - name: Run comparison process
        text: Call 'compare' method to run comparison process passing compare options as a second argument
---

---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** allows you to detect changes between source and target files and display changes on the separate page - [SummaryPage](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setGenerateSummaryPage(boolean)>).
Аlso you can get extended information about comparison of documents, which will be display in the [SummaryPage](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setGenerateSummaryPage(boolean)>).

The following are the steps to get extended information:

- Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream;
- Call [add](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method and specify target document path or stream;
- Instantiate [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and set [ExtendedSummaryPage](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setExtendedSummaryPage(boolean)>) property to *true*;
- Call [compare](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()>) method and pass [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.

The following code sample shows how to get extended information about comparison of documents.

## Example code block to get extended information

---

<script src="https://gist.github.com/groupdocs-comparison-gists/956c10cbdd05aad7fb86137f4f9a0c01.js"></script>

## Example of displaying the summary page with extended information

---

![](/comparison/java/images/how-to-get-extended-information-image.png)

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
