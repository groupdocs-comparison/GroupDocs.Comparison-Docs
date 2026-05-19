---
id: compare-bookmarks-in-word
url: comparison/net/compare-bookmarks-in-word
title: Compare bookmarks in Word documents
weight: 12
description: "Detect differences in Word document bookmarks using CompareOptions.CompareBookmarks = true in GroupDocs.Comparison for .NET — includes named bookmark changes in the result."
keywords: CompareBookmarks, WordCompareOptions.CompareBookmarks, compare Word bookmarks, bookmark diff, docx bookmarks C#, bookmark comparison .NET
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
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CompareBookmarks of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare bookmarks in the Word documents.

To compare bookmarks in the Word documents, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. Set the [CompareBookmarks](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparebookmarks) property to `true`.
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to demonstrate how to compare bookmarks:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");

    comparer.Compare("result.docx", new CompareOptions {
        CompareBookmarks = true
    });
}
```
{{< /tab >}}
{{< /tabs >}}

The result of compared bookmarks is as follows:

![](/comparison/net/images/compared-bookmarks.png)

## See also

- [Word compare options]({{< ref "comparison/net/advanced-usage/comparison/word-compare-options.md" >}})
- [Compare variables and document properties]({{< ref "comparison/net/advanced-usage/comparison/compare-of-variables-and-document-properties.md" >}})
- [Compare documents]({{< ref "comparison/net/comparison-basic/compare-documents.md" >}})
