---
id: 调整-比较-敏感度
url: comparison/java/adjusting-comparison-sensitivity
title: "调整比较灵敏度"
weight: 2
description: "详细了解文档比较敏感度以及在使用 GroupDocs.Comparison for Java 比较文档时如何调整它以实现最佳性能和准确性。"
keywords: "比较敏感度、比较详细程度、比较文件、文件比较"
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
名称：如何调整比较敏感度
        description: "了解如何调整比较敏感度"
脚步：
- 名称：配置比较选项
文本：创建“CompareOptions”类的对象
- 名称：设置灵敏度级别
text: 使用对象的方法 'setSensitivityOfComparison()' 设置比较的敏感度
- 名称：使用选项对象比较文档
文本：将选项作为“.compare()”方法的第二个参数传递
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许调整比较敏感度，以在文件比较速度和准确性之间取得必要的平衡。可能的比较敏感度值范围是从 **0** 到 **100**。

* **最小值** - 最小值为 **0**。将灵敏度设置为最小值可提供最快的比较速度，但可能会产生最差的比较质量。
如果两个比较词中至少有一个共同字母，则这些词将不会被视为完全插入和删除
* **默认值** - 默认值为 **75**。当删除或插入的元素相对于所有元素的百分比不超过 75% 时，会进行比较。
* **最大值** - 最大值为 **100**。比较发生在两个比较对象的公共子序列的任意长度。此选项提供最佳质量，但比较速度最慢。

为了更好地理解比较算法的工作原理，假设我们有两个字符串：

|弦乐 |
|--------------------------------|
| `1`。 `这是我们的股权诗` |
| `2`。 `杰克是一只快乐的小牛` |

我们将使用<font color="red">**red**</font>突出显示已删除的文本部分，并使用<font color="blue">**blue**</font>颜色突出显示插入的部分。因此，这些字符串有两个常见的子序列：“**is**”单词和 4 个空格符号。

常见的子序列是-“**is**”，长度为6个符号（其中有4个空格符号）。
插入子序列的长度为 13 个符号 - **Jackagladcalf**
删除的子序列长度为 17 个符号 - **Itourequitypoetry**
让我们计算删除和插入符号的百分比：(17 + 13) / (17 + 13 + 6) * 100 = 83%

*案例 1.* 如果 **SensitivityOfComparison = 80%** 这两个字符串的比较将产生下一个结果：
**杰克是一只快乐的小牛这是我们的股票诗歌**

因为计算出的删除和插入符号的百分比等于 **83%** 并且它大于 **SensitivityOfComparison** 等于 **80%** 的值，所以这个公共子序列将不被考虑在内。
第一个字符串被认为完全删除，第二个字符串被认为完全插入。对于任何小于 **83%** 的计算百分比，将产生相同的结果。

*案例 2.* 如果 **SensitivityOfComparison = 85%**，这两个字符串的比较将产生下一个结果：
** JackIt 是我们的快乐小牛诗歌**

找到了共同的子序列，因为 **85% > 83%**。对于任何大于 **83%** 的计算百分比，将产生相同的结果。


以下是比较具有特定比较敏感度的文件的步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流。
* 使用所需的 [setSensitivityOfComparison](https://apireference.groupdocs.com/comparison/java) 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象/com.groupdocs.comparison.options/CompareOptions#getSensitivityOfComparison()) 值；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) 方法和将 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象传递给方法；
    



以下代码片段演示了如何比较具有特定敏感性的文件：

## 比较文件与灵敏度调整

<script src="https://gist.github.com/groupdocs-comparison-gists/cd7ce7b32ec9210313ec1bc4ae772e2a.js"></script>

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

