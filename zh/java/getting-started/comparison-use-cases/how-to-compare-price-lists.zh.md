---
id：如何比较价格列表
url: comparison/java/how-to-compare-price-lists
title: "如何比较价目表"
weight: 5
description: "本文介绍如何使用 Microsoft Excel 功能和 GroupDocs.Comparison API for Java 比较文件。您还将学习如何比较两个或多个表并获取文件的差异"
keywords: "比较 Excel 文件，比较电子表格，如何比较 Excel 文件"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：Excel比较器
        description: "该产品允许比较 Excel 电子表格"
产品代码：比较
产品平台：java
如何：
名称：如何比较 Excel 电子表格
        description: "了解如何在 Java 或 Kotlin 项目中比较 Excel 电子表格"
脚步：
- 名称：加载源 Excel 电子表格
文本：创建一个比较器类的实例，将源电子表格作为构造函数参数传递
- 名称：加载目标 Excel 电子表格
文本：添加一个或多个目标 Excel 电子表格以将它们与源电子表格进行比较
- 名称：比较源和目标 Excel 电子表格
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
假设您有两个要比较的 Excel 工作簿，或者可能是同一工作簿的两个版本。或者，也许您想找出潜在的问题，例如手动输入（而不是计算）的总数，或损坏的公式。如果您有 Microsoft Office Professional Plus 2013，则可以使用 Microsoft 电子表格比较运行它发现的差异和问题的报告。

{{< alert style="info" >}}重要提示：电子表格比较仅适用于 Office Professional Plus 2013 或 Office 365 ProPlus。{{< /alert >}}

要将两个 Excel 工作簿与 Office Professional Plus 2013 进行比较，您应该：

* 单击 **主页 > 比较文件**。出现比较文件对话框。
    ![](/comparison/java/images/how-to-compare-price-lists.jpg)
* 单击 **Compare** 框旁边的蓝色文件夹图标以浏览到工作簿早期版本的位置。

![](/comparison/java/images/how-to-compare-price-lists_1.jpg)


* 单击 **To** 框旁边的绿色文件夹图标以浏览到要与早期版本进行比较的工作簿的位置，然后单击 **OK**。
* 在左侧窗格中，通过选中或取消选中选项来选择要在工作簿比较结果中看到的选项，例如 **Formulas**、**Macros** 或 **Cell Format**。或者，只需**全选**。

![](/comparison/java/images/how-to-compare-price-lists_2.png)
* 单击 **OK** 运行比较。

## 如何使用 GroupDocs.Comparison 比较 Excel 文件

Microsoft Office Professional Plus 2013 提供电子表格比较，但 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 提供了以编程方式比较工作表的可能性，您不仅可以比较两个不同的文件，而且一次几个。假设有 XLSX 格式或其他 [支持的文件格式]({{< ref "comparison/java/入门/支持的文档格式.md" >}})。其他，您需要比较它们的内容。下面是一个如何使用 GroupDocs.Comparsion API 比较三个价目表的示例。通常您只需按照以下步骤操作：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流。对每个目标文档重复此步骤；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) 方法。

| |文件 |
|---------------------|-------------------------- ----------------------------------|
| 2018年价目表| ![](比较/java/images/how-to-compare-price-lists_3.png) |
| 2019年价目表| ![](比较/java/images/how-to-compare-price-lists_4.png) |
| 2020年价目表| ![](比较/java/images/how-to-compare-price-lists_5.png) |

这是用于比较三个价目表的代码。

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc74c8d9ae6abf118bb1551446e2ca4.js"></script>

结果，我们得到一个 XSLX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font>

|结果价目表 |
|------------------------------------------------- -------------|
| ![](比较/java/images/how-to-compare-price-lists_6.png) |

## 更多资源
### 高级用法主题
要了解更多关于文档比较功能的信息，请参阅[高级用法部分]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}})。

### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：

* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)


### 免费在线应用
除了功能齐全的 Java 库，我们还提供简单但功能强大的免费应用程序。
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 和其他文档**[GroupDocs 比较应用程序](https://products.groupdocs.app/比较）**。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何使用 Micronaut 框架 [创建比较器应用程序](/comparison/java/how-to-use-micronaut-comparison-sample)
* 如何在 kotlin compose 应用程序中[显示 autocad 图纸预览](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

