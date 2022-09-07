---
id: 保存时设置文档元数据
url: comparison/java/set-document-metadata-on-save
title: "在保存时设置文档元数据"
weight: 1
description: "按照本指南了解如何在 Java 应用程序中文件比较后保存结果文档时设置文档元数据。"
keywords: "保存文档元数据、比较文档、文档比较、文件差异"
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
名称：如何在保存时设置文档元数据
        description: "了解如何在保存时设置文档元数据"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：设置文档保存对象
文本：创建“SaveOptions”类的对象并将其方法“setCloneMetadataType()”与“MetadataType.Source”或“MetadataType.Target”参数一起使用
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程，将保存选项作为第二个参数传递
---
通常文档可以包含一些元数据信息，例如作者、组织等。[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison) 提供了在保存结果文档时选择元数据源的能力。

可能的元数据来源是：
* **源**文件元数据；
* **目标**文件元数据；
* **用户定义的**元数据。
    




以下是设置结果文件元数据的步骤：
* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；

* 调用 [add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法并指定目标文件路径或流。

* 实例化 [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) 对象并使用属性 [CloneMetadataType](https://apireference.groupdocs.com/ compare/java/com.groupdocs.comparison.options.save/SaveOptions#setCloneMetadataType(int)) 来设置所需的 [MetadataType](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.枚举/元数据类型）变体；

* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) 方法和将 [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) 对象传递给方法；
    




以下代码演示了如何设置生成的文件元数据。

## 从源文件设置元数据

<script src="https://gist.github.com/groupdocs-comparison-gists/c9dfcc0917a4d9124c134e77056669d4.js"></script>

## 从目标文件设置元数据

<script src="https://gist.github.com/groupdocs-comparison-gists/0a632a692a09ab484ac19dba075241eb.js"></script>

## 设置用户定义的元数据

<script src="https://gist.github.com/groupdocs-comparison-gists/abec6b3417cc08a6b51d83a102379ecd.js"></script>

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

