---
id：如何比较发票
url: comparison/java/how-to-compare-invoices
title: "如何比较发票"
weight: 3
description: "在比较发票时，您将了解如何在生产中使用 GroupDocs.Comparison for Java。查看 GroupDocs.Comparison API 的文件比较敏感度配置和其他用例"
keywords: "比较docx文件，发票比较，如何比较发票"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：匹配发票
        description: "该产品允许匹配发票"
产品代码：比较
产品平台：java
如何：
名称：如何匹配发票
        description: "了解如何在 Java 或 Kotlin 项目中匹配发票"
脚步：
- 名称：加载源发票
文本：创建一个比较器类的实例，将源发票作为构造函数参数传递
- 名称：加载目标发票
文本：添加一张或多张目标发票以将它们与源发票进行比较
- 名称：比较源发票和目标发票
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
有时您需要在比较文件时达到最大的准确性。假设你有一个重要文档的两个版本，你需要逐个字符或相反的大小写来查找差异，你需要比较文档，但细节对你来说并不重要，你只需要有变化的单词. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 提供了将文档与敏感度设置进行比较的功能

例如，有两张 DOCX 格式的发票，您需要将其内容与最大详细程度和比较敏感度进行比较。

|来源发票 |目标发票 |
|------------------------------------------------- -----|-------------------------------------------------------- ------------------|
| ![](比较/java/images/how-to-compare-invoices.png) | ![](比较/java/images/how-to-compare-invoices_1.png) |

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison) 提供了比较 DOCX 格式的两个文件（或任何其他[支持的文件格式]({{< ref "comparison/java /getting-started/supported-document-formats.md" >}})) 调整 detalization level 和 [比较敏感度](https://docs.groupdocs.com/display/comparisonjava/Set+Comparison+Sensitivity+While +比较+文档）。

以下是比较两个 DOCX 文件的步骤，具体设置为 detalization level 和 [比较敏感度]({{< ref "comparison/java/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}}）

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流；
* 用所需的 [setSensitivityOfComparison](https://apireference.groupdocs.com/comparison/java) 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象/com.groupdocs.comparison.options/CompareOptions#setSensitivityOfComparison(int)) 和 [setDetalisationLevel](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setDetalisationLevel(int))价值;
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) 方法和将 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象传递给方法。
    


以下代码示例演示了如何比较两个 DOCX 文件。

<script src="https://gist.github.com/groupdocs-comparison-gists/c0ea4e8b64b330c78449bafa4d733b04.js"></script>

结果，我们得到一个 DOCX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font>

|结果发票 |
|------------------------------------------------- ----------|
| ![](比较/java/images/how-to-compare-invoices_2.png) |

## 更多资源
### 高级用法主题
要了解更多关于文档比较功能的信息，请参阅[高级用法部分]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}})。

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

