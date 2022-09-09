---
id：如何合并源代码文件
url: comparison/java/how-to-merge-source-code-files
title: "如何合并源代码文件"
weight: 8
description: "本文介绍了如何在 GroupDocs.Comparison for Java 中控制文件合并。"
keywords: "合并文档、文档差异、比较文档、比较文件"
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
名称：如何合并源代码文件
        description: "通过比较了解如何合并源代码文件"
脚步：
- 名称：比较文件
text：像往常一样比较源文档和目标文档
- 名称：获取检测到的更改
文本：使用“比较器”对象的方法“getChanges()”访问所有检测到的更改
- 名称：接受或拒绝每个更改
文本：使用方法 'setComparisonAction()' 接受或拒绝使用常量 'ComparisonAction.ACCEPT' 和 'ComparisonAction.REJECT' 的每个更改
- 名称：合并源代码文件
文本：使用比较器对象的“applyChanges()”方法传递“ApplyChangeOptions”对象的更改以应用更改
---

***

[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) 提供了使用 [ComparisonAction](https://apireference.groupdocs.com) 合并源代码文件的功能/comparison/java/com.groupdocs.comparison.result/ComparisonAction) 属性：

* [ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) 接受找到的更改并将它们添加到文件中而不突出显示；
* [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) 取消找到的更改并将它们从结果文件中删除。

以下是对结果文件应用/拒绝更改的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定路径目标文档路径或流；
* 调用[比较](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare())方法；
* 调用[getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges())方法获取检测到的变化列表；
* 将所需更改对象的[ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction)设置为[ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) 或 [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT)价值;
* 调用 [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.io.OutputStream,%20com.groupdocs.comparison.options.ApplyChangeOptions)) 方法和将更改的集合传递给它。

## 使用 GroupDocs.Comparison 合并源代码文件的示例

---

例如，您需要比较和合并多个版本的源代码文件，并且您需要接受或丢弃不同人所做的更改。

![](/comparison/java/images/how-to-merge-source-code-file-source.png)
![](/comparison/java/images/how-to-merge-source-code-file-target.png)

差异表明**source.cs** 文件中写入了两种方法：*AddNumbers* 和*Sum*。

如果您没有使用ComparisonAction，那么在生成的文件中，所有更改都会被提交，这些方法将被移除，但是如果您需要控制文件的合并，[ComparisonAction](https://apireference.groupdocs. com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) 属性将帮助您解决这个问题。

## 使用比较操作的示例

---

以下代码示例演示了如何合并两个源代码文件。

<script src="https://gist.github.com/groupdocs-comparison-gists/0eada62d9c41ac852ad8ff18951e8abc.js"></script>

## 合并文件的结果

---

结果，我们得到一个合并的源代码文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font> 。

此外，您将收到一个 HTML 格式的文件，其中代码中的位置发生了变化。

|结果源代码文件 |结果 HTML 文件 |
|------------------------------------------------- ------------------------|-------------- -------------------------------------------------- |
| ![](比较/java/images/how-to-merge-source-code-file-result-CS.png) | ![](比较/java/images/how-to-merge-source-code-file-result-HTML.png) |

从生成的文件中可以看出，仅删除了两种方法中的一种。

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
