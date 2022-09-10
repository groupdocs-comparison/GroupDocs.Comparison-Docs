---
id: get-source-and-target-text-from-files
url: comparison/java/get-source-and-target-text-from-files
title: Get source and target text from files
weight: 7
description: "This article explains how to get source and target texts of specific changes using GroupDocs.Comparison for Java."
keywords: Get target txt, Get source txt, documents diff, compare documents, compare files
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
        name: How to get text of source and target documents
        description: Learn how to get text of source and target documents
        steps:
        - name: Create 'Comparer' object
          text: Create object of 'Comparer' class passing source document as a constructor argument
        - name: Add one or more target documents
          text: Use 'add' method to add one or more documents for comparing
        - name: Run comparison process
          text: Call 'compare' method to run comparison process and path to result document
        - name: Get list of changes
          text: Use 'getChanges()' method of comparer object to get list of changes
        - name: Retrieve text of source and target documents
          text: Use 'getSourceText()' and 'getTargetText()' methods of comparer object to retrieve text of source and target documents
---
[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) allows to getting source and target texts of specific changes in result file.

The following are the steps to get a list of changed source and target texts:

*   Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream;
*   Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target document path or stream;
*   Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) method;
*   Call [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) method.

The following code example demonstrates how to get specified texts from a file.

## Get target text from local disk

<script src="https://gist.github.com/groupdocs-comparison-gists/d37858b84f9e3606fc80d3a645b87e31.js"></script>

## Get target text from stream

<script src="https://gist.github.com/groupdocs-comparison-gists/8e69835903ec356fa36ded4f7cb5d88b.js"></script>

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    
### Free Online App
Along with full-featured Java library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).