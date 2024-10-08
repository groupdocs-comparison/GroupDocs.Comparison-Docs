---
id: get-extended-information-on-the-summary-page
url: comparison/net/get-extended-information-on-the-summary-page
title: Get extended information on the summary page
weight: 10
description: "This article explains how to get extended information about comparison of documents on the summary page with GroupDocs.Comparison for .NET."
keywords: Compare documents, summary page, SummaryPage, extended information, ExtendedSummaryPage
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
    name: How to get extended information on the summary page in .NET
    description: Learn how to get extended information on the summary page in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify ExtendedSummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and compare options parameter.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to detect changes between source and target files and display changes on the separate page - [SummaryPage](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/generatesummarypage).
You can also get the extended information about comparison of documents, which is displayed in the [SummaryPage](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/generatesummarypage).

To get extended information, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object. Set the [ExtendedSummaryPage](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/extendedsummarypage) property to `true`.
4.  Call the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to get extended information:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    CompareOptions options = new CompareOptions() {ExtendedSummaryPage = true};
    comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/how-to-get-extended-information-image.png)


