---
id: compare-bookmarks-in-word
url: comparison/net/compare-bookmarks-in-word
title: Compare bookmarks in Word documents
weight: 12
description: "This article explains how to activate the comparison of bookmarks for Word format in GroupDocs.Comparison for .NET."
keywords: bookmarks, Word, word, docx, doc, compare bookmarks, word bookmarks, CompareBookmarks, bookmarks comparison
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using C# language and GroupDocs.Comparison for .NET
    productCode: comparison
    productPlatform: net
  showVideo: True
  howTo:
    name: How to compare bookmarks in Word documents in .NET
    description: Learn how to compare bookmarks in Word documents in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CompareBookmarks of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** allows to compare bookmarks in WORD documents.

The following are the steps to compare bookmarks of documents:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object with source file path or stream;
- Call [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method and specify target file path or stream;
- Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object and initialize the [CompareBookmarks](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparebookmarks) property with **true**;
- Call [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from previous step.

## Example code block to demonstrate how to compare bookmarks

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);

    comparer.Compare(resultPath, new CompareOptions {
        CompareBookmarks = true
    });
}
```

## The result after comparing document with enabled CompareBookmarks option

---

The result of compared bookmarks is presented as inserted comments with description in document. See example below on image:

![](/comparison/net/images/compared-bookmarks.png)

## More resources

---

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

### Free Online App

Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
