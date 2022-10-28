---
id: how-to-compare-price-lists
url: comparison/java/how-to-compare-price-lists
title: How to Compare Price Lists
weight: 5
description: "This article describes how to compare files using Microsoft Excel feature and GroupDocs.Comparison API for Java. You will also learn how to compare two or more tables and get the difference in files"
keywords: Compare Excel files, compare spreedsheet, how to compare Excel files
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Excel comparer
    description: The product allows to compare Excel spreadsheets
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to compare Excel spreadsheets
    description: Learn how to compare Excel spreadsheets in Java or Kotlin project
    steps:
      - name: Load source Excel spreadsheet
        text: Create an instance of Comparer class passing source spreadsheet as a constructor parameter
      - name: Load target Excel spreadsheets
        text: Add one or more target Excel spreadsheets to compare them with source one
      - name: Compare source and target Excel spreadsheets
        text: Run comparison process passing path where the result of the comparison will be saved
---

Let's say you have two Excel workbooks, or maybe two versions of the same workbook, that you want to compare. Or maybe you want to find potential problems, like manually-entered (instead of calculated) totals, or broken formulas. If you have Microsoft Office Professional Plus 2013, you can use Microsoft Spreadsheet Compare to run a report on the differences and problems it finds.

{{< alert style="info" >}}Important:  Spreadsheet Compare is only available with Office Professional Plus 2013 or Office 365 ProPlus.{{< /alert >}}

To compare two Excel workbooks with Office Professional Plus 2013 you should:

- Click **Home > Compare Files**. The Compare Files dialog box appears.  
  ![](/comparison/java/images/how-to-compare-price-lists.jpg)
- Click the blue folder icon next to the **Compare** box to browse to the location of the earlier version of your workbook.

![](/comparison/java/images/how-to-compare-price-lists_1.jpg)

- Click the green folder icon next to the **To** box to browse to the location of the workbook that you want to compare to the earlier version, and then click **OK**.
- In the left pane, choose the options you want to see in the results of the workbook comparison by checking or unchecking the options, such as **Formulas**, **Macros**, or **Cell Format**. Or, just **Select All**.

![](/comparison/java/images/how-to-compare-price-lists_2.png)

- Click **OK** to run the comparison.

## How to compare Excel files using GroupDocs.Comparison

Microsoft Office Professional Plus 2013 offers spreadsheet comparisons, but **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** provides a possibility to compare worksheet programmatically and you can compare not only two different files, but several at once. Let's say, there are three or more price list for few years (For example: "2018", "2019", "2020") in the XLSX format or other [supported file formats]({{< ref "comparison/java/getting-started/supported-document-formats.md" >}}). other and you need to compare their contents. Here is an example of how to compare three price lists using GroupDocs.Comparsion API. Usually you just have to follow these steps:

- Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream;
- Call [add](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method and specify target document path or stream. Repeat this step for every target document;
- Call [compare](<https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)>) method.

|                     | Files                                                         |
| ------------------- | ------------------------------------------------------------- |
| Price List for 2018 | ![](/comparison/java/images/how-to-compare-price-lists_3.png) |
| Price List for 2019 | ![](/comparison/java/images/how-to-compare-price-lists_4.png) |
| Price List for 2020 | ![](/comparison/java/images/how-to-compare-price-lists_5.png) |

Here is the code that is used to compare three price lists.

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc74c8d9ae6abf118bb1551446e2ca4.js"></script>

As a result, we get a XSLX file where the deleted elements are marked in <font color="red">**red**</font>, the added – in <font color="blue">**blue**</font>, and the modified – in <font color="green">**green**</font>

| Result Price List                                             |
| ------------------------------------------------------------- |
| ![](/comparison/java/images/how-to-compare-price-lists_6.png) |

## More resources

### Advanced Usage Topics

To learn more about document comparison features, please refer to the [advanced usage section]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}}).

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)

### Free Online App

Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [create comparer application](/comparison/java/how-to-use-micronaut-comparison-sample) using Micronaut Framework
- How to [show autocad drawings preview](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) in kotlin compose application
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
