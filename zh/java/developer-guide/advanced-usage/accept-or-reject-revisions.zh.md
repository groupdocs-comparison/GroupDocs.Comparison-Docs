---
id：接受或拒绝修订
url: comparison/java/accept-or-reject-revisions
title: "接受或拒绝修订"
weight: 4
description: "按照本指南，您将学习如何使用内置的 Microsoft Word 功能应用或放弃在文档比较期间发现的修订。"
keywords: "修改、修改处理、接受或拒绝修改、申请修改进行修改"
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
名称：如何接受或拒绝修订
        description: "了解如何接受或拒绝修订"
脚步：
- 名称：创建“RevisionHandler”对象
文本：创建“RevisionHandler”类的对象，将源文档作为构造函数参数传递
- 名称：获取修订列表
文本：使用 'getRevisions()' 方法获取修订版本
- 名称：检查每个修订的类型并应用所需的操作
文本：使用“getType()”方法检查修订类型，该方法返回“RevisionType.*”值之一，并使用方法“setAction(RevisionAction.Accept)”应用所需的操作
- 名称：创建“ApplyRevisionOptions”类的对象
文本：创建“ApplyRevisionOptions”类的实例并使用其方法“setChanges(changesList)”进行更改
- 名称：应用修订更改
文本：使用“RevisionHandler”对象的“applyRevisionChanges()”方法传递结果文档路径和修订选项作为参数
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 提供从 Docx 文件格式获取修订、处理和保存处理结果的能力。
以下是从文档中*获取*修订、*接受/拒绝*修订以及*将处理结果写入*最终文件的步骤。

* 使用源文档路径或流实例化 [RevisionHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) 对象；
* 调用[getRevisions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#getRevisions())方法获取检测到的修订列表；
* 设置所需更改的 [Action](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionInfo#setAction(com.groupdocs.comparison.words.revision.RevisionAction))反对 [RevisionAction.Accept](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept) 或 [RevisionAction.Reject](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) 值；
* 调用[applyRevisionChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions))方法，您需要将 [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) 对象的新创建实例传递给它，并将路径或流传递给它生成的文档，收集修订中的更改。

还可以一起处理所有更改，对所有更改应用一个操作。以下是处理所有更改的步骤：
* 使用源文档路径或流实例化 [RevisionHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) 对象；
* 调用[applyRevisionChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions))方法，您需要将 [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) 对象的新创建实例传递给它并传递给它操作（[ RevisionAction.Accept](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept)、[RevisionAction.Reject](https://apireference.groupdocs.com/比较/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) 或 [RevisionAction.None](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction #None)) 将适用于所有修订。

[ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) 类：
* [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getChanges()) - 需要应用于最终文档的修订列表。
* [CommonHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getCommonHandler()) - 允许您定义一个操作来处理所有修订的属性。

如果您不将生成文档的路径或文件传递给 [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) 方法，则更改将被写入进行修订的同一文件中。

以下代码示例演示了如何从文档中获取修订、接受/拒绝检测到的修订以及将更改保存到生成的文档。

## 接受或拒绝来自本地磁盘的修订

<script src="https://gist.github.com/groupdocs-comparison-gists/959d27303cb17b3f1c026ca018626137.js"></script>

## 接受或拒绝流中的修订

<script src="https://gist.github.com/groupdocs-comparison-gists/4e175bc335e86438f4dc6e742e8b4c57.js"></script>

## 接受或拒绝所有修订

<script src="https://gist.github.com/groupdocs-comparison-gists/f66fbdb53c66bd82c03d5697d47bf9d0.js"></script>

## 修改处理结果
下面是基于前面提供的代码的源文件和输出文件。

|源文件 |结果文件 |
|------------------------------------------------|- -------------------------------------------------- ---|
| ![](比较/java/images/revision-file.png) | ![](比较/java/images/result-revision-file.png) |

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
