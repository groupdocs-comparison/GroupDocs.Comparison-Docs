---
id: get-file-info
url: comparison/java/get-file-info
title: Get file info
weight: 2
description: ""
keywords:
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
    name: How to get file info
    description: Learn how to get information of the file with a help of Comparison API
    steps:
      - name: Create 'Comparer' object
        text: Create 'Comparer' object passing file path as a constructor argument
      - name: Get document info using special method
        text: Call 'getSource()' method to get 'Document' object. Then, call 'getDocumentInfo()' method of 'Document' object to get document info
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to get file information which includes:

- [FileType](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getFileType()>) - document file type (PDF, Word document, Excel spreadsheet, PowerPoint presentation or image etc.);
- [PageCount](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPageCount()>) - count of document pages;
- [FileSize](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getSize()>) - document file size;
- [PagesInfo](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPagesInfo()>) - represents information about page.

The following code samples demonstrate how to get file information.

## Get file info for the file from local disk

<script src="https://gist.github.com/groupdocs-comparison-gists/cba10d2dea13e2c62383d7e88c3e6615.js"></script>

## Get file for the file from stream

<script src="https://gist.github.com/groupdocs-comparison-gists/19baec4618b31a67fa06db5a74e68497.js"></script>

## More resources

### Advanced Usage Topics

To learn more about document comparison features, please refer to the [advanced usage section]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}}).

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
