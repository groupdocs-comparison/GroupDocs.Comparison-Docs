---
id: get-changes-coordinates
url: comparison/java/get-changes-coordinates
title: Get changes coordinates
weight: 5
description: "This article explains how to obtain coordinates for detected changes at a document pages preview when compare documents with GroupDocs.Comparison for Java"
keywords: Compare documents, get changes coordinates
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
        name: How to get coordinates of changes
        description: Learn how to get coordinates of changes in document
        steps:
        - name: Create 'CompareOptions' object
          text: Create object of 'CompareOptions' class
        - name: Set up options
          text: Use methods 'setCalculateCoordinates(true)' of options object so that comparer will prepare coordinates
        - name: Use compare options
          text: Calling 'compare()' method of a comparer object pass compare options as a second argument
        - name: Retrieve list of changes with coordinates
          text: Call 'getChanges()' method of a comparer object to get list of changes with its coordinate inside
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to detect changes between source and target documents and obtain changes coordinates at document preview images. These coordinates can be quite useful for highlighting detected changes at document preview images with some graphics (for example, place a red rectangle around each detected change).

The following are the steps to obtain changes coordinates.

*   Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source file path or stream;    
*   Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target file path or stream.     
*   Instantiate [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and set [CalculateCoordinates](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCalculateCoordinates(boolean)) setter to *true*;    
*   Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) method and pass [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.    
*   Call [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) method 
    

The following code sample shows how to get changes coordinates.

## Coordinates calculation example

<script src="https://gist.github.com/groupdocs-comparison-gists/fd4a88331289a9d88fad5e1f0bb0c5e2.js"></script>

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
