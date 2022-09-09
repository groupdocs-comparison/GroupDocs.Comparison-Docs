---
id：how-to-compare-text-word-pdf-in-java-or-kotlin
url: comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin
title: "如何将文本、Word、PDF 与 Java 或 Kotlin 进行比较"
weight: 8
description: "在比较文本、Word 和 PDF 文件以查看差异时，您将了解如何在您的产品中使用 GroupDocs.Comparison for Java。查看 GroupDocs.Comparison API 的文件比较敏感度配置和其他用例"
keywords: "比较文本，比较 Word，比较 Pdf，如何比较 Java 中的文档，Kotlin"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较word文档
        description: "该产品允许比较word或pdf文档"
产品代码：比较
产品平台：java
如何：
姓名：
        description: "了解如何在 Java 或 Kotlin 项目中比较 word 或 pdf 文档"
脚步：
- 名称：加载源word或pdf文档
text：创建一个比较器类的实例，将源单词或pdf文档作为构造函数参数传递
- 名称：加载目标word或pdf文档
文本：添加一个或多个目标词或 pdf 文档以将它们与源文件进行比较
- 名称：比较源词和目标词或 pdf 文档
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
阅读本文后，您将能够在基于 Java 的应用程序中比较文本文件、Word 文件、PDF 文件和其他文档。通过使用此功能，我们可以比较发票、合同、演示文稿、AutoCAD 设计、价目表或编程文件。我们还将有机会突出显示已识别的更改，并可以选择接受或拒绝任何更改。您甚至可以使用 Java 的文档比较 API 构建我们自己的 [文档比较工具](https://products.groupdocs.app/comparison/total)，类似于 GroupDocs 推出的工具。

## Java 文档比较 API

作为先决条件，您可以从 [下载部分](https://downloads.groupdocs.com/comparison/) 获取 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)爪哇）。此外，您可以轻松地将比较 API 添加到您的 Maven、Gradle 或 Kotlin DSL 项目中 [安装说明](/comparison/java/installation/)。

### 使用 Java 或 Kotlin 比较 Word 文件并显示差异

下面的步骤将向您展示如何在几行 Java 或 Kotlin 代码中比较任意两个 Word 文档。因此，您将获得将突出显示已识别更改的结果文档。

* 使用源文档路径初始化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象。
* 使用 Comparer 的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法添加要比较的第二个文档目的。
* 调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))方法获取比较结果。 compare 方法将输出文档的名称作为参数。

---

<details open><summary>下面的代码展示了如何在 Java 中比较两个 Word 文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

这是上面代码生成的结果 Word 文档的示例。它包含比较文档的突出差异。删除的内容会被标记为红色，添加的内容会显示为蓝色，但是，绿色显示修改的内容。

![Word documents comparison result](/comparison/java/images/how-to-compare-documents.png)

### 使用 Java 或 Kotlin 流比较 Word 文件

您可以类似地将文档作为流传递给 Comparer 类，以将其与第二个文档进行比较。

---

<details open><summary>这是 Java/Kotlin 代码，让您有一个清晰的想法</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

_使用流可以用于比较文档而不将它们保存在磁盘上_

### 使用 Java 或 Kotlin 接受或拒绝 Word 文件中的更改

比较文档后，您可以选择接受或拒绝任何更改。您可以在下面看到交替接受和拒绝更改的示例。您可以使用类似的代码一一显示每个更改，并根据您的要求决定接受/拒绝每个更改。

---

<details open><summary>这是 Java/Kotlin 代码，让您有一个清晰的想法</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

_有关接受和拒绝更改的更多详细信息，请参阅 [文档](https://docs.groupdocs.com/comparison/java/accept-or-reject-detected-changes/)_

### 使用 Java 或 Kotlin 比较文本文件并显示差异

使用 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类，我们还可以比较任何文本文件。下面是用于比较 Java 或 Kotlin 中的两个文本文件的类似代码。步骤与比较任何其他两个文档完全相同：

* 使用源文本文件初始化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象。
* 使用 Comparer 对象的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法添加第二个文件。
* 调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))方法获取比较结果。

---

<details open><summary>下面的代码显示了如何比较 Java 或 Kotlin 中的两个文本文件</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/0ceff72d9ce7fb91f457bfb670852981.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/46542d922b12c025aab2cd62486f8278.js"></script>

</details>
</blockquote></details>

---

这是源文本文件、目标文本文件和输出文本文件，显示了使用上述代码匹配两个文本文件的比较结果。

![Comparing text files](/comparison/java/images/how-to-compare-text-files.png)

这是 [GroupDocs.Comparison for Java](https://products.groupdocs. com/比较/java)

### 使用 Java 或 Kotlin 比较 PDF 文件的文本差异

我们可以使用相同的代码比较 PDF 文件，只需将文件扩展名更改为“.pdf”。

---

<details open><summary>下面的代码比较了两个 pdf 文件并显示了差异</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4a1f80dd89b4d12f62e8423e09733ea7.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b0d4823f85f0ea9370dfbdd421664e90.js"></script>

</details>
</blockquote></details>

---

这是在 Java 或 Kotlin 中比较两个 PDF 文件的结果。

![Comparing text files](/comparison/java/images/how-to-compare-pdf-files-using-java-or-kotlin.png)

[GitHub 存储库](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 提供了许多其他开源示例。您可以使用 [入门](https://docs.groupdocs.com/comparison/java/getting-started/) 指南下载并快速运行示例。如有任何问题，请查看[文档](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/) 或随时联系我们[在论坛上](https:// forum.groupdocs.com/c/conversion/）。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [发现照片差异](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin)
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
