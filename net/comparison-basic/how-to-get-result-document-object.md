---
id: how-to-get-result-document-object
url: comparison/net/how-to-get-result-document-object
title: Get comparison result as an object model
weight: 4
description: "This article explains how to get result document object model with GroupDocs.Comparison for .NET."
keywords: Compare documents, result, document, object, aspose
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
    name: How to get comparison result document object in .NET
    description: Learn how to get comparison result document object in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Compare documents
        text: Call the Compare method of your object and get the result document object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to get result document object model after comparison.

To get result document object, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare) method and assign its return value to a [Document](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/document/) object.

You can retrieve the name, password, changes, stream and other document information using [Document](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/document/) object. Also, our object model is fully compatible with the object models of Aspose libraries.

The following code snippets show how to get changes and create new Aspose Word document using result document object model:

## Obtain the result document object and get changes

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Comparison;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
      comparer.Add("target.docx");
      GroupDocs.Comparison.Document resultDocument = comparer.Compare("result.docx");
      foreach (var change in resultDocument.Changes)
      {
          Console.ForegroundColor = ConsoleColor.Green;
          Console.Write("Source test: ");
          Console.ForegroundColor = ConsoleColor.White;
          Console.WriteLine(change.SourceText);

          Console.ForegroundColor = ConsoleColor.Blue;
          Console.Write("Target test: ");
          Console.ForegroundColor = ConsoleColor.White;
          Console.WriteLine(change.TargetText + "\n");
      }
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/how-to-get-result-document-object.png)

## Create a new Word document based on the result document and modify its contents

You can use the Comparison [Document](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/document/) object to generate Aspose documents and perform modifications seamlessly. The resultDocument.Stream will contain an Aspose document object corresponding to the format being compared.

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Comparison;
using Aspose.Words;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
      // Add target document and save comparison result to Comparison.Document object
      comparer.Add("target.docx");
      GroupDocs.Comparison.Document resultDocument = comparer.Compare("result.docx");

      // Create a new Aspose Document object of corresponding format.
      Aspose.Words.Document asposeDocument = new Aspose.Words.Document(resultDocument.Stream);

      // Access the Document's builder to add content.
      DocumentBuilder builder = new DocumentBuilder(asposeDocument);

      // Add some text to the document.
      builder.Writeln("Hello, World!");
      builder.Write("This is an example of using Aspose.Words.");

      // Save the document to a file.
      asposeDocument.Save("output.docx");
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/modify-result-document-using-aspose.png)

