---
id：从字符串加载文本
url: comparison/java/load-text-from-string
title: "从字符串加载文本"
weight: 5
description: "本文介绍了在使用 GroupDocs.Comparison for Java 时如何从字符串类型的变量中加载值。"
keywords: "从字符串类型的变量中加载值，使用 GroupDocs.Comparison 加载文本"
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
名称：如何从字符串加载文本
        description: "了解如何从字符串中输入文本"
脚步：
- 名称：创建“LoadOptions”类的对象
文本：创建“LoadOptions”对象
- 名称：配置加载选项
text：使用方法 'setLoadText(true)' 让 Comparer 知道构造函数参数将是源文本
- 名称：创建“比较器”类的对象
text：创建“比较器”对象，将源文本和加载选项作为构造函数参数传递
- 名称：添加目标文本
text: 使用 'add' 方法添加文本以进行比较和加载选项
- 名称：运行比较过程
text: 调用 'compare' 方法运行比较过程并获取结果文档的路径
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) 允许比较 *string* 类型变量的值。
以下是比较变量文本的步骤：

* 实例化 [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) 对象并设置 [LoadText](https://apireference.groupdocs.com/comparison) /java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) 属性为 true（这表示传递的字符串包含要比较的文本，而不是文件路径）；
* 将源字符串内容与创建的 [LoadOptions](https://apireference.groupdocs.com) 一起传递给 [Comprer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类构造函数/comparison/java/com.groupdocs.comparison.options.load/LoadOptions)
* 将目标字符串内容传递给 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load) .LoadOptions)) 方法与 [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) 方法一起，其中 [LoadText](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) 属性设置为 true。

以下代码片段显示了如何从变量加载值：

<script src="https://gist.github.com/groupdocs-comparison-gists/425813e53c5d5fb0fd54bd7cbdbbc8cb.js"></script>
---

也可以结合不同的文件传递方式（文件路径或流），如下代码示例所示：

<script src="https://gist.github.com/groupdocs-comparison-gists/c600672647eab7f9c38ec9bd77466e67.js"></script>

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

