---
id: get-file-info
url: comparison/java/get-file-info
title: Get file info
weight: 2
description: ""
keywords: 
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
        name: How to get file info
        description: Learn how to get information of the file with a help of Comparison API
        steps:
        - name: Create 'Comparer' object
          text: Create 'Comparer' object passing file path as a constructor argument
        - name: Get document info using special method
          text: Call 'getSource()' method to get 'Document' object. Then, call 'getDocumentInfo()' method of 'Document' object to get document info
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** allows to get file information which includes:

*   [FileType](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getFileType()) - document file type (PDF, Word document, Excel spreadsheet, PowerPoint presentation or image etc.);
*   [PageCount](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPageCount()) - count of document pages;
*   [FileSize](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getSize()) - document file size;
*   [PagesInfo](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPagesInfo()) - represents information about page.

The following code samples demonstrate how to get file information.

## Get file info for the file from local disk

```java
    try (Comparer comparer = new Comparer("C:\\source.docx")) {
        IDocumentInfo info = comparer.getSource().getDocumentInfo();
        for (int i = 0; i < info.getPageCount(); i++) {
            System.out.printf("\nFile type: %s\nNumber of pages: %d\nDocument size: %d bytes\nWidth: %d\nHeight: %d%n",
                info.getFileType().getFileFormat(), info.getPageCount(), info.getSize(), info.getPagesInfo().get(i).getWidth(), info.getPagesInfo().get(i).getHeight());
        }
    }
```

## Get file for the file from stream

```java
    try (InputStream inputStream = new FileInputStream("C:\\source.docx");
        Comparer comparer = new Comparer(inputStream)) {
        IDocumentInfo info = comparer.getSource().getDocumentInfo();
        for (int i = 0; i < info.getPageCount(); i++) {
            System.out.printf("\nFile type: %s\nNumber of pages: %d\nDocument size: %d bytes\nWidth: %d\nHeight: %d%n", 
                info.getFileType().getFileFormat(), info.getPageCount(), info.getSize(), info.getPagesInfo().get(i).getWidth(), info.getPagesInfo().get(i).getHeight());
        }
    }
```

## More resources
### Advanced Usage Topics
To learn more about document comparison features, please refer to the [advanced usage section]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}}).

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
