---
id：自定义更改样式
url: comparison/java/customize-changes-styles
title: "自定义更改样式"
weight: 4
description: "按照本指南，您将了解如何在使用 GroupDocs.Comparison for Java 时自定义文档比较报告并修改检测到的更改的外观。"
keywords: "样式更改检测，比较文档样式，文档比较"
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
名称：如何自定义更改样式
        description: "了解如何自定义更改样式"
脚步：
- 名称：创建“StyleSettings”对象
文本：创建“StyleSettings”类的对象
- 名称：更改样式设置
text：更新对象的属性以更改样式设置
- 名称：创建“CompareOptions”对象
文本：创建“CompareOptions”类的对象
- 名称：设置样式设置选项
text: 使用方法 'setInsertedItemStyle()'、'setDeletedItemStyle()' 或 'setChangedItemStyle()' 来指定合适的样式
- 名称：使用比较选项
文本：调用比较器对象的“比较（）”方法将比较选项作为第二个参数传递
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 提供了一些默认值设置的比较选项，这些默认值提供了适当的比较速度和质量。但是，可以根据各种参数及其值自定义比较选项，以满足某些特定需求。下面的示例演示了如何更改不同的更改类型样式。

以下是使用自定义更改样式设置比较两个文档的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream))方法并指定目标文档路径或流；
* 使用所需参数实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/comparison) /java/com.groupdocs.comparison.options/CompareOptions) 对象到方法；
    



以下代码片段演示了如何比较具有特定选项的文件。

## 将本地磁盘中的文件与自定义更改样式进行比较

<script src="https://gist.github.com/groupdocs-comparison-gists/e0cebcc9c017d1226d0571aca1b18c56.js"></script>

## 将流中的文件与自定义更改样式进行比较

<script src="https://gist.github.com/groupdocs-comparison-gists/c39aba0ce82cbddd74c367ff89a1e906.js"></script>

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

