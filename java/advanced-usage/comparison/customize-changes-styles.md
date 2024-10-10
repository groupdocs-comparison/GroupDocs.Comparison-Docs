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
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and initialize InsertedItemStyle, DeletedItemStyle, ChangedItemStyle parameters by object with required parameters.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) provides the compare options collection to set up the appropriate comparison speed and quality.

To compare two documents with custom change style settings, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. Specify the appropriate parameters.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object.

The following code snippets show how to compare documents with specific options:

## Compare documents from local disk with custom change styles

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.options.style.StyleSettings;
import java.awt.*;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");
    
    CompareOptions compareOptions = new CompareOptions();

    final StyleSettings insertedStyleSettings = new StyleSettings();
    insertedStyleSettings.setHighlightColor(Color.RED);
    insertedStyleSettings.setFontColor(Color.GREEN);
    insertedStyleSettings.setUnderline(true);
    insertedStyleSettings.setBold(true);
    insertedStyleSettings.setStrikethrough(true);
    insertedStyleSettings.setItalic(true);
    compareOptions.setInsertedItemStyle(insertedStyleSettings);

    final StyleSettings deletedStyleSettings = new StyleSettings();
    deletedStyleSettings.setHighlightColor(Color.PINK);
    deletedStyleSettings.setFontColor(Color.CYAN);
    deletedStyleSettings.setUnderline(true);
    deletedStyleSettings.setBold(true);
    deletedStyleSettings.setStrikethrough(true);
    deletedStyleSettings.setItalic(true);
    compareOptions.setDeletedItemStyle(deletedStyleSettings);

    final StyleSettings changedStyleSettings = new StyleSettings();
    changedStyleSettings.setHighlightColor(Color.LIGHT_GRAY);
    changedStyleSettings.setFontColor(Color.GRAY);
    changedStyleSettings.setUnderline(true);
    changedStyleSettings.setBold(true);
    changedStyleSettings.setStrikethrough(true);
    changedStyleSettings.setItalic(true);
    compareOptions.setChangedItemStyle(changedStyleSettings);

    final Path resultPath = comparer.compare("result.docx", compareOptions);
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
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.options.style.StyleSettings;
import java.awt.*;
import java.nio.file.Path;
import java.io.FileInputStream;
import java.io.InputStream;
// ...

try (Comparer comparer = new Comparer(sourceInputStream)) {
    comparer.add(targetInputStream);
    
    CompareOptions compareOptions = new CompareOptions();

    final StyleSettings insertedStyleSettings = new StyleSettings();
    insertedStyleSettings.setHighlightColor(Color.RED);
    insertedStyleSettings.setFontColor(Color.GREEN);
    insertedStyleSettings.setUnderline(true);
    insertedStyleSettings.setBold(true);
    insertedStyleSettings.setStrikethrough(true);
    insertedStyleSettings.setItalic(true);
    compareOptions.setInsertedItemStyle(insertedStyleSettings);

    final StyleSettings deletedStyleSettings = new StyleSettings();
    deletedStyleSettings.setHighlightColor(Color.PINK);
    deletedStyleSettings.setFontColor(Color.CYAN);
    deletedStyleSettings.setUnderline(true);
    deletedStyleSettings.setBold(true);
    deletedStyleSettings.setStrikethrough(true);
    deletedStyleSettings.setItalic(true);
    compareOptions.setDeletedItemStyle(deletedStyleSettings);

    final StyleSettings changedStyleSettings = new StyleSettings();
    changedStyleSettings.setHighlightColor(Color.LIGHT_GRAY);
    changedStyleSettings.setFontColor(Color.GRAY);
    changedStyleSettings.setUnderline(true);
    changedStyleSettings.setBold(true);
    changedStyleSettings.setStrikethrough(true);
    changedStyleSettings.setItalic(true);
    compareOptions.setChangedItemStyle(changedStyleSettings);

    final Path resultPath = comparer.compare(resultInputStream, compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
