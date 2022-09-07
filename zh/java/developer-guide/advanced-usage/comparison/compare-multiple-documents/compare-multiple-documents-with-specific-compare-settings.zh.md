---
id：比较多个文档与特定比较设置
url: comparison/java/compare-multiple-documents-with-specific-compare-settings
title: "使用特定比较设置比较多个文档"
weight: 2
description: "按照本指南，您将学习如何比较具有不同自定义的多个文档 - 样式检测、更改比较细化级别等。"
keywords: "比较多个文档，样式变化检测，多比较文件"
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
名称：如何比较具有特定设置的多个文档
        description: "了解如何将多个文档与特定设置进行比较"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加第一个目标文档
text: 使用 'add' 方法添加第一个目标文档
- 名称：添加第二个目标文档
text: 使用 'add' 方法添加第二个目标文档
- 名称：创建“CompareOptions”类的对象
文本：创建“CompareOptions”对象并更改其属性以配置比较过程
- 名称：使用特定设置运行比较过程
text: 调用 'compare' 方法传递 'CompareOptions' 类的对象以运行比较过程并获取结果文档的路径
---
{{< alert style="info" >}}注意：此功能仅适用于 Microsoft Word 文档、Microsoft PowerPoint 和 Open Document 演示文稿。{{< /alert >}}

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 允许比较超过 2 个文档并指定一些特定的比较选项，例如检测到的更改的样式、比较详细信息级别等。

以下是将多个文档与特定选项进行比较的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流。对每个目标文档重复此步骤。
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象并指定所需的选项；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) 方法和从上一步传递 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象。

以下代码示例显示了如何将多个文档与特定选项进行比较。

## 使用本地磁盘的特定比较设置比较多个文档

<script src="https://gist.github.com/groupdocs-comparison-gists/9afb39e82ef686e97c30191f8fa3ee21.js"></script>

## 将多个文档与流中的特定比较设置进行比较

<script src="https://gist.github.com/groupdocs-comparison-gists/0c32eddfc1a3baad1583ba7457c8ae3b.js"></script>

## 更多资源

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

