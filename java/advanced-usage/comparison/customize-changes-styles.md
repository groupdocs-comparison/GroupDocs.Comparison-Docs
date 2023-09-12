---
id: customize-changes-styles
url: comparison/java/customize-changes-styles
title: Customize changes styles
weight: 4
description: "Following this guide you will learn how to customize document comparison report and modify appearance of detected changes when use GroupDocs.Comparison for Java."
keywords: Style change detection, Compare document styles, Document comparison
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to customize changes styles in Java
    description: Learn how to customize changes styles in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and initialize InsertedItemStyle, DeletedItemStyle, ChangedItemStyle parameters by object with required parameters.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) provides the compare options collection to set up the appropriate comparison speed and quality.

To compare two documents with custom change style settings, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object. Specify the appropriate parameters.
4.  Call the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) method. Specify the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object.

The following code snippets show how to compare documents with specific options:

## Compare documents from local disk with custom change styles

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	CompareOptions compareOptions = new CompareOptions()
	{
    	 InsertedItemStyle = new StyleSettings()
         {
     	    HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
	    IsBold = true,
	    IsStrikethrough = true,
	    IsItalic = true
         },
	 DeletedItemStyle = new StyleSettings()
         {
            HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
	    IsBold = true,
	    IsStrikethrough = true,
	    IsItalic = true
         },
	 ChangedItemStyle = new StyleSettings()
         {
            HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
	    IsBold = true,
	    IsStrikethrough = true,
	    IsItalic = true
         }
	};
        comparer.Compare("result.docx", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/customize-changes-styles.png)

## Compare documents from stream with custom change styles

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	CompareOptions compareOptions = new CompareOptions()
	{
    	 InsertedItemStyle = new StyleSettings()
         {
            HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
	    IsBold = true,
	    IsStrikethrough = true,
	    IsItalic = true
         },
	 DeletedItemStyle = new StyleSettings()
         {
            HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
	    IsBold = true,
	    IsStrikethrough = true,
	    IsItalic = true
         },
		ChangedItemStyle = new StyleSettings()
         {
            HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
	    IsBold = true,
	    IsStrikethrough = true,
	    IsItalic = true
         }
	};
        comparer.Compare(File.Create("result.docx"), compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
