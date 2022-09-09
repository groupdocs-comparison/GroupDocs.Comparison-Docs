---
id：how-to-spot-photos-differences-in-java-or-kotlin
url: comparison/java/how-to-spot-photos-differences-in-java-or-kotlin
title: "如何使用 Java 或 Kotlin 发现照片差异"
weight: 11
description: "这篇文章是关于使用比较 API 比较 Java 或 Kotlin 中的照片以发现差异"
keywords: "比较照片，照片的差异，Java中的照片差异工具，Kotlin"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：点差工具
        description: "该工具允许发现照片的差异"
产品代码：比较
产品平台：java
如何：
名称：如何发现照片的差异
        description: "了解如何在 Java 或 Kotlin 项目中发现照片的差异"
脚步：
- 名称：照片比较 API
文本：下载和配置比较 API
- 名称：比较照片以突出差异
文本：在创建比较器对象传递源和目标照片后，只需调用特殊方法即可获取结果文档
---

在本文中，我们将讨论如何以编程方式查找两张照片之间的差异。完成此操作后，您会发现使用 Java 或 Kotlin 可以轻松比较任何照片并突出显示已识别的差异。

### Java 或 Kotlin 上的照片比较 API

在本文中，我将使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 的 Java API 来比较照片。除了最常用的图像格式（如 PNG、JPG/JPEG 和 GIF）外，还有大量 [支持的文件格式](/comparison/java/supported-document-formats/) 可供比较。此外，该 API 允许比较文字处理文档、电子表格、演示文稿、绘图、网页、电子邮件、源代码文件等等。

#### 下载并配置

从 [下载部分](https://downloads.groupdocs.com/comparison/java) 获取照片比较库。对于基于 Maven、Gradle 或 Kotlin 的 Java 应用程序，安装过程非常简单，并在 [相应文档页面](comparison/java/installation) 中进行了描述。稍后，您可以尝试本文的示例以及 [GitHub](https://github.com/groupdocs-comparison) 中的更多示例。有关详细信息，您还可以访问 [API 参考](https://apireference.groupdocs.com/comparison/java)。

### 比较 Java 中的照片以突出差异

比较照片并得到结果只需 3 行代码。您可以按照这些步骤并使用上述源代码来比较您的任何 JPG、PNG、BMP、DICOM、DjVu、GIF 和其他图像。您可以在 Java 应用程序中识别它们之间的差异或变化。

* 使用 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类的构造函数选择要比较的第一张照片。
* 使用适当的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法添加第二张照片进行比较比较器对象。
* 调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))方法得到两张照片的比较结果。

这是代码，比较两张 JPG 照片并保存突出显示已识别差异的输出。

---

<details open><summary>以下代码显示了如何在 Java 中比较两张照片</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

源照片和目标照片

![Source and target photos](/comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-source.jpg)

结果照片

![Result photo](/comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-result.jpg)

---

### 获取免费 API 许可证

您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

总结这篇文章，我们学习了如何在 Java 中比较照片。我们进一步强调了比较后发现的差异。现在，您可以构建自己的照片比较器应用程序或在 Java 应用程序中使用这些功能。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何使用 Compose Desktop [比较任何文件](/comparison/java/how-to-compare-any-files-using-compose-desktop)
* 如何[运行 Dropwizard 比较示例](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) 作为 Docker 容器
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container
