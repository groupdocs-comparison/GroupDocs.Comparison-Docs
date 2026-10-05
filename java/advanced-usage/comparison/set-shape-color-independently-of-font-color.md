---
id: set-shape-color-independently-of-font-color
url: comparison/java/set-shape-color-independently-of-font-color
title: Set shape color independently of font color
weight: 16
description: "Following this guide you will learn how to set shape color independently of font color and modify appearance of detected changes when use GroupDocs.Comparison for Java."
keywords: Style change detection, Compare document styles, Document comparison, Shapes
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
    name: How to set shape color independently of font color in Java
    description: Learn how to set shape color independently of font color in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the add method
      - name: Specify necessary settings
        text: Create an options object and initialize InsertedItemStyle, DeletedItemStyle, ChangedItemStyle parameters by object with required parameters.
      - name: Specify color for changed shapes
        text: Set ShapeColor option for the InsertedItemStyle/DeletedItemStyle/ChangedItemStyle parameters.
      - name: Compare documents
        text: Call the compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) provides the option to specify the color for changed shapes.

To compare two documents with custom change color for shapes, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. Specify the [ShapeColor](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.style/stylesettings/#setShapeColor-java.awt.Color-) for the [InsertedItemStyle](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setInsertedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-)/[DeletedItemStyle](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDeletedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-)/[ChangedItemStyle](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setChangedItemStyle-com.groupdocs.comparison.options.style.StyleSettings-) parameters.
4.  Set [MarkChangedContent](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setMarkChangedContent-boolean-) to `true`.
5.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object.

The following code snippets show how to compare documents with specific color options for shapes:

## Compare documents from local disk with custom change color for shapes

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.options.style.StyleSettings;
import java.awt.Color;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setDetectStyleChanges(true);
    compareOptions.setMarkChangedContent(true);

    final StyleSettings insertedStyleSettings = new StyleSettings();
    insertedStyleSettings.setFontColor(Color.BLUE);
    insertedStyleSettings.setShapeColor(new Color(128, 0, 128)); // purple
    compareOptions.setInsertedItemStyle(insertedStyleSettings);

    final StyleSettings deletedStyleSettings = new StyleSettings();
    deletedStyleSettings.setFontColor(Color.RED);
    deletedStyleSettings.setShapeColor(Color.ORANGE);
    compareOptions.setDeletedItemStyle(deletedStyleSettings);

    final StyleSettings changedStyleSettings = new StyleSettings();
    changedStyleSettings.setFontColor(Color.GREEN);
    changedStyleSettings.setShapeColor(new Color(144, 238, 144)); // light green
    compareOptions.setChangedItemStyle(changedStyleSettings);

    comparer.compare("result.docx", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/set-shape-color-independently-of-font-color.png)

## See also

- [Customize changes styles]({{< ref "comparison/java/advanced-usage/comparison/customize-changes-styles.md" >}})
- [StyleSettings API reference](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.style/stylesettings/)
