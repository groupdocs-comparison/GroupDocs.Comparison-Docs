---
id: set-shape-color-independently-of-font-color
url: comparison/net/set-shape-color-independently-of-font-color
title: Set shape color independently of font color
weight: 16
description: "Following this guide you will learn how to set shape color independently of font color and modify appearance of detected changes when use GroupDocs.Comparison for .NET."
keywords: Style change detection, Compare document styles, Document comparison, Shapes
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
    name: How to set shape color independently of font color in .NET
    description: Learn how to set shape color independently of font color in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and initialize InsertedItemStyle, DeletedItemStyle, ChangedItemStyle parameters by object with required parameters.
      - name: Specify color for changed shapes
        text: Set ShapeColor option for the InsertedItemStyle/DeletedItemStyle/ChangedItemStyle parameters.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) provides the option to specify the color for changed shapes.

To compare two documents with custom change color for shapes, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object. Specify the [ShapeColor](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/stylesettings/shapecolor/) for the [InsertedItemStyle](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/inserteditemstyle/)/[DeletedItemStyle](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/deleteditemstyle/)/[ChangedItemStyle](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/changeditemstyle/) parameters.
4. Set [MarkChangedContent](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/markchangedcontent) to true.
5.  Call the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object.

The following code snippets show how to compare documents with specific color options for shapes:

## Compare documents from local disk with custom change color for shapes

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions()
    {
        DetectStyleChanges = true,
        MarkChangedContent = true,
        InsertedItemStyle = new StyleSettings()
        {
            FontColor = System.Drawing.Color.Blue,
            ShapeColor = System.Drawing.Color.Purple
        },
        DeletedItemStyle = new StyleSettings()
        {
            FontColor = System.Drawing.Color.Red,
            ShapeColor = System.Drawing.Color.Orange
        },
        ChangedItemStyle = new StyleSettings()
        {
            FontColor = System.Drawing.Color.Green,
            ShapeColor = System.Drawing.Color.LightGreen
        }
    }
    comparer.Compare("result.docx", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/set-shape-color-independently-of-font-color.png)
