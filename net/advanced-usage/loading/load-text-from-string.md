---
id: load-text-from-string
url: comparison/net/load-text-from-string
title: Load text from string
weight: 5
description: "This article explains how to load values from variables of string type when using GroupDocs.Comparison for .NET."
keywords: Load values from variables of string type, Load text with GroupDocs.Comparison
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
    name: How load text from string in .NET
    description: Learn how to load file from string in .NET step by step
    steps:
      - name: Create an object and load source text
        text: Create an object of Comparer class. The constructor takes the source text by first parameter and a LoadOption object with LoadText parameter.
      - name: Load target text
        text: Add the tagret text using the Add method. Second parameter is a LoadOption object that contains LoadText = true.
      - name: Compare documents
        text: Create a string variable where the result of the comparison will be placed.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to compare values from the `string` type variables.

To compare text from variables, follow these steps:

1.  Instantiate the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object. Set the [LoadText](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/loadoptions/properties/loadtext) property to `true` (this indicates that passed string contains text to be compared, not file path).
2.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source variable of the `string` type and the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created in the previous step.
3.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify target variable of the `string` type and the [LoadOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) object created in the previous step.
4.  Call the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method.
5.  Call the [GetResultString](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/getresultstring) method to get string with comparison result.

The following code snippet shows how to load values from variables:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source text", new LoadOptions() { LoadText = true }))
{
    comparer.Add("target text", new LoadOptions() { LoadText = true });
    comparer.Compare();
    string result = compare.GetResultString();
    Console.WriteLine("Result string: \n" + comparer.GetResultString());
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/load-text-from-string.png)

The following code snippet shows how to combine the different ways of specifying documents:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

using (Stream sourceStream = File.OpenRead("./source.docx"))
{
    using (Comparer comparer = new Comparer(sourceStream))
    {
        comparer.Add("target text", new LoadOptions() { LoadText = true });
        comparer.Compare();
        string result = compare.GetResultString();
        Console.WriteLine(result);
    }
}
```
{{< /tab >}}
{{< /tabs >}}