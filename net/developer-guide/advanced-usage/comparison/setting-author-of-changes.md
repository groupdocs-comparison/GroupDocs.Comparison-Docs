---
id: setting-author-of-changes
url: comparison/net/setting-author-of-changes
title: Setting author of changes
weight: 15
description: "This article explains how to set author of changes name in the resulting document in GroupDocs.Comparison for .NET."
keywords: RevisionAuthorName, author, revision
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
    name: How to to set author of changes in .NET
    description: How to set author of changes in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Specify necessary settings
        text: Create an options object and specify WordTrackChanges and ShowRevisions of true value and set name in RevisionAuthorName.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides the ability to set author of changes name in the resulting document.

Here are the simple steps to change author of changes name:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object with source file path or stream;
- Call [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method and specify target file path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object and set [WordTrackChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/wordtrackchanges) and [ShowRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/showrevisions/) properties to _true_;
- Set author of changes using [RevisionAuthorName](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/revisionauthorname) property;
- Call [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from previous step.

## Example code block to get the desired result

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);

	CompareOptions options = new CompareOptions()
    {
        ShowRevisions = true,
        WordTrackChanges = true,
        RevisionAuthorName = "New author",
    };

    comparer.Compare(resultPath, options);
}
```

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
