---
id：如何比较简报
url: comparison/java/how-to-compare-powerpoint-presentations
title: "如何比较 PowerPoint 演示文稿"
weight: 4
description: "本文介绍了在您的工作实践中使用 Java 的 GroupDocs.Comparison 的一个可能示例，以及在 PowerPoint 演示文稿中查找样式差异的软件产品的可能性"
keywords: "比较演示文稿，比较样式变化，比较 pptx，如何比较 PowerPoint 文件"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：PowerPoint幻灯片对比
        description: "该产品允许比较 PowerPoint 幻灯片"
产品代码：比较
产品平台：java
如何：
名称：如何比较 PowerPoint 幻灯片
        description: "了解如何在 Java 或 Kotlin 项目中比较 PowerPoint 幻灯片"
脚步：
- 名称：加载源 PowerPoint
文本：创建一个比较器类的实例，将源 PowerPoint 作为构造函数参数传递
- 名称：加载目标 PowerPoint
文本：添加一个或多个目标 PowerPoint 以将它们与源 1 进行比较
- 名称：比较源和目标 PowerPoints
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
您可能需要比较 PowerPoint 演示文稿的两个版本以查看它们之间的差异（例如，如果同事直接编辑了它而没有注意到更改）。最快的方法是使用 PowerPoint 的内置比较功能。要使用这个：

* 打开演示文稿的原始版本
* 转到 **评论** > **比较**
* 点击 **Compare** 打开浏览器窗口
* 选择演示文稿的编辑版本，然后单击 **Merge**

然后您将进入查看模式。这将打开审阅窗格，该窗格在屏幕右侧显示演示文稿中所有编辑的列表。

![](/comparison/java/images/how-to-compare-powerpoint-presentations.png)

## 如何使用 GroupDocs.Comparison 比较两个演示文稿

第三方程序提供的这种功能显然是不够的。 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 提供了许多功能来比较各种[支持的文件格式]({{< ref "comparison/java/getting-started/ supported-document-formats.md" >}})，包括 PowerPoint 演示文稿格式。举个例子，你在不同的时间做了一个演示，但是幻灯片上的元素没有像你原来那样定位。要查找幻灯片的不同之处，您可以使用 **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 功能以及内置的 PPTX 格式比较两个文件帮助查找样式更改的选项。

|原始演示文稿 |修改后的演示文稿 |
|------------------------------------------------- --------------------------|------------------------ -------------------------------------------------- ---|
| ![](比较/java/images/how-to-compare-powerpoint-presentations_1.png) | ![](比较/java/images/how-to-compare-powerpoint-presentations_2.png) |

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) 提供了比较 PPTX 格式的两个文件（或任何其他[支持的文件格式]({{< ref "comparison /java/getting-started/supported-document-formats.md" >}}))

以下是比较两个 PPTX 文件的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 使用所需参数实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象；
* 调用[比较](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) 方法和将 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象传递给方法；

以下代码示例演示了如何比较两个 PPTX 文件。

<script src="https://gist.github.com/groupdocs-comparison-gists/b4e2d61b246bba68f353feeff2cce6bd.js"></script>

结果，我们得到一个 PPTX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font>

|结果幻灯片 |
|------------------------------------------------- --------------------------|
| ![](比较/java/images/how-to-compare-powerpoint-presentations_3.png) |

要比较演示文档中的评论，您必须将 DetalisationLevel 属性设置为 High：

<script src="https://gist.github.com/groupdocs-comparison-gists/847f4abe4420c4f476f6432ae3b67db1.js"></script>

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

