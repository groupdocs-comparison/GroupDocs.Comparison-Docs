---
id：接受或拒绝检测到的更改
url: comparison/java/accept-or-reject-detected-changes
title: "接受或拒绝检测到的更改"
weight: 1
description: "按照本指南，您将了解如何使用 GroupDocs.Comparison for Java API 应用或丢弃在文档比较过程中检测到的更改。"
keywords: "对比较文档应用更改、拒绝比较更改、文档比较更改"
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
名称：如何接受或拒绝更改
        description: "了解如何接受或拒绝通过比较检测到的更改"
脚步：
- 名称：比较文件
text：像往常一样比较源文档和目标文档
- 名称：获取检测到的更改
文本：使用 Comparer 对象的方法 'getChanges()' 访问所有检测到的更改
- 名称：接受或拒绝每个更改
文本：使用方法 'setComparisonAction(ComparisonAction.REJECT)' 接受或拒绝每个更改
- 名称：应用更改
文本：使用比较器对象的“applyChanges()”方法来应用更改
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 提供了在源文件和目标文件之间应用或放弃特定更改并保存带有（或不带有）选定更改的结果文档的能力。

以下是对结果文件应用/拒绝更改的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定路径目标文档路径或流；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) 方法；
* 调用[getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges())方法获取检测到的变化列表；
* 将所需更改对象的[ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction)设置为[ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) 或 [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT)价值;
* 调用 [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.io.OutputStream,%20com.groupdocs.comparison.options.ApplyChangeOptions)) 方法和将更改集合传递给它；

[ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) 类：

* [getChanges()](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions#getChanges()) - 必须应用（或不应用）结果的更改数组文档;
* [setSaveOriginalState](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions#setSaveOriginalState()) - 应用更改后保持比较结果的原始状态。

以下代码示例显示了如何接受/拒绝检测到的更改。

## 接受或拒绝存储在本地磁盘上的文档的更改

<script src="https://gist.github.com/groupdocs-comparison-gists/c3d730c6ae104b20c9a71743bd648776.js"></script>

## 接受或拒绝以流形式提供的文档的更改

<script src="https://gist.github.com/groupdocs-comparison-gists/2b802b7d8e6d4ebe9d12ff4d7390dbf2.js"></script>

## 以下代码示例显示如何使用 SaveOriginalState 选项接受/拒绝检测到的更改

<script src="https://gist.github.com/groupdocs-comparison-gists/9b7f737eba537c3e9916568dce25441c.js"></script>

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
