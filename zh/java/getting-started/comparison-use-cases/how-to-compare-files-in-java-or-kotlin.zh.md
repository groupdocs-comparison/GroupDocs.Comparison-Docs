---
id：how-to-compare-files-in-java-or-kotlin
url: comparison/java/how-to-compare-files-in-java-or-kotlin
title: "如何比较 Java 或 Kotlin 中的文件"
weight: 9
description: "您将了解如何使用 GroupDocs.Comparison for Java 查看少数文件或文档的差异。变化检测机制可根据需求配置"
keywords: "比较文本，比较 Word，比较 Pdf，如何比较 Java 中的文档，Kotlin"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文件差异
        description: "该产品允许区分文件"
产品代码：比较
产品平台：java
如何：
名称：如何检查两个文件是否相同
        description: "了解如何检查 Java 或 Kotlin 项目中的两个文件是否相同"
脚步：
- 名称：加载源文件
文本：创建一个比较器类的实例，将源文件作为构造函数参数传递
- 名称：加载目标文件
文本：添加一个或多个目标文件以将它们与源文件进行比较
- 名称：比较源文件和目标文件
文本：运行比较过程传递结果文件应保存的路径
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 是一个 Java 库，可让您比较文档并查看差异。比较 Microsoft Word、Excel、PowerPoint、OpenDocument、PDF、文本、HTML 和许多其他文档，检索源文档和目标文档之间的更改列表，应用或拒绝更改并使用 [GroupDocs.Comparison](https://products) 保存结果.groupdocs.com/comparison) API。除此之外，GroupDocs.Comparison 可以识别样式和格式更改——例如粗体、斜体、下划线、删除线、字体类型等。

GroupDocs.Comparison 使用的更改检测算法允许您检测各种文档部分和块中的差异：

* 文本块——段落、单词和字符
* 表
* 图片
* 形状等

以下是比较两个文本文件并显示差异的简单步骤：

* 使用源文档初始化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象。
* 使用 Comparer 对象的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法添加第二个文件。
* 调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))方法获取比较结果。

以下代码片段演示了使用几行代码进行文档比较的最简单情况。

---

<details open><summary>使用本地文件比较文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

您还可以使用流来比较文档。不仅是文件流，在不保存本地文件的情况下比较来自互联网的文件，或者即时比较文件也没有问题。

---

<details open><summary>使用流比较文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

假设您有两份 DOCX 格式的合同，它们是在不同年份签订的。如果你使用上面的代码比较这些合约，你会得到一个 DOCX 文件，其中删除的元素标记为红色，添加为蓝色，修改为绿色，如下所示：

![Comparing two contracts](/comparison/java/images/how-to-get-diff-of-contracts.png)


## 接受或拒绝检测到的差异

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 提供了在源文档和目标文档之间应用或放弃特定更改并保存带有（或不带有）选定更改的结果文档的功能。

以下是对结果文档应用/拒绝更改的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象。
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法并指定目标文档的路径或流。
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法进行比较过程。
* 调用[getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges())方法获取检测到的变化列表。
* 将所需变更对象的ComparisonAction设置为[ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT)或[ComparisonAction.Reject](https:// /apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) 值。
* 调用 [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.ApplyChangeOptions)) 方法和传递 [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) 的对象及其更改集合。

---

<details open><summary>以下代码示例显示了如何接受/拒绝检测到的差异。</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

### 生成文档页面预览

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 允许您使用 [generatePreview](https://apireference.groupdocs.com/comparison/java/com) 生成源、目标和结果文档的页面预览[Document](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) 类的 .groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) 方法.
[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 类用于管理预览生成过程——指定页码、图像格式等。

以下步骤展示了如何使用 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) API 生成文档预览：

* 创建 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类的新实例，并将源文档路径作为构造函数参数传递。
* 使用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) 方法将目标文档添加到比较器对象.
* [getSource](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) 和 [getTargets](https://apireference.groupdocs.com/comparison/java/ [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象的 com.groupdocs.comparison/Comparer#getTargets()) 方法允许访问源文档和目标文档并提供[GeneratePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) 方法
* 实例化 [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 对象：
* 每个页面流创建的回调（参见事件处理程序 [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates.CreatePageStream)）；
* 图片预览格式——PNG/JPG/BMP；
*要处理的页码；
*预览图像的自定义大小（如果需要）。
* 调用 [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) 方法的源和目标 [Document]( https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) 对象通过 [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ PreviewOptions) 到它。

---

<details open><summary>获取结果文档的页面预览</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/565efa20595c05ecb81d9ca44045afdf.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fc4c8a219bdd0419222bd76275219fd2.js"></script>

</details>
</blockquote></details>

---

### 比较多个文档

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 允许比较两个以上的文档。以下代码示例显示了如何以编程方式比较多个文档。

---

<details open><summary>如何在Java中比较多个文档</summary><blockquote>
<details open><summary>爪哇</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7b6ad368a55e6df16c2f0b9d86edebe5.js"></script>

</details>

<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad47af4d760d17752962f86be72fb8ec.js"></script>

</details>
</blockquote></details>

---

## 安装

Maven 是下载和安装 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 的最简单方法。请获取 [临时许可证](https://purchase.groupdocs.com/temporary-license) 来测试库，不受任何功能限制。

请查看 [文档](/comparison/java/installation/) 以了解有关该库的更多信息。我们还提供免费技术支持，因此请随时 [联系我们](https://forum.groupdocs.com/) - 我们很乐意为您提供帮助。

＃＃＃ 也可以看看

* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [发现照片差异](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin)
* How to [compare Json files](/comparison/java/how-to-compare-json-applying-rejecting-changes) applying or rejecting changes
