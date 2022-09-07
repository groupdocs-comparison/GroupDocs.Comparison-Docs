---
id：how-to-compare-java-code-and-apply-or-reject-changes
url: comparison/java/how-to-compare-java-code-and-apply-or-reject-changes
title: "如何比较 Java 代码并应用或拒绝更改"
weight: 28
description: "本文介绍如何使用 GroupDocs.Comparison 比较 java 代码并应用或拒绝更改"
keywords: "比较和对比，比较 Java 代码，比较 Java 与 Kotlin 和 Java，Java 代码比较工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较Java代码的API
        description: "该产品允许比较 Java 代码"
产品代码：比较
产品平台：java
如何：
名称：如何在应用程序中比较 Java 代码
        description: "您可以轻松比较任何 Java 代码，而不是接受或拒绝更改"
脚步：
- 名称：在项目中配置比较库
文本：您需要在项目中配置 Groupdocs 存储库和依赖项
- 名称：运行 Java 代码的比较过程并获取所有差异
text: 比较只写几行代码的 Java 代码，看看它们的区别
- 名称：检查 Java 代码中的更改以接受或拒绝它们
文本：检查每个更改并接受或拒绝每个更改，保存有效的结果 Java 文件
---
Java 是一种高级的、基于类的、面向对象的编程语言，旨在尽可能减少实现依赖项。许多公司使用 Java 创建产品。这意味着许多团队编写 Java 代码，然后将代码连接在一起。有时年轻的开发人员会犯错误。这样，有经验的开发人员应该检查代码中的更改。有些更改是正确的，必须接受，而有些更改是错误的，必须拒绝。 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 是这些案例的最佳解决方案。

### 如何在应用程序中比较 Java 代码

您唯一需要做的就是在您的项目中配置 [GroupDocs.Comparison 库](https://repository.groupdocs.com/comparison/)。之后，只需编写几行代码，即可解决问题。

#### 在项目中配置比较库

首先，将 GroupDocs 存储库添加到项目中，以便自动下载库

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

其次，指定所需的库依赖

_最新版本的比较库可以[在这里找到](https://repository.groupdocs.com/comparison/)_

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

#### 运行 Java 代码的比较过程并获取所有差异

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 是一个非常现代且功能强大的库。有许多工具可用于比较文件、获取更改的详细信息、分析更改、接受或拒绝它们、检索每个更改的坐标等等。在本文中只展示了一小部分功能。有关其他设施的更多详细信息，请参阅 [文档](/comparison/java/getting-started/)

<details open><summary>要比较源和目标 Java 代码文件，请执行以下操作</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/78372877c238f2227f5c489e698ef695.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a865cf6080a512b0b1cb4534e74e75f6.js"></script>

</details>
</blockquote></details>

结果，您将找到接下来的两个文件：

* `.java` 带有特殊标记的结果文件，用于标记文档中的每个更改
* `.html` 人类可读的结果比较文件

这些文件可用于分析与源文档相比在目标文档中所做的更改。但这还没有完成，下一步将变得更加有用和有趣。

#### 检查 Java 代码中的更改以接受或拒绝它们

使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison)，您可以比较多种文件格式。此外，您可以获取更改列表，拒绝或接受它们应用于结果 Java 文件。当某些更改无效并且必须还原而其他更改很好并且必须应用于文档时，它会非常有用。

<details open><summary>在 Java 代码文件中应用或拒绝更改的示例</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4c035f1ddf3932d8fc89ecc1519a3005.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/c45c087baf5ca2bc7a848112e18180d7.js"></script>

</details>
</blockquote></details>

在上面的示例中，它获取更改列表以分析每个更改。代码检查 `getSourceText()` 方法的值。当它包含 `size;` 或 `for (int i = 0; i < HASH_TABLE_SIZE` (Java 代码文件中更改的行的部分) 时，将接受更改以保留，否则将拒绝更改以保留行如它在源文件中。为了理解上面的描述，检查下面的图像。拒绝或接受后，应用更改并保存为新文件。

结果，您将找到两个文件：

* `.java` - 有效的 Java 代码文件，其中被拒绝的更改被还原，而接受的更改被保留
* `.html` - 人类可读的文件，与上一步生成的结果非常相似，但没有被拒绝的更改

以下是所有生成文件的屏幕截图：

|源Java代码文件|目标 Java 代码文件 |结果 Html 文件 |应用更改的结果 Html 文件 |
|------------------------------------------------- --------------------------------------------|------ -------------------------------------------------- --------------------------------------|------------ -------------------------------------------------- --------------------------|------------------------ -------------------------------------------------- ----------------------|
| ![](比较/java/images/how-to-compare-java-code-and-apply-or-reject-changes-source.png) | ![](比较/java/images/how-to-compare-java-code-and-apply-or-reject-changes-target.png) | ![](比较/java/images/how-to-compare-java-code-and-apply-or-reject-changes-result.png) | ![](比较/java/images/how-to-compare-java-code-and-apply-or-reject-changes-applied.png) |

在图像上，您可以看到更改 `0` -> `3` 和 `1` -> `5` 被拒绝，而更改 `long` -> `int` 和 `--` -> `++` 被拒绝保存。有效的 Java 代码文件也被保存。你可以在下面看到它

|结果 Json 文件 |
|:------------------------------------------------ ----------------------------------------------:|
| ![](比较/java/images/how-to-compare-java-code-and-apply-or-reject-changes-resultant.png) |

### 获取免费 API 许可证

比较库中有很多工具，例如，[比较敏感度](/comparison/java/adjusting-comparison-sensitivity/)、[生成摘要页面](/comparison/java/get-only-summary-page/)以及更多。其中一些仅在有效许可证下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以使用该 API，而不受评估限制。

### 免费在线应用
除了功能齐全的 Java/Kotlin 库，我们还提供简单但功能强大的免费应用程序。
欢迎您在线比较免费使用的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG、XML 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app /比较）。

＃＃＃ 更多细节

在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs) 上有更多使用 Java/Kotlin 的 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 示例.Comparison-for-Java）。您可以自由更改和使用它们来比较照片、Excel、Word、代码文件、PowerPoint 演示文稿等等[支持的文件格式](/comparison/java/supported-document-formats/)。

要获取详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何[比较 json 文件](/comparison/java/how-to-compare-files-in-java-or-kotlin) 使用 Java 或 Kotlin 应用或拒绝更改
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何[查看比较和对比](/comparison/java/how-to-see-comparison-and-contrast-of-essays) 论文
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

