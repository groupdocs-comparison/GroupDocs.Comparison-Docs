---
id：从流中加载文件
url: comparison/java/load-file-from-stream
title: "从流中加载文件"
weight: 2
description: ""
关键词：
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
名称：如何从输入流加载文件
        description: "了解如何从输入流加载文件"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”对象，将源输入流作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：运行比较过程
text: 调用 'compare' 方法运行比较过程并获取结果文档的路径
---
如果您有流形式的文件。为了避免将流作为文件保存在磁盘上的开销，**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 提供了一种直接处理文件流的方法。

以下是要遵循的步骤：

* 获取文件流；
* 将打开的源流传递给 [Comprer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类构造函数或将打开的目标文件流传递给 [add](https://apireference .groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)) 方法。
    



以下代码片段描述了如何从流中加载文件。

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

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

