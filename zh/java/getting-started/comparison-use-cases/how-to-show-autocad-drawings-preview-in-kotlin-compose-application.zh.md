---
id：how-to-show-autocad-drawings-preview-in-kotlin-compose-application
url: comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application
title: "如何在 Kotlin Compose 多平台应用程序中显示 AutoCAD 绘图预览"
weight: 29
description: "本文介绍了如何使用 GroupDocs.Comparison 在 Kotlin Compose 应用程序中显示 AutoCad 绘图预览"
keywords: "比较和对比、AutoCad 绘图、AutoCad 预览、Kotlin Compose 多平台应用程序"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：生成 AutoCad 预览的工具
        description: "该产品允许比较 Java 代码"
产品代码：比较
产品平台：java
如何：
名称：如何生成 AutoCad 绘图的预览并使用 Kotlin Compose 多平台 UI 框架显示它
        description: "您可以轻松生成和显示 AutoCAD 图纸的预览图像"
脚步：
- 名称：在项目中配置比较库
文本：要配置比较库，您应该设置存储库并添加 Maven 依赖项
- 名称：准备项目以显示 AutoCAD 图纸预览
文本：创建 Compose 应用程序的基本布局以在其中显示 AutoCAD 图纸预览
- 名称：生成和显示 AutoCAD 图纸的预览
文本：使用 GroupDocs.Comparison 库生成 AutoCad 图纸预览并使用 Kotlin Compose 显示
---
Compose Multiplatform 是由 Jetbrains 开发的 UI 框架，用于使用 Kotlin 和反应性和功能性 API 简化和加速桌面应用程序开发。这就是为什么这项技术越来越受欢迎的原因。许多公司开始使用 Compose Multiplatform 制作软件。同样，对于其他目标，该框架可以轻松地用于创建与 AutoCad 绘图一起使用的软件。在这种情况下，[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 对于生成预览非常有用。

### 如何生成 AutoCad 绘图的预览并使用 Kotlin Compose 多平台 UI 框架显示它

要开始使用 Compose Multiplatform，您需要安装 JetBrains Idea 并创建新项目。要配置 [GroupDocs.Comparison 库](https://repository.groupdocs.com/comparison/)，只需按照以下步骤操作

#### 在项目中配置比较库

首先，将 GroupDocs 存储库添加到项目中

<details open><summary>添加 GroupDocs 存储库</summary><blockquote>

<script src="https://gist.github.com/groupdocs-comparison-gists/d75ac956735fabd2a53613e54e3b7039.js"></script>

</blockquote></details>

下一步是添加所需的库依赖项

_最新版本的比较库可以[在这里找到](https://repository.groupdocs.com/comparison/)_

<details open><summary>添加 GroupDocs.Comparison 依赖</summary><blockquote>

<script src="https://gist.github.com/groupdocs-comparison-gists/afcee955994941d17ce917654c98b25d.js"></script>

</blockquote></details>

#### 准备项目以显示 AutoCAD 图纸预览

要显示预览，我们需要创建可组合函数和自定义资源加载器，以允许从临时文件加载预览图像。该文件仅用于使示例更简单，流也可用。

<script src="https://gist.github.com/groupdocs-comparison-gists/5bbdde8d898dde2fde20507baca6de86.js"></script>

在上面的代码中，我们创建了基本屏幕布局。只有几行列和变量，您可以在 Jetpack Compose 文档中了解它们。额外的一件事是资源加载器。它只是通过其本地路径加载资源，没有什么困难。

现在，是时候创建文件选择器对话框了。

<script src="https://gist.github.com/groupdocs-comparison-gists/d4278b77570d3ebad8f9fc83676b6f94.js"></script>

在上面的代码中，我们通过单击将打开的对话框来选择用于生成预览图像的 AutoCad 绘图文件来创建按钮。
下一个代码显示了为 AutoCad 绘图或其他文件生成预览图像是多么容易

<script src="https://gist.github.com/groupdocs-comparison-gists/a2c0a660e5d00e1ca54201d00e15ee81.js"></script>

#### 生成和显示 AutoCAD 图纸的预览

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 是一个现代且非常强大的库，用于比较不同类型的文档。该库可以比较 Word 和 Pdf 文档、Excel 和 PowerPoint 演示文稿、照片、图像、AutoCad 绘图、消息、代码文件等等 [支持的文件格式](/comparison/java/supported-document-formats/)。除了比较功能之外，该库还允许生成文档页面预览、分析每个更改并接受或拒绝它们、获取每个更改的坐标等等。
在下面的代码中，您可以看到生成 AutoCad 绘图的简单预览。您只需要创建传递绘图路径或流的“Document”对象，然后以“PreviewOptions”作为参数调用“generatePreview”方法。将为文档的每一页调用带有页码的回调。 `PreviewOptions` 有更多选项，例如，您可以更改预览格式或仅指定几个页码，以便仅对指定页面调用回调。

我们需要做的最后一件事是使用资源加载器显示 AutoCad 绘图的预览

<script src="https://gist.github.com/groupdocs-comparison-gists/36d972bf08dbeb494765418a4093d982.js"></script>

只有当`previewPage` 对象中有任何图像时，才会显示AutoCAD 绘图的预览。预览配置为可垂直滚动并水平填充宽度。

您可以在下面看到结果应用程序屏幕。它变得非常简单易懂，但该技术的潜力非常高。

| Kotlin Compose Multiplatform 中的 AutoCAD 绘图文件预览
|:------------------------------------------------ -------------------------------------------------- :|
| ![](比较/java/images/how-to-show-autocad-drawings-preview-in-kotlin-compose-application.png) |

### 获取免费 API 许可证

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 库有更多的功能，例如，[生成摘要页面](/comparison/java/get-only-summary-page/)，改变[比较敏感度](/comparison/java/adjusting-comparison-sensitivity/)等等。其中很多只有获得许可才能使用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以不受任何限制地使用 API。

### 免费在线应用
我们不仅提供功能齐全的 Java/Kotlin 库，还提供功能强大的免费应用程序。
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG、DWG、DXF 等文档 [GroupDocs 比较应用程序](https://products.groupdocs .app/比较）。

＃＃＃ 更多细节

要获得更多将 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 与 Java/Kotlin 结合使用的示例，请查看我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs. Java 比较）。它们可以完全免费更改和使用，以便比较 AutoCad 绘图、照片、Excel、Word、代码文件、PowerPoint 演示文稿等等 [支持的文件格式](/comparison/java/supported-document-formats/)。

要获取更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何[比较 json 文件](/comparison/java/how-to-compare-files-in-java-or-kotlin) 使用 Java 或 Kotlin 应用或拒绝更改
* 如何使用 compose 桌面 [比较任何文件](/comparison/java/how-to-compare-any-files-using-compose-desktop)
* 如何[查看比较和对比](/comparison/java/how-to-see-comparison-and-contrast-of-essays) 论文
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
