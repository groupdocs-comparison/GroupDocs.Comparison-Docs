---
id：比较文档
url: comparison/java/compare-documents
title: "比较文件"
weight: 3
description: "本文演示如何使用 GroupDocs.Comparison for Java 比较 Word、Excel、PowerPoint、Outlook、OneNote、PDF、图像、HTML、AutoCAD、Visio、OpenDocument、OneNote 文档。"
keywords: "比较文档，C#中的文档比较"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文档比较工具
        description: "该产品允许比较 Pdf、Word、Excel、PowerPoint、AutoCad、图像、代码和更多文件格式。比较 API 还支持接受或拒绝更改、提取文档信息和生成比较报告"
产品代码：比较
产品平台：java
如何：
名称：如何比较文件
        description: "了解如何比较文档"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：运行比较过程
text: 调用 'compare' 方法运行比较过程并获取结果文档的路径
---
## 文件比较功能

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 使用的更改检测算法允许检测不同文档部分和块中的更改：

* 文本块 - 段落、单词和字符；
* 表格；
* 图片;
* 形状等

为了更好地分离检测到的更改，添加、修改或删除的文档部分用不同的颜色突出显示：

* 添加 - <font color="blue">**蓝色**</font>
* 修改 – <font color="green">**绿色**</font>
* 风格 – <font color="green">**绿色**</font>
* 已删除 – <font color="red">**红色**</font>

如果需要，可以自定义更改样式着色方案，更改的文本块可以用不同的格式标记 - 斜体、粗体、下划线、删除线等。

以下是比较两个文档的简单步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流。
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) 方法。

以下代码片段演示了使用几行代码进行文档比较的最简单情况。

## 比较本地文件中的文档

<script src="https://gist.github.com/groupdocs-comparison-gists/bcd9553b0796c190990221c33d060d2a.js"></script>

## 比较流中的文档

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
