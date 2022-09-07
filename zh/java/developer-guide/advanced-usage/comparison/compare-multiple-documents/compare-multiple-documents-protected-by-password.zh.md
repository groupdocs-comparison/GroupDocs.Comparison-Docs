---
id：比较多个文档受密码保护
url: comparison/java/compare-multiple-documents-protected-by-password
title: "比较受密码保护的多个文档"
weight: 1
description: "本文介绍如何使用 GroupDocs.Comparison for Java API 比较多个受密码保护的 Word 文档或 PowerPoint 演示文稿。"
keywords: "比较多个受密码保护的文档，比较多个受保护的文档"
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
名称：如何比较受密码保护的多个文档
        description: "了解如何比较受密码保护的多个文档"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，传递源文档并使用密码作为构造函数参数加载选项
- 名称：添加第一个目标文档
文本：使用“添加”方法添加第一个目标文档并使用密码加载选项以进行比较
- 名称：添加第二个目标文档
文本：使用“添加”方法添加第二个目标文档并使用密码加载选项以进行比较
- 名称：运行比较过程
text: 调用 'compare' 方法运行比较过程并获取结果文档的路径
---
{{< alert style="info" >}}注意：此功能仅适用于 Word 文档、PowerPoint 和 Open Document 演示文稿。{{< /alert >}}

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许比较超过 2 个受密码保护的文档。

以下是比较受密码保护的文档的步骤。

* 实例化 [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) 对象并指定源文档密码；
* 使用源文档路径或流和 [LoadOptions](https://apireference.groupdocs.com/) 实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象compare/java/com.groupdocs.comparison.options.load/LoadOptions) 上一步创建的对象；
* 实例化另一个 [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) 对象并指定目标文档密码；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流和[LoadOptions]( https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions）在上一步创建的对象。对每个受密码保护的目标文档重复此步骤；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) 方法。
        



以下代码示例显示了如何比较受密码保护的文档。

## 比较本地磁盘中的多个受保护文档

<script src="https://gist.github.com/groupdocs-comparison-gists/9978b3445782673d7c20705c50936bd4.js"></script>

## 比较流中的多个受保护文档

<script src="https://gist.github.com/groupdocs-comparison-gists/4409fcbfc437b1e1c82fcd0db650cc39.js"></script>

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

