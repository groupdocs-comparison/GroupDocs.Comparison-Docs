---
id: word-track-changes
url: comparison/net/word-track-changes
title: Show results of comparison as a Word Track Changes
weight: 12
description: "This article explains how to use the Microsoft Word Track Changes comparing as a built in feature in GroupDocs.Comparison for .NET."
keywords: WordTrackChanges, revisions
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
    name: How to show results of comparison as a Word Track Changes
    description: Learn how to use Word Track Changes in comparison result
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify WordTrackChanges of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides the ability to compare and customize the display of revisions in the resulting document.

**Revision** - changes received when comparing documents using built-in Word tools.

By default, the Word Track Changes option is _false_. Below are the steps to turn on the Word Track Changes:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object with source file path or stream;
- Call [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method and specify target file path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object and set [WordTrackChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/wordtrackchanges) property to _true_;
- Call [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from previous step.

## Example code block to disable the display of revisions

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {WordTrackChanges = true};
    comparer.Compare(resultPath, options);
}
```

## Example of a result with the Revision display enabled

---

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/net/images/word-track-changes-option-true.png) |

## Example of a result with the Revision display disabled

---

|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/word-track-changes-option-false.png) |

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
