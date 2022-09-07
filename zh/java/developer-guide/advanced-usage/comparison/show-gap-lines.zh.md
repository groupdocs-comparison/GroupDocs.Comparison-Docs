---
id: 显示间隙线
url: comparison/java/show-gap-lines
title: "显示间隙线而不是更改"
weight: 13
description: "本文介绍如何调整结果文档的显示，以便在 GroupDocs.Comparison for Java 中将更改的内容替换为空行。"
keywords: "LeaveGaps、间隙线、空线"
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
名称：如何显示间隙线而不是更改
        description: "了解如何显示间隙线而不是更改"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：设置比较选项对象
文本：创建“CompareOptions”类的对象并使用其方法“setShowInsertedContent(false)”、“setShowDeletedContent(false)”和“setLeaveGaps(true)”来配置适当的设置
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程，将比较选项作为第二个参数传递
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许调整生成文档的格式。

默认情况下，来自两个输入文件（*source* 和 *target* 文件）的更改会添加到生成的文档中并在视觉上突出显示。这可以使用 [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) 和 [ShowDeletedContent](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowDeletedContent(boolean)) 属性。

您还可以使用 [LeaveGaps](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setLeaveGaps(boolean)) 属性来调整结果文档的显示，这允许用空行替换更改的内容。要使用此属性，您还需要激活以下属性：[ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) 和 [ShowDeletedContent ]（https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowDeletedContent(boolean)）。

以下是获得上述结果的简单步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象集 [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) 和/或 [ShowDeletedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) 并且必须[LeaveGaps](https://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) 属性；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/comparison) /java/com.groupdocs.comparison.options/CompareOptions) 上一步的对象。

## 获得所需结果的示例代码块

---

<script src="https://gist.github.com/groupdocs-comparison-gists/b59e5ff289223ac376574b284165125d.js"></script>

## 示例代码执行

---

|默认结果 |没有 LeaveGaps 属性的结果 |
|:------------------------------------------------ --------------:|:--------------------------------- ------------------------------:|
| ![](比较/java/images/show-gap-lines-default-result.png) | ![](比较/java/images/show-gap-lines-without-leavegaps.png) |

|默认结果 | LeaveGaps 属性的结果 |
|:------------------------------------------------ --------------:|:--------------------------------- ---------------------------:|
| ![](比较/java/images/show-gap-lines-default-result.png) | ![](比较/java/images/show-gap-lines-with-leavegaps.png) |

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
You are welcome e to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
