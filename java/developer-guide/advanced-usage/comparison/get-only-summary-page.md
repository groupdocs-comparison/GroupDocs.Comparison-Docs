---
id: get-only-summary-page
url: comparison/java/get-only-summary-page
title: Get only summary page
weight: 9
description: "This article explains how to get only summary page when comparing documents with GroupDocs.Comparison for Java."
keywords: Compare documents, summary page, SummaryPage, ShowOnlySummaryPage
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
    name: How to get summary page
    description: Learn how to get summary page after comparing two documents
    steps:
      - name: Create 'Comparer' object
        text: Create object of 'Comparer' class passing source document as a constructor argument
      - name: Add one or more target documents
        text: Use 'add' method to add one or more documents for comparing
      - name: Configure compare options
        text: Create object of 'CompareOptions' setting up its property 'setShowOnlySummaryPage(true)'
      - name: Run comparison process
        text: Call 'compare' method passing compare options as second argument to run comparison process
---

---

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** allows you to detect changes between source and target files and serve only summary page.

The following are the steps to get only summary page:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream;
- Call [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method and specify target document path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and set [setShowOnlySummaryPage(...)](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowOnlySummaryPage(boolean)>) property to *true*;
- Call [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()>) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.

The following code sample shows how to get only summary page.

## Example code block to get only summary page

---

<script src="https://gist.github.com/groupdocs-comparison-gists/bfc0826204c5a3bafab7ab9ace333dab.js"></script>

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
