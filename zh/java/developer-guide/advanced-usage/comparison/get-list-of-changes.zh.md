---
id：获取更改列表
url: comparison/java/get-list-of-changes
title: "获取更改列表"
weight: 6
description: "本文介绍了在使用 GroupDocs.Comparison for Java 时如何获取比较文档之间的更改集合。"
keywords: "获取文件差异，文件差异，比较文件，比较文件"
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
名称：如何获取更改列表
        description: "了解如何获取更改列表"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程
- 名称：检索更改列表
文本：使用比较器对象的“getChanges()”方法来检索更改列表
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许获取源文件和目标文件之间的更改列表。

以下是获取更改列表的步骤。

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流；
* 调用[比较](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare())方法；
* 调用 [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) 方法。
    



以下代码示例演示了如何获取所有更改的列表。

## 从本地磁盘获取更改列表

<script src="https://gist.github.com/groupdocs-comparison-gists/883e152bcb4f92becd8cc5051118c36a.js"></script>

## 从流中获取更改列表

<script src="https://gist.github.com/groupdocs-comparison-gists/a39965c7ca12a3a78f65821c59d20c29.js"></script>

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

