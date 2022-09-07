---
id: how-to-compare-two-or-more-files-in-java-or-kotlin
url: comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin
title: "如何在 Java 或 Kotlin 中比较两个或多个文件"
weight: 10
description: "这篇文章是关于比较两个或多个 Excel、Word、Presentation 或其他文件和文档"
keywords: "比较 Excel、比较 Word、比较 Presentations、Java 的 Diff 工具、Kotlin"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：几个文件比较
        description: "该产品允许比较多个文件"
产品代码：比较
产品平台：java
如何：
姓名：
        description: "了解如何比较 Java 或 Kotlin 项目中的多个文档"
脚步：
- 名称：加载源文档
文本：创建一个比较器类的实例，将源文档作为构造函数参数传递
- 名称：加载目标文档
文本：添加一个或多个目标文档以将它们与源文档进行比较
- 名称：比较源文件和几个目标文件
text: 运行比较过程传递路径，比较结果将被保存在哪里
---

文档比较是当今世界最常见的要求之一。无论是比较word文件，比较excel文件，演示文稿，PDF文档，甚至比较文本文件或任何其他文档格式，准确性都是比较的关键因素。

本文将向您介绍 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 如何帮助程序员以多种方式比较任何两个或多个文档。 GroupDocs.Comparison 的本地 API 目前可用于 .NET 和 Java，但是，本文倾向于 Java 或 Kotlin 开发人员。

### 比较 Excel、Word 文件或 Java 或 Kotlin 中的任何其他文档

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 允许开发人员比较两个文档（实际上不止两个）。生成的文档比较显示了两个文件之间的更改。下面显示的代码如何在 Java 或 Kotlin 中仅用 3 行代码比较两个 excel 文件。


* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象。
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法指定目标文档路径(s)。
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) 方法运行比较过程。

---

<details open><summary>按路径比较文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/d2ba23fdd66d71b44ef14b71cf9a1b69.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6f39584978729a7329efafa6c3f89dfb.js"></script>

</details>
</blockquote></details>

---

比较 excel 电子表格或 Microsoft Word 文档只是 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) 的 Java API 支持的文档格式的子集。以下是支持的格式列表。您可以访问 [文档](/comparison/java/supported-document-formats/) 以保持更新。

|文件类型 |格式 |
|------------------------------------------------- --|------------------------------------------------ -----------------|
| [文字处理](https://wiki.fileformat.com/word-processing/) | DOC、DOCX、DOCM、DOT、DOTX、DOTM、RTF、TXT |
| [电子表格](https://wiki.fileformat.com/spreadsheet/) | XLS、XLSX、XLSM、XLT、XLTM、XLSB、XLSM、CSV |
| [演示文稿](https://wiki.fileformat.com/presentation/) | PPT, PPTX, PPS, PPSX, POT, POTX |
| [OpenDocument](https://wiki.fileformat.com/word-processing/) | ODT、ODP、OTP、ODS、OTT |
| [便携](https://wiki.fileformat.com/view/pdf/) | PDF格式 |
| [微软](https://docs.fileformat.com/visio/) | Visio 绘图 VSD、VSDX、VSS、VST、VDX |
| [笔记](https://wiki.fileformat.com/note-taking/) |一个 |
| [网络](https://wiki.fileformat.com/web/) | HTM、HTML、MHT、MHTML |
| [电子书](https://wiki.fileformat.com/ebook/) |摩比 |
| [图片](https://wiki.fileformat.com/image/) | BMP、GIF、JPG、JPEG、PNG、DICOM、DJVU、DWG、DXF |
| [电子邮件](https://wiki.fileformat.com/email/) | EML、EMLX、味精 |

### 在 Java 或 Kotlin 中比较两个或多个电子表格或 OneNote 文档

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 20.4 发布后，API 现在支持：

* 两个以上 Microsoft Excel 和 OpenOffice 电子表格（XLS、XLSX、ODS、CSV 等）的比较
* 比较多个 Microsoft OneNote 文档

API 已经支持比较各种文档格式的多个文件。以下代码片段显示了在 Java 或 Kotlin 中比较多个 excel 文件是多么容易

---

<details open><summary>比较多个 Excel 文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/5e338fb9c2a7401015edafb9779bcc4d.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/205830e46292994ccd43fece4d5e93a9.js"></script>

</details>
</blockquote></details>

---

### 在 Java 或 Kotlin 中比较流中的文档

作为程序员，您不仅可以比较本地磁盘上可用的文档，还可以比较流中的文档。


* 只需使用源文档流创建 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象。
* 使用 Comparer 的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法添加所有目标文档进行比较目的。
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) 方法将结果文档写入输出流。

---

<details open><summary>比较流中的多个 Excel 文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/09d353ac257edd0fec5a4a058d2a2c75.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ce4b5dba4acca392b96d55d80208e3be.js"></script>

</details>
</blockquote></details>

---

### 比较 Java 或 Kotlin 中受密码保护的 Word 文档/Excel 电子表格

密码保护在官方文档中很常见。使用 [文档比较 Java API](https://products.groupdocs.com/comparison)，允许其用户/开发人员比较受密码保护的文档。

只是在比较不受密码保护的文档的代码中稍作更改。加载文档时，使用 [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) 指定文档密码。以下是为您提供帮助的示例比较代码。

---

<details open><summary>比较流中的多个受密码保护的 Excel 文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8c2a3079211b7489e37fa3e8b715d80c.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/62e7f2b878fcefbf4f79a49fa15949ae.js"></script>

</details>
</blockquote></details>

---

### 文档与特定设置的比较

比仅比较先一步，使用类似于下面提到的代码，您可以将多个文档与您的自定义比较设置进行比较。

[CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 让您有机会指定比较选项，例如检测到更改的字体样式等。

---

<details open><summary>比较具有特定样式设置的多个文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/0757e56451c630d17d44a846a2faafc2.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e1360304d78aebb5a4fc16503210e63a.js"></script>

</details>
</blockquote></details>

---

### 比较 Java 或 Kotlin 中的编程语言文件

GroupDocs 不断增加对比较更多文件格式的支持。在发布 v 20.4 之后，您现在还可以使用 Java API 比较 JSON 文件。以下是最近添加到 [支持的文档格式列表](/comparison/java/supported-document-formats/) 中的编程语言文件格式：

|语言 |文件格式 |
|--------------|---------------------------------- -------------|
|动作脚本 |目标 C/C++ |
|汇编 |珀尔 |
|基于 C 语言 | PHP |
|夏普 |蟒蛇 |
|时髦的 |红宝石 |
| JavaScript |斯卡拉 |
|爪哇 | Shell/批处理脚本、日志、差异、配置、LESS |
| JSON | SQL |

您可以使用上面突出显示的功能构建自己的应用程序。如果您在 [论坛](https://forum.groupdocs.com/c/comparison) 上与我们联系以讨论、解决问题或分享您的反馈，我们将非常高兴。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [发现照片差异](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin)
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
