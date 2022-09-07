---
id: compare-multiple-documents-protected-by-password
url: comparison/java/compare-multiple-documents-protected-by-password
title: Compare multiple documents protected by password
weight: 1
description: "This article describes how to compare multiple Word documents or PowerPoint presentations protected by password using GroupDocs.Comparison for Java API."
keywords: Compare multiple password protected documents, compare multiple protected documents
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
        name: How to compare multiple documents protected by password
        description: Learn how to compare multiple documents protected by password
        steps:
        - name: Create 'Comparer' object
          text: Create object of 'Comparer' class passing source document and load options with password as a constructor argument
        - name: Add first target document
          text: Use 'add' method to add first target document and load options with password for comparing
        - name: Add second target document
          text: Use 'add' method to add second target document and load options with password for comparing
        - name: Run comparison process
          text: Call 'compare' method to run comparison process and to get path of the result document
---
{{< alert style="info" >}}NOTE: This feature is available only for Word documents, PowerPoint and Open Document presentations.{{< /alert >}}

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to compare more than 2 documents that are protected with a password.

The following are the steps to compare password-protected documents.

*   Instantiate [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object and specify source document password;        
*   Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream and [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object created at previous step;
*   Instantiate another [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object and specify target document password;
*   Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target document path or stream and [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object created at previous step. Repeat this step for every target document that is password-protected;
*   Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) method.
        

The following code sample shows how to compare password-protected documents.

## Compare multiple protected documents from local disk

<script src="https://gist.github.com/groupdocs-comparison-gists/9978b3445782673d7c20705c50936bd4.js"></script>

## Compare multiple protected documents from stream

<script src="https://gist.github.com/groupdocs-comparison-gists/4409fcbfc437b1e1c82fcd0db650cc39.js"></script>

## More resources

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
