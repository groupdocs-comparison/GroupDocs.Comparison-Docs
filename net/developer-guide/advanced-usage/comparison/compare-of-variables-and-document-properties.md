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

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** allows you to compare various properties of a WORD document such as _Variable_, _Built_, and _Custom_ properties.

The following fields of the CompareOptions class are used to enable comparison functions for document properties:

- [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) - to activate the comparison of _variable_ properties;
- [CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) - to activate the comparison of _built_ and _custom_ properties.

Following are the steps to activate compare document properties:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object with source file path or stream;
- Call [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method and specify target file path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object and set [CompareVariableProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) property to _true_ ([CompareDocumentProperty](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) to _true_ for _built_ and _custom_ properties);
- Call [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from previous step.

## Example code block to activate comparison of Variable, Built and Custom properties

---

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

## The result of comparing properties

---

The result of comparing properties is presented on a separate page - _Properties summary page_.

![](/comparison/net/images/properties-summary-page.png)

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
