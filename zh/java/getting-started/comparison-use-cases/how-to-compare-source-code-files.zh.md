---
id：如何比较源代码文件
url: comparison/java/how-to-compare-source-code-files
title: "如何比较源代码文件"
weight: 6
description: "本文介绍了如何比较编程文件并将它们合并到一个文件中并应用或取消更改。 GroupDocs.Comparison for Java 提供了在以下文件中查找差异的能力：CS、Java、Python、C++、Ruby 等"
keywords: "比较cs文件，比较java文件，合并文件"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：代码不同
        description: "该产品允许比较代码"
产品代码：比较
产品平台：java
如何：
姓名：
        description: "了解如何比较 Java 或 Kotlin 项目中的代码"
脚步：
- 名称：加载源代码文件
文本：创建一个比较器类的实例，将源代码文件作为构造函数参数传递
- 名称：加载目标代码文件
text: 添加一个或多个目标代码文件以与源代码文件进行比较
- 名称：比较源代码和目标代码文件
text: 运行比较过程传递路径，比较结果将被保存在哪里
---

***

有很多比较工具允许多个用户在使用 CSharp、Java、Python、Ruby 和其他编程语言编写的源代码进行协作时有效地管理、接受或拒绝他们的更改。大多数此类工具都是免费或付费的桌面应用程序，提供强大的功能集，各有利弊，但所有这些工具都假设您将手动比较文件。

当您需要查看由两个不同的人编辑的两个版本的 C# (CSharp) 源代码文件并为每个编辑的代码块选择正确的变体时，让我们回顾一些常见的用例。请检查我们将在下图中比较的 source.cs 和 target.cs 文件。

![](/comparison/java/images/how-to-compare-source-code-files1.png)

正如我们所见，比较文件之间存在多个差异：
* 类名不同 - *CropImage* 与 *ImageCropTests*；
* *Test1* 方法不在 *target.cs* 文件中；
* *Test2* - *input.png* 与 *original.png* 中的位图图像路径已更改；
* *Start* 方法被重命名为 *Launch* 并且其内容也被修改 - *Test1* 方法调用被移除；
*删除了一些空行等。

下图展示了一些桌面比较工具检测到的所有提到的变化。它工作得很好，在用户界面中检测并突出显示所有差异。

![](/comparison/java/images/how-to-compare-source-code-files2.png)

但是，有时您可能需要一些现有比较工具不提供的功能，或者您想以自己的方式实现比较过程。然后，您肯定需要以编程方式比较文档并通过代码管理发现的更改。这就是 **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison)** 功能将派上用场的地方，所以让我们看看如何将源代码文件与它进行比较。

## 使用 GroupDocs.Comparison 比较 CSharp、Java、C++、JavaScript、Python 和 Ruby 文件
 

---

使用 **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison)** API，您可以比较两个或多个源代码文件，检测它们之间的差异，然后决定如何处理每个检测到的更改- 在保存结果文档之前接受或丢弃它，生成带有比较结果的 HTML 报告等。

一般来说，您必须按照以下步骤比较两个源代码文件（请在 [此处](https://wiki.lisbon.dynabic.com/display/comparison/Supported+File+Formats) 找到其他支持的格式列表）：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定路径目标文档路径或流；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法进行文件比较。

在这个阶段，您可以将比较报告保存为 HTML 格式并进行查看。如果您需要以编程方式获取检测到的更改的集合以进行进一步处理，您必须：

* 调用[getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges())方法获取检测到的变化列表；
* 将所需更改对象的[ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction)设置为[ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) 或 [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT)价值;
* 实例化 [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) 对象，其中包含要应用于（或拒绝）结果文档的更改列表；
* 调用 [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,% 20com.groupdocs.comparison.options.ApplyChangeOptions)) 方法并保存文档。

您可以在 [此处](https://wiki.lisbon.dynabic.com/display/comparison/How+to+merge+source+code+files) 了解有关 ComparisonAction 属性的更多信息。

以下代码示例演示了如何比较两个 CS 文件并接受或拒绝在特定范围内检测到的更改。

<script src="https://gist.github.com/groupdocs-comparison-gists/a7fa2bad5b8034df93e8e68d3cba83fc.js"></script>

结果，我们得到一个合并的 CS 文件，其中删除的元素标记为<font color="red">红色</font>，添加的元素标记为<font color="blue">蓝色</font>，修改的元素标记为<font color="green">绿色</font>。

此外，您将收到一个 HTML 格式的文件，其中代码中的位置发生了变化。

|结果 HTML 文件 |使用 ComparisonAction 属性的结果 HTML 文件 |
|------------------------------------------------- -------------------------|------------------------ -------------------------------------------------- |
| ![](比较/java/images/how-to-compare-source-code-files_result1.png) | ![](比较/java/images/how-to-compare-source-code-files_result2.png) |

## 更多资源

---

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


