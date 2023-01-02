---
id: word-track-changes
url: comparison/java/word-track-changes
title: Show results of comparison as a Word Track Changes
weight: 14
description: "This article explains how to use the Microsoft Word Track Changes comparing as a built in feature in GroupDocs.Comparison for Java."
keywords: WordTrackChanges, revisions
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java or Kotlin language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
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

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** provides the ability to compare and customize the display of revisions in the resulting document.

**Revision** - changes received when comparing documents using built-in Word tools.

By default, the Word Track Changes option is _false_. Below are the steps to turn on the Word Track Changes:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source file path or stream;
- Call [add](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target file path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object and set [WordTrackChanges](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setWordTrackChanges(boolean)) property to _true_;
- Call [compare](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) object from previous step.

## Example code block to enable the display of revisions

---

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    CompareOptions options = new CompareOptions();
    options.setWordTrackChanges(true);
    comparer.compare(resultPath, options);
}
```

## Example of a result with the Revision display enabled

---

|                     WordTrackChanges true                      |
| :------------------------------------------------------------: |
| ![](/comparison/java/images/word-track-changes-option-true.png) |

## Example of a result with the Revision display disabled

---

|                     WordTrackChanges false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/java/images/word-track-changes-option-false.png) |

## More resources

---

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
