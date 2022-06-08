---
id: compare-bookmarks-in-word
url: comparison/java/compare-bookmarks-in-word
title: Compare bookmarks in Word documents
weight: 12
description: "This article explains how to activate the comparison of bookmarks for Word format in GroupDocs.Comparison for Java."
keywords: bookmarks, Word, word, docx, doc, compare bookmarks, word bookmarks, CompareBookmarks, bookmarks comparison
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Documents Comparison Tool
        description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to compare bookmarks in word documents
        description: Learn how to compare bookmarks in word documents
        steps:
        - name: Create 'Comparer' object
          text: Create object of 'Comparer' class passing source document as a constructor argument
        - name: Add one or more target documents
          text: Use 'add' method to add one or more documents for comparing
        - name: Set up compare options object
          text: Create object of 'CompareOptions' class and use its method 'setCompareBookmarks(true)' to enable bookmark comparing
        - name: Run comparison process
          text: Call 'compare' method to run comparison process passing compare options as a second argument
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** allows to compare bookmarks in WORD documents.

The following are the steps to compare bookmarks of documents:

*   Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source file path or stream;
*   Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target file path or stream;
*   Instantiate the [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and initialize the [CompareBookmarks](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareBookmarks(boolean)) property with **true**;
*   Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) method and pass [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.

## Example code block to demonstrate how to compare bookmarks

---

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setCompareBookmarks(true);
    final Path resultPath = comparer.compare(RESULT_PATH, compareOptions);
}
```

## The result after comparing document with enabled CompareBookmarks option

---

The result of compared bookmarks is presented as inserted comments with description in document. See example below on image:

![](comparison/java/images/compared-bookmarks.png)

## More resources

---
### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:

*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)    
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)    
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)    
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    

### Free Online App
Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.