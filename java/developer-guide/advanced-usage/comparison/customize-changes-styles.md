---
id: customize-changes-styles
url: comparison/java/customize-changes-styles
title: Customize changes styles
weight: 4
description: "Following this guide you will learn how to customize document comparison report and modify appearance of detected changes when use GroupDocs.Comparison for Java."
keywords: Style change detection, Compare document styles, Document comparison
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
    name: How to customize changes styles
    description: Learn how to customize changes styles
    steps:
      - name: Create 'StyleSettings' object
        text: Create object of 'StyleSettings' class
      - name: Change style settings
        text: Update properties of the object to change style settings
      - name: Create 'CompareOptions' object
        text: Create object of 'CompareOptions' class
      - name: Set style settings options
        text: Use methods 'setInsertedItemStyle()', 'setDeletedItemStyle()' or 'setChangedItemStyle()' to specify appropriate styles
      - name: Use compare options
        text: Calling 'compare()' method of a comparer object pass compare options as a second argument
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** provides compare options set with some default values that provides both - appropriate comparison speed and quality. However it is possible to customize comparison options from wide range of parameters and their values to fulfill some specific needs. Example below demonstrates how to change different changes types styling.

The following are the steps to compare two documents with custom change style settings:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream;
- Call [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)>) method and specify target document path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object with desired parameters;
- Call [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()>) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object to method;

The following code snippet demonstrates how to compare files with specific options.

## Compare files from local disk with custom change styles

<script src="https://gist.github.com/groupdocs-comparison-gists/e0cebcc9c017d1226d0571aca1b18c56.js"></script>

## Compare files from stream with custom change styles

<script src="https://gist.github.com/groupdocs-comparison-gists/c39aba0ce82cbddd74c367ff89a1e906.js"></script>

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
