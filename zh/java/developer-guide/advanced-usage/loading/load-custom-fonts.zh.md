---
id：加载自定义字体
url: comparison/java/load-custom-fonts
title: "加载自定义字体"
weight: 4
description: "本文介绍了如何在使用 GroupDocs.Comparison for Java 时加载自定义字体 PDF、Word、Excel、PowerPoint 文档。"
keywords: "自定义字体、字体"
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
名称：如何加载自定义字体
        description: "了解如何加载自定义字体"
脚步：
- 名称：创建“LoadOptions”对象
文本：创建“LoadOptions”类的对象
- 名称：添加字体路径
文本：在“getFontDirectories()”方法的帮助下将字体路径添加到可用的列表中
- 名称：创建“比较器”类的对象
文本：创建“比较器”对象，传递源文档并使用字体路径加载选项作为构造函数参数
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：运行比较过程
text: 调用 'compare' 方法运行比较过程并获取结果文档的路径
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) 允许您比较内容具有非标准字体的文档。

以下是连接自定义字体和比较文档的步骤：

* 实例化 [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) 对象并提供自定义字体的目录列表；
* 使用源文档路径或流和 [LoadOptions](https://apireference.groupdocs.com/) 实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象compare/java/com.groupdocs.comparison.options.load/LoadOptions) 上一步创建的对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions))方法并指定目标文档路径或流；
* 调用 [比较器](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) 方法。

以下代码示例显示了如何连接自定义字体和比较文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/426fbb1a2e2ad8130ec02e21d04ef718.js"></script>

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

