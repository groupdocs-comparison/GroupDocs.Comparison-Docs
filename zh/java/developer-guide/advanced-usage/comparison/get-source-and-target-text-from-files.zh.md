---
id：从文件获取源和目标文本
url: comparison/java/get-source-and-target-text-from-files
title: "从文件中获取源文本和目标文本"
weight: 7
description: "本文介绍如何使用 GroupDocs.Comparison for Java 获取特定更改的源文本和目标文本。"
keywords: "获取目标txt，获取源txt，文档差异，比较文档，比较文件"
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
名称：如何获取源文档和目标文档的文本
        description: "了解如何获取源文档和目标文档的文本"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程和结果文档的路径
- 名称：获取更改列表
文本：使用比较器对象的“getChanges()”方法获取更改列表
- 名称：检索源文档和目标文档的文本
text：使用比较器对象的“getSourceText()”和“getTargetText()”方法来检索源文档和目标文档的文本
---
[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) 允许获取结果文件中特定更改的源文本和目标文本。

以下是获取更改的源文本和目标文本列表的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流；
* 调用[比较](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare())方法；
* 调用 [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) 方法。

下面的代码示例演示了如何从文件中获取指定的文本。

## 从本地磁盘获取目标文本

<script src="https://gist.github.com/groupdocs-comparison-gists/d37858b84f9e3606fc80d3a645b87e31.js"></script>

## 从流中获取目标文本

<script src="https://gist.github.com/groupdocs-comparison-gists/8e69835903ec356fa36ded4f7cb5d88b.js"></script>

## 更多资源

### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### 免费在线应用
除了功能齐全的 Java 库，我们还提供简单但功能强大的免费应用程序。
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
