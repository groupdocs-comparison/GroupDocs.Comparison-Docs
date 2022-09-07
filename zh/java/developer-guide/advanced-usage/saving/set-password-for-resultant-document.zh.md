---
id：为结果文档设置密码
url: comparison/java/set-password-for-resultant-document
title: "为生成的文档设置密码"
weight: 2
description: "本文介绍了如何在 Java 应用程序中使用 GroupDocs.Comparison for Java 进行文件比较后设置文档密码。"
keywords: "比较文档并使用密码保护"
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
名称：如何为生成的文档设置密码
        description: "了解如何为生成的文档设置密码"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：设置比较选项对象
文本：创建“CompareOptions”类的对象并调用其方法“setPasswordSaveOption(PasswordSaveOption.User)”以启用适当的设置
- 名称：设置文档保存对象
文本：创建“SaveOptions”类的对象并使用其方法“setPassword()”传递结果文档的密码
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程，将比较选项作为第二个参数传递，并将选项保存为第三个参数
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许使用密码保护生成的文档。

以下是保护生成文档的步骤：
* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流。
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象
* 设置 [CompareOptions](https://apireference.groupdocs.com) 的 [PasswordSaveOption](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setPasswordSaveOption(int)) 属性/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象到 [PasswordSaveOption.User](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PasswordSaveOption#User );
* 实例化 [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) 对象并使用 [Password](https://apireference.groupdocs.com/ compare/java/com.groupdocs.comparison.options.save/SaveOptions#setPassword(java.lang.String)) 为结果文档设置所需的密码；
* 调用[比较](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,% 20com.groupdocs.comparison.options.CompareOptions)) 方法并通过 [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) 和 [CompareOptions](https ://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象到方法；
    



以下代码片段演示了如何比较文档并使用密码保护生成的文档

<script src="https://gist.github.com/groupdocs-comparison-gists/c0c27c8c12411d3c228f9df899b4fc92.js"></script>

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

