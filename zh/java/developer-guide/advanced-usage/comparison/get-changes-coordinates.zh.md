---
id：获取更改坐标
url: comparison/java/get-changes-coordinates
title: "获取更改坐标"
weight: 5
description: "本文介绍了在将文档与 GroupDocs.Comparison for Java 进行比较时，如何在文档页面预览中获取检测到的更改的坐标"
keywords: "比较文档，获取更改坐标"
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
名称：如何获取更改的坐标
        description: "了解如何获取文档更改的坐标"
脚步：
- 名称：创建“CompareOptions”对象
文本：创建“CompareOptions”类的对象
- 名称：设置选项
文本：使用选项对象的方法 'setCalculateCoordinates(true)' 以便比较器准备坐标
- 名称：使用比较选项
文本：调用比较器对象的“比较（）”方法将比较选项作为第二个参数传递
- 名称：检索带有坐标的更改列表
文本：调用比较器对象的“getChanges（）”方法以获取更改列表及其内部坐标
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许检测源文档和目标文档之间的更改，并在文档预览图像处获取更改坐标。这些坐标对于突出显示带有某些图形的文档预览图像中检测到的更改非常有用（例如，在每个检测到的更改周围放置一个红色矩形）。

以下是获取更改坐标的步骤。

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流。
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象并设置 [CalculateCoordinates](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setCalculateCoordinates(boolean)) 设置为 *true*；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) 方法和从上一步传递 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象。
* 调用 [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) 方法
    



以下代码示例显示了如何获取更改坐标。

## 坐标计算示例

<script src="https://gist.github.com/groupdocs-comparison-gists/fd4a88331289a9d88fad5e1f0bb0c5e2.js"></script>

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

