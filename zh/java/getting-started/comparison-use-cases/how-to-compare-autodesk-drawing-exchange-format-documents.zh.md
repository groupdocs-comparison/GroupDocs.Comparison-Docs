---
id：如何比较-autodesk-drawing-exchange-format-documents
url: comparison/java/how-to-compare-autodesk-drawing-exchange-format-documents
title: "如何比较 Autodesk Drawing eXchange 格式文档"
weight: 23
description: "阅读本文，您将了解如何比较 Autodesk Drawing eXchange 格式文档 (DXF)"
keywords: "如何比较 AutoCAD 文件、CAD 文件差异、比较 Autodesk 工程图、比较 DXF"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较 AutoCad DXF 文件
        description: "该产品允许比较 AutoCad DXF 文件"
产品代码：比较
产品平台：java
如何：
名称：如何比较 DXF（Autodesk 绘图交换格式）文档
        description: "了解如何比较 DXF（Autodesk 绘图交换格式）文档"
脚步：
- 名称：加载源 AutoCad DXF 文档
文本：创建一个比较器类的实例，将源 AutoCad DXF 文档作为构造函数参数传递
- 名称：加载目标 AutoCad DXF 文档
文本：添加一个或多个目标 AutoCad DXF 文档以将它们与源文件进行比较
- 名称：比较源和目标 AutoCad DXF 文档
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
通常很难确定在 Autodesk DXF（图纸交换格式）文档中所做的更改。同时，这是一个非常受欢迎的问题，尤其是现在，当许多公司都有远程工作的员工时。幸运的是，使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java)，您可以轻松比较两个 DXF 文档以及其他 [支持的文件格式]({{< ref "comparison/java/入门/支持的文档格式.md" >}})

## 突出显示比较 Autodesk 工程图格式的更改

比较结果可以保存为 PDF 文件，突出显示更改、删除或插入的元素。您可以轻松更改突出显示颜色，以便以不同方式标记更改。默认颜色为：

* 已删除的对象 – <font color="red">**红色**</font>
* 插入的对象 – <font color="blue">**蓝色**</font>
* 已更改的对象 – <font color="green">**绿色**</font>

## 如何使用 GroupDocs.Comparison 比较 Autodesk Drawing eXchange 格式文档

要比较 DXF（Autodesk 绘图交换格式）文档，您接下来应该执行以下操作：

1. 创建 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类的新实例，传递源文档路径或流作为参数
2.调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String))方法传递目标文档路径或流作为参数
3.调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String))方法运行比较过程

以下 Java 代码示例演示了上述方法：

<script src="https://gist.github.com/groupdocs-comparison-gists/c7a7f2c57521c83202818207264b6536.js"></script>

你可以在 Kotlin 中做同样的事情：

<script src="https://gist.github.com/groupdocs-comparison-gists/b115da918c69f21d1ce7a36dc2874c98.js"></script>

以下是源文档、目标文档和结果文档的示例：

|源 DXF（Autodesk 绘图交换格式）文档 |目标 DXF（Autodesk 工程图交换格式）文档 |
|------------------------------------------------- --------------------------------------------------| -------------------------------------------------- ------------------------------------------------|
| ![](比较/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-source.png) | ![](比较/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-target.png) |

|结果 PDF 文件 |
|:------------------------------------------------ ------------------------------------------------:|
| ![](比较/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-result.png) |


### 如何使用额外的比较选项

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 库有很多选项可用于自定义比较过程以及结果文件。这里只显示了几个选项。有关更多详细信息，请查看 [文档](/comparison/java/getting-started/)

#### 生成摘要页面

您可以轻松地启用生成特殊页面，其中将显示有关文档更改的摘要信息。此外，您可以启用生成扩展摘要页面以获取更详细的信息。

这是Java的代码示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/6820d8c552709a6bb49923f2633ce20f.js"></script>

您可以在 Kotlin 应用程序中执行相同的操作：

<script src="https://gist.github.com/groupdocs-comparison-gists/40d05bf0aaf79e156fb57123d59e62f6.js"></script>

#### 自定义更改样式

要使用自定义更改样式，只需配置比较器，以便它以您想要的方式突出显示更改。

这是Java的代码示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

在 Kotlin 中，它的工作方式相同：

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

### 获取免费 API 许可证

大多数设置，例如生成摘要页面、比较敏感度等，仅在许可下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

本文介绍了使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 库比较 DXF（Autodesk 绘图交换格式）文档。该库可以轻松嵌入到任何平台上的任何 Java 或 Kotlin、桌面或 Web 应用程序中。 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上有在 Web 应用程序中使用比较 API 的示例。它们可以自由修改并用于比较 AutoCad 绘图、照片、Excel、Word、代码文件、PowerPoint 演示文稿和其他 [支持的文件格式](/comparison/java/supported-document-formats/)。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

### 免费在线应用
除了功能齐全的 Java 库，我们还提供简单但功能强大的免费应用程序。
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 和其他文档**[GroupDocs 比较应用程序](https://products.groupdocs.app/比较）**。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何[比较 AutoCAD](/comparison/java/how-to-compare-autocad-drawings) 图纸
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何 [使用 Google Drive API 作为文件源](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) 比较 Java 或 Kotlin 中的文档

