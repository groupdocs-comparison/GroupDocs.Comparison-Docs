---
id：如何使用 java 或 kotlin 比较图像
url: comparison/java/how-to-compare-images-using-java-or-kotlin
title: "如何比较图像以查看 Java 或 Kotlin 中的差异"
weight: 7
description: "在比较图像以查看差异时，您将了解如何在生产中使用 GroupDocs.Comparison for Java。查看 GroupDocs.Comparison API 的文件比较敏感度配置和其他用例"
keywords: "比较图像，发现图像差异，如何在 Java、Kotlin 中比较图像"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较图像
        description: "该产品允许比较图像"
产品代码：比较
产品平台：java
如何：
名称：如何找到两个图像之间的差异
        description: "了解如何在 Java 或 Kotlin 项目中查找两个图像之间的差异"
脚步：
- 名称：加载源图像
文本：创建一个比较器类的实例，将源图像作为构造函数参数传递
- 名称：加载目标图像
文本：添加一张或多张目标图像以将它们与源图像进行比较
- 名称：比较源图像和目标图像
text: 运行比较过程，传递结果图像应保存的路径
---
无论您是想构建具有发现差异功能的应用程序，还是想在任何基于 Java（或 Kotlin）的图像处理应用程序中以编程方式比较两个图像，您都来对了地方。使用我们的产品，您可以轻松地将 JPG、PNG、BMP 或图像与其他一些文件格式进行比较。不要浪费时间，让我们使用 **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 比较 Java 和 Kotlin 中的图像

![Idea of comparing images](comparison/java/images/how-to-compare-images.png)

## Java 图像比较 API

我将使用 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) API 来比较本文中的图像。此 API 支持比较 JPG、PNG、BMP、DICOM、DCM、DjVu 图像以及许多其他支持的文件格式。

您可以从 [下载部分](https://downloads.groupdocs.com/comparison/java) 下载包含 JAR 库、文档和其他有用文件的 ZIP 文件，或者通过 Maven、Gradle 在您的 Java/Kotlin 应用程序中安装 API或任何其他支持 Maven 存储库的项目管理工具。

---

<details open><summary>连接 GroupDocs 存储库</summary><blockquote>
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

---

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

---

### 比较 Java 或 Kotlin 中的图像以突出差异

在 Java 应用程序中使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 在 Java 中比较两个图像太容易了。以下步骤解释了我们如何比较任意两个 JPG、PNG、BMP 或任何其他图像。它成功检测到更改并在输出/结果图像中突出显示它们。

* 使用 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类定义第一个图像。
* 使用 Comparer 对象的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法添加第二张图片。
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) 方法比较两个图像并保存突出显示的结果图像两个图像之间的差异。

---

<details open><summary>下面的代码展示了如何在 Java 中比较两个图像。例如，它比较两个 JPG 图像并保存有差异的输出。</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

本文开头显示的图像用于此代码。比较左侧的图像，右侧显示输出以突出显示差异。

＃＃＃ 结论
在本文中，我们学习了如何使用图像比较 API 在 Java 中比较两个图像。现在您可以构建自己的图像比较应用程序，该应用程序可以比较图像并向用户突出显示发现的差异。

要全面了解 API 的功能，您可以查看 [文档](https://docs.groupdocs.com/comparison/java)。您也可以联系甚至编写代码的[免费支持团队](https://forum.groupdocs.com/c/comparison) 或[免费咨询团队](https://groupdocs-free-consulting.github.io)帮助您了解根据您的要求使用 GroupDocs API。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [发现照片差异](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin)
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
