---
id: 获取文件信息
url: comparison/java/get-file-info
title: "获取文件信息"
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
名称：如何获取文件信息
        description: "了解如何借助比较 API 获取文件信息"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”对象，将文件路径作为构造函数参数传递
- 名称：使用特殊方法获取文档信息
text: 调用 'getSource()' 方法获取 'Document' 对象。然后，调用'Document'对象的'getDocumentInfo()'方法来获取文档信息
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许获取文件信息，包括：

* [FileType](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getFileType()) - 文档文件类型（PDF、Word 文档、Excel 电子表格、PowerPoint 演示文稿或图像ETC。）;
* [PageCount](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPageCount()) - 文档页数；
* [FileSize](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getSize()) - 文档文件大小；
* [PagesInfo](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPagesInfo()) - 表示有关页面的信息。

以下代码示例演示了如何获取文件信息。

## 从本地磁盘获取文件的文件信息

<script src="https://gist.github.com/groupdocs-comparison-gists/cba10d2dea13e2c62383d7e88c3e6615.js"></script>

## 从流中获取文件的文件

<script src="https://gist.github.com/groupdocs-comparison-gists/19baec4618b31a67fa06db5a74e68497.js"></script>

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

