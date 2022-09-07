---
id: how-to-see-comparison-and-contrast-of-essays
url: comparison/java/how-to-see-comparison-and-contrast-of-essays
title: "如何看论文的比较和对比"
weight: 26
description: "文章介绍了GroupDocs.Comparison的用法，看文章的比较和对比"
keywords: "比较和对比, 比较论文, 比较 PDF 与 Kotlin 和 Java, 论文比较工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：论文比较API
        description: "该产品允许比较 Pdf、Word 和图像文件"
产品代码：比较
产品平台：java
如何：
名称：如何在 Java 或 Kotlin 应用程序中查看文章的比较和对比
        description: "只需几行代码，您就可以在自己的 Java 或 Kotlin 应用程序中轻松查看文章的比较和对比"
脚步：
- 名称：在项目中配置比较库
text: 要配置比较库，只需将 maven 存储库和依赖项添加到项目中
- 名称：运行比较过程以查看结果文档中论文的比较和对比
text: 下面是比较论文的描述和代码示例
---
每天都有很多学生写论文。有时这很容易，尤其是当文章的主题有趣且易于理解时。但有时学生会花很多时间来理解论文的内容。调查所有材料并编写将用于写作的计划可能需要几天时间。一些信息可以在不同的来源中重复。同时，没有人愿意在文章中多次写入相同的信息。避免重复的最好方法是比较不同来源的信息并检查它是否重复。要查看不同信息源甚至几篇文章的比较和对比，您可以使用功能强大且易于使用的 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison)，它提供了比较 Word、Excel 的机会、PowerPoint、Pdf 文档、文本文件等等 [文件格式](/comparison/java/supported-document-formats/)。有免费的在线应用程序进行比较，并且可以在本地 PC 上运行的示例很少。它们的链接如下。

### 如何在 Java 或 Kotlin 应用程序中查看文章的比较和对比

如果您的 Java 或 Kotlin 应用程序必须嵌入功能才能查看文章的比较和对比，那么 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 正是您所需要的。

####在项目中配置对比库

首先，将 GroupDocs 存储库添加到您的项目文件中：

<details open><summary>添加 GroupDocs 存储库</summary><blockquote>
<details open><summary>马文</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>摇篮</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

其次，在IDE的帮助下添加所需的依赖并同步项目

_最新版本的比较 API 可以[在这里找到](https://repository.groupdocs.com/comparison/)_

<details open><summary>添加 GroupDocs.Comparison 依赖</summary><blockquote>
<details open><summary>马文</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f4d8f0b56d1dfa24dea18c68cd9d8001.js"></script>

</details>
<details><summary>摇篮</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b760d58061daa45d9b211e2701aa52b5.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

</details>
</blockquote></details>

#### 运行比较过程，查看结果文档中文章的比较和对比

使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 比较文章并查看它们的比较和对比非常容易

以下是将两篇论文作为 PDF 文件进行比较的步骤：

* 实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象传递源文章路径或流作为参数
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标论文路径或流
* 或者，您可以使用 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 及其方法 [setDetectStyleChanges](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.options/CompareOptions#setDetectStyleChanges-boolean-) 配置比较器以突出显示样式更改（默认情况下更改显示为绿色）
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) 方法运行论文比较。

Java 代码示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/fc7b36954eb871f1fee1b1e5d6043ea3.js"></script>

Kotlin 代码示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/fabd50201a84e3325f88db48b7668f8d.js"></script>

|源文章 |目标论文 |
|------------------------------------------------- ----------------------------------|------------- -------------------------------------------------- ----------------------|
| ![](比较/java/images/how-to-see-comparison-and-contrast-of-essays-source.png) | ![](比较/java/images/how-to-see-comparison-and-contrast-of-essays-target.png) |

|结果文件 |
|:------------------------------------------------ ----------------------------------:|
| ![](比较/java/images/how-to-see-comparison-and-contrast-of-essays-result.png) |

### 获取免费 API 许可证

还有更多可用的选项，例如，[生成摘要页面](/comparison/java/get-only-summary-page/)、[比较敏感度](/comparison/java/adjusting-comparison-sensitive/) 和很快。其中很多只有在设置许可证时才可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以使用该 API，而不受评估限制。

### 免费在线应用
除了功能齐全的 Java/Kotlin 库，我们还提供简单但功能强大的免费应用程序。
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档[GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

＃＃＃ 更多细节

在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs) 上有更多使用 Java/Kotlin 的 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 示例.Comparison-for-Java）。您可以自由更改和使用它们来比较照片、Excel、Word、代码文件、PowerPoint 演示文稿等等[支持的文件格式](/comparison/java/supported-document-formats/)。

要获取详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何使用比较 API [使用 Javalin 框架](/comparison/java/how-to-use-javalin-comparison-sample)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

