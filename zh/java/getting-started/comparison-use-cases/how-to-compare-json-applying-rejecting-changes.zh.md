---
id: how-to-compare-json-applying-rejecting-changes
url: comparison/java/how-to-compare-json-applying-rejecting-changes
title: "如何比较应用或拒绝更改的 json 文件"
weight: 27
description: "本文介绍了如何使用 GroupDocs.Comparison 比较应用或拒绝更改的 json 文件"
keywords: "比较和对比, 比较 Json 文件, 比较 Json 与 Kotlin 和 Java, Json 文件比较工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较 Json 文件的工具
        description: "该产品允许比较 Json 文件"
产品代码：比较
产品平台：java
如何：
名称：如何在 Java 或 Kotlin 应用程序中比较 Json 文件
        description: "您可以轻松地将任何 Json 文件与接受或拒绝更改进行比较"
脚步：
- 名称：将比较库添加到项目中
文本：您需要将 Groupdocs 存储库和依赖项添加到您的项目中
- 名称：比较源和目标 Json 文件以查看所有差异
text: 只用几行代码比较 Json 文件，看看它们的区别
- 名称：接受或拒绝 Json 文件中的更改
文本：接受或拒绝保存有效结果 Json 文件的更改
---
Json 文件现在非常流行。它们用于在 Internet 上传输数据、配置应用程序等。这样，很多时候人们需要比较 Json 文件来查看它们是否被更改。同时，拒绝一个更改并接受另一个更改可能非常有用。由于您需要此类功能，[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 是最适合您的解决方案。

### 如何在 Java 或 Kotlin 应用程序中比较 Json 文件

您只需将 [GroupDocs.Comparison 库](https://repository.groupdocs.com/comparison/) 添加到项目并编写几行代码

#### 将比较库添加到项目中

您需要的第一件事是将 GroupDocs 存储库添加到项目中

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

第二件事是添加所需的依赖项

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

#### 比较源和目标 Json 文件以查看所有差异

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 是一个非常强大的库，它有很多用于比较文件、分析更改、获取每个更改的详细信息、接受或拒绝每个更改等选项。这里只用到了一小部分功能。有关它们的更多信息，您可以在 [文档](/comparison/java/getting-started/) 中找到

<details open><summary>这是您需要比较源和目标 Json 文件的代码</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9395725d254c7500ed2f30dc558fd174.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8eb90b7f07e6240ec875e5e195a0a374.js"></script>

</details>
</blockquote></details>

结果，您将有两个文件：

* 带有特殊标签的 `.json` 文件，显示文档中的每个更改
* `.html` 文件具有人类可读的比较结果

这些文件可用于查看和分析更改。但这并不是我们想做的全部，下一步更有趣和有用。

#### 接受或拒绝 Json 文件中的更改

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 库不仅提供比较功能，还提供获取更改列表、拒绝或接受更改并应用于结果文档的可能性。当某些更改无效并且必须还原而其他更改很好并且必须应用于文档时，它会非常有用。

<details open><summary>这是您需要在 Json 文件中应用或拒绝更改的代码</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/00519168fed54a68e3edbb087a0e0ef8.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/2b54bd01f16bce036b2bd9ec32f58473.js"></script>

</details>
</blockquote></details>

在上面的代码中，我们获取更改列表并处理每个更改。我们正在分析 `getSourceText()` 方法的值。如果它包含 `defaultListTemplate`、`defaultFileTemplate` 或 `useJSP`（来自 Json 文件的属性），则更改将被接受，所有其他更改将被拒绝。要了解正在发生的事情，请查看下面的图片。更新后，将应用更改并保存为新文件。

结果将保存为两个文件

* `.json` 有效的 Json 文件，没有更改被拒绝但更改被接受
* `.html` 人类可读的结果文件，与比较过程的结果非常相似，但没有拒绝更改

以下是所有文件的截图：

|源 Json 文件 |目标 Json 文件 |结果 Html 文件 |应用更改后的结果 Html 文件 |
|------------------------------------------------- --------------------------------------|------------ -------------------------------------------------- --------------------------|------------------------ -------------------------------------------------- --------------|------------------------------------ -------------------------------------------------- --------------------------|
| ![](比较/java/images/how-to-compare-json-applying-rejecting-changes-source.png) | ![](比较/java/images/how-to-compare-json-applying-rejecting-changes-target.png) | ![](比较/java/images/how-to-compare-json-applying-rejecting-changes-result.png) | ![](比较/java/images/how-to-compare-json-applying-rejecting-changes-applied.png) |

如您所见，更改 `pobox` -> `hacker`、`200` -> `88` 和 `100` -> `6` 被拒绝，而属性内的更改 `defaultListTemplate`、`defaultFileTemplate` 和 `useJSP`留在文件中。有效的结果 Json 文档也被保存。你可以在下面看到它

|结果 Json 文件 |
|:------------------------------------------------ ----------------------------------------------------:|
| ![](比较/java/images/how-to-compare-json-applying-rejecting-changes-resultant.png) |

### 获取免费 API 许可证

还有更多可用的选项，例如，[比较敏感度](/comparison/java/adjusting-comparison-sensitivity/)、[生成摘要页面](/comparison/java/get-only-summary-page/) 和多得多。其中一些仅在有效许可证下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以使用该 API，而不受评估限制。

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
* 如何[查看比较和对比](/comparison/java/how-to-see-comparison-and-contrast-of-essays) 论文
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

