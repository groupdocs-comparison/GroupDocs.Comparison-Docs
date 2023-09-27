---
id: compare-of-variables-and-document-properties
url: comparison/net/compare-of-variables-and-document-properties
title: Compare of Variables and Document properties
weight: 11
description: "This article explains how to activate the comparison of document properties in GroupDocs.Comparison for .NET."
keywords: variables properties, built properties, custom properties, compare document properties, CompareVariableProperty, CompareDocumentProperty
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
    name: How to Variables and Document properties in .NET
    description: Learn how to compare Variables and Document propertiesdocuments in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CompareVariableProperty and CompareDocumentProperty of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare various properties of a Word document such as _Variable_, _Built_, and _Custom_ properties.

Use the following fields of the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) class to enable comparison functions for document properties:

- [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) allows the comparison of _variable_ properties
- [CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) allows  the comparison of _built_ and _custom_ properties

To activate compare document properties, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object. Specify the source file path or stream.
2.  Call the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method. Specify the target file path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object. Set the [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) property to `true` for the _variable_ properties and/or [CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty)  for _built_ and _custom_ properties.
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from the previous step.

The following code snippet shows how activate comparison of the Variable, Built and Custom properties:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions();
    options.CompareVariableProperty = true; // to activate the comparison of variable properties
    options.CompareDocumentProperty = true; // to activate the comparison of built and custom properties

    comparer.Compare(resultPath, options);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/properties-summary-page.png)
