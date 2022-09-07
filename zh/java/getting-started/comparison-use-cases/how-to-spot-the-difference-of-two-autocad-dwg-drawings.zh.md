---
id：如何发现两个 autocad-dwg 图纸的差异
url: comparison/java/how-to-spot-the-difference-of-two-autocad-dwg-drawings
title: "如何发现两个 AutoCad 工程图 (DWG) 的差异"
weight: 24
description: "在文章中写的是关于发现两个 AutoCad 图纸 (DWG) 的差异"
keywords: "如何比较 AutoCAD 图纸、DWG 文件差异、比较 AutoCad 图纸、比较 DWG"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较 AutoCAD 工程图（DWG 文件）
        description: "该产品允许比较 AutoCad 图纸（DWG 文件）"
产品代码：比较
产品平台：java
如何：
名称：如何比较 AutoCad 图纸（DWG 文件）
        description: "了解如何比较 AutoCad 工程图（DWG 文件）"
脚步：
- 名称：加载源 AutoCad DWG 文件
文本：创建一个比较器类的实例，将源 AutoCad DWG 文件作为构造函数参数传递
- 名称：加载目标 AutoCad DWG 文件
文本：添加一个或多个目标 AutoCad DWG 文件以将它们与源文件进行比较
- 名称：比较源和目标 AutoCad DWG 文件
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
很难看出两个 AutoCad 工程图（DWG 文件）的差异。同时，越来越多的人需要这样做，尤其是现在，当许多员工远程工作时。幸运的是，使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 库，您可以轻松比较两个 AutoCad 工程图（DWG 文件）以及许多其他 [支持的文件格式]({{< ref “比较/java/getting-started/supported-document-formats.md”>}}）

## 如何比较 AutoCAD 工程图（DWG 文件）

只需按照以下步骤比较其中两个或多个：

1.以源文件路径或流作为参数创建[Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)类的新实例
2.调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String))方法添加目标文档路径或流进行比较来源一
3.调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String))方法比较文件并保存结果文档

下面是演示上述步骤的 Java 代码：

<script src="https://gist.github.com/groupdocs-comparison-gists/49d0e0a30eeacc325a1d7acce26e5c8c.js"></script>

你可以在 Kotlin 中做同样的事情：

<script src="https://gist.github.com/groupdocs-comparison-gists/70107598e427be7b12b7fa1c8490e8ce.js"></script>

以下是源文档、目标文档和结果文档的示例：

|源 AutoCAD 工程图（DWG 文件）|目标 AutoCAD 工程图（DWG 文件）|
|------------------------------------------------- --------------------------------------------------| -------------------------------------------------- ---------------------------------------------------------------|
| ![](比较/java/images/how-to-spot-the-difference-of-two-autocad-dwg-drawings-source.png) | ![](比较/java/images/how-to-spot-the-difference-of-two-autocad-dwg-drawings-target.png) |

|结果 PDF 文件 |
|:------------------------------------------------ ------------------------------------------------:|
| ![](比较/java/images/how-to-spot-the-difference-of-two-autocad-dwg-drawings-result.png) |

### 如何使用额外的比较选项

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 提供了许多附加选项，不仅可以用于自定义比较过程，还可以自定义结果文件。下面仅描述其中的几个。有关更多详细信息，请参阅 [文档](/comparison/java/getting-started/)

#### 使用自定义更改样式

您可以通过更改颜色或其他参数轻松自定义更改样式：

这是Java的代码示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

在 Kotlin 中，它的工作方式相同：

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

#### 禁用突出显示某些类型的更改

有一些特殊选项可以禁用检测某些类型的更改，例如，下面显示了如何避免显示图形文件的插入部分

这是Java的代码示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/036dc8d48fcf19b984dc867d3207b47c.js"></script>

您可以在 Kotlin 应用程序中执行相同的操作：

<script src="https://gist.github.com/groupdocs-comparison-gists/7536b954fb8da77335fd9af15801404b.js"></script>

### 获取免费 API 许可证

许多设置，例如生成摘要页面，比较的敏感度等，只有在许可下才能使用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

本文介绍了使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 库比较 AutoCad 工程图（DWG 文件）。将库嵌入到任何平台上的任何 Java 或 Kotlin、桌面或 Web 应用程序中都非常容易。 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上有在 Web 应用程序中使用比较 API 的示例。它们可以自由修改并用于比较 AutoCad 绘图、照片、Excel、Word、代码文件、PowerPoint 演示文稿和其他 [支持的文件格式](/comparison/java/supported-document-formats/)。

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

