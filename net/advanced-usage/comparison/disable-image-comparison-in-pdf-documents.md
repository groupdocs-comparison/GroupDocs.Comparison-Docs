---
id: disable-image-comparison-in-pdf-documents
url: comparison/net/disable-image-comparison-in-pdf-documents
title: Disable image comparison in PDF documents
weight: 20
description: "This article explains how to disable image comparison in PDF documents as a built in feature in GroupDocs.Comparison for .NET."
keywords: comparison, image, pdf
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
    name: How to disable image comparison in PDF documents
    description: Learn how to disable image comparison in PDF documents
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CompareImagesPdf of false value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to disable image comparison in PDF documents.

By default, the CompareImagesPdf option is `true`. Follow these steps to turn off image comparison:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. Set the [CompareImagesPdf](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/compareimagespdf) property to `false`;
3.  Set the [ImagesInheritanceMode](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/imagesinheritancemode) property to `ImagesInheritance.Source` or `ImagesInheritance.Target`;
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how to disable image comparison in PDF documents:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.pdf"))
{
    comparer.Add("target.pdf");
    CompareOptions compareOptions = new CompareOptions()
    {
        CompareImagesPdf = false,
        ImagesInheritanceMode = ImagesInheritance.Target
    }
    comparer.Compare("result.pdf", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/disable-image-comparison-in-pdf-documents.png)
