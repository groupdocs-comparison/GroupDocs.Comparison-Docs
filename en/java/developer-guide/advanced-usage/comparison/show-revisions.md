---
id: show-revisions
url: comparison/java/show-revisions
title: Show Revisions
weight: 12
description: "This article explains how to customize the display of revisions in the resulting document in GroupDocs.Comparison for Java."
keywords: ShowRevisions, revision
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
        name: How to disable showing revisions in result document
        description: Learn how to disable showing revisions in result document
        steps:
        - name: Create 'Comparer' object
          text: Create object of 'Comparer' class passing source document as a constructor argument
        - name: Add one or more target documents
          text: Use 'add' method to add one or more documents for comparing
        - name: Set up compare options object
          text: Create object of 'CompareOptions' class and use its method 'setShowRevisions(false)' to disable showing revisions
        - name: Run comparison process
          text: Call 'compare' method to run comparison process passing compare options as a second argument
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** provides the ability to compare and customize the display of revisions in the resulting document.

**Revision** - changes received when comparing documents using built-in Word tools.

By default, the display of revisions is *enabled*. Below are the steps to turn off the display of revisions:

*   Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source file path or stream;
*   Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target file path or stream;
*   Instantiate [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and set [ShowRevisions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowRevisions(boolean)) property to *false*;
*   Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) method and pass [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.

## Example code block to disable the display of revisions

---

<script src="https://gist.github.com/groupdocs-comparison-gists/e43eb36dafa0ef2d0690fe5d2ab38460.js"></script>

## Example of a result with the Revision display enabled

---

|                            Closed state                             |                            Open state                              |
|:-------------------------------------------------------------------:|:------------------------------------------------------------------:|
| ![](/comparison/java/images/show-revisions-true-close-revisions.png) | ![](/comparison/java/images/show-revisions-true-open-revisions.png) |

## Example of a result with the Revision display disabled

---

|              Disable display Revisions               |
|:----------------------------------------------------:|
| ![](/comparison/java/images/show-revisions-false.png) |

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