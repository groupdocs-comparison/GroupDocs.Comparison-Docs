---
id: 比较-bookmarks-in-word
url: comparison/java/compare-bookmarks-in-word
title: "比较 Word 文档中的书签"
weight: 12
description: "本文介绍如何在 GroupDocs.Comparison for Java 中激活 Word 格式的书签比较。"
keywords: "书签, Word, word, docx, doc, 比较书签, word 书签, CompareBookmarks, 书签比较"
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
名称：如何比较word文档中的书签
        description: "了解如何比较 Word 文档中的书签"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：设置比较选项对象
文本：创建“CompareOptions”类的对象并使用其方法“setCompareBookmarks(true)”来启用书签比较
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程，将比较选项作为第二个参数传递
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 允许比较 WORD 文档中的书签。

以下是比较文档书签的步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象并初始化 [CompareBookmarks](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions#setCompareBookmarks(boolean)) 属性为 **true**；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) 上一步的对象。

## 演示如何比较书签的示例代码块

---

<script src="https://gist.github.com/groupdocs-comparison-gists/11f02eec9356367c4bd7ac9810114caa.js"></script>

## 将文档与启用的 CompareBookmarks 选项进行比较后的结果

---

比较书签的结果在文档中显示为插入的注释和描述。请参阅下面的图像示例：

![](/comparison/java/images/compared-bookmarks.png)

## 更多资源

---
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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
