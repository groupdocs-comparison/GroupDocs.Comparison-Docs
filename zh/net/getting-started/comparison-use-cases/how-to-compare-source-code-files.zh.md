---
id：如何比较源代码文件
url: comparison/net/how-to-compare-source-code-files
title: "如何比较源代码文件"
weight: 6
description: "本文介绍如何使用 GroupDocs.Comparison for .NET 比较文件。您还将学习如何比较两个或多个源代码文件以及如何影响它们的比较。"
keywords: "比较源代码文件，源代码文件，如何比较源代码文件文件，ComparisonAction，ComparisonAction.Accept，ComparisonAction.Reject"
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文档比较
    description: "使用 C# 语言和 GroupDocs.Comparison for .NET 以高性能方式本地比较文档"
产品代码：比较
产品平台：net
显示视频：真
如何：
名称：如何比较 .NET 中的源代码文件
    description: "如何逐步比较 .NET 中的源代码文件"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径或流参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
text：不带参数调用对象的比较方法。
- 名称：为文件更改创建一个数组
text: 调用 Comparer 对象的 GetChanges 方法，并将结果分配给 ChangeInfo 类型的数组。
- 名称：拒绝更改
text：要拒绝更改，请访问数组元素的 ComparisonAction 字段并从枚举 ComparisonAction 中设置 Reject 值。
- 名称：应用更改
text：要应用更改，请调用 Comparer 类对象的 ApplyChanges 方法。该方法采用结果文件的文件流参数和应包含 ChangeInfo 数组的 ApplyChangeOptions 类的对象。
---

***

有很多比较工具允许多个用户在使用 CSharp、Java、Python、Ruby 和其他编程语言编写的源代码进行协作时有效地管理、接受或拒绝他们的更改。大多数此类工具都是免费或付费的桌面应用程序，提供强大的功能集，各有利弊，但所有这些工具都假设您将手动比较文件。

当您需要查看由两个不同的人编辑的两个版本的 C# (CSharp) 源代码文件并为每个编辑的代码块选择正确的变体时，让我们查看一些常见用例。请检查我们将在下图中比较的 source.cs 和 target.cs 文件。

![](/comparison/net/images/how-to-compare-source-code-files1.png)

正如我们所见，比较文件之间存在多个差异：
* 类名不同 - *CropImage* 与 *ImageCropTests*；
* *Test1* 方法不在 *target.cs* 文件中；
* *Test2* - *input.png* 与 *original.png* 中的位图图像路径已更改；
* *Start* 方法被重命名为 *Launch* 并且其内容也被修改 - *Test1* 方法调用被移除；
*删除了一些空行等。

下图展示了一些桌面比较工具检测到的所有提到的变化。它工作得很好，在用户界面中检测并突出显示所有差异。

![](/comparison/net/images/how-to-compare-source-code-files2.png)

但是，有时您可能需要一些现有比较工具不提供的功能，或者您想以自己的方式实现比较过程。然后，您肯定需要以编程方式比较文档并通过代码管理发现的更改。这就是 **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison/net)** 功能将派上用场的地方，所以让我们看看如何将源代码文件与它进行比较。

## 使用 GroupDocs.Comparison 比较 CSharp、Java、C++、JavaScript、Python 和 Ruby 文件
 

 ---

使用 **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison/net)** API，您可以比较两个或多个源代码文件，检测它们之间的差异，然后决定如何处理每个检测到的更改 - 在保存结果文档之前接受或丢弃它，生成带有比较结果的 HTML 报告等。

一般来说，您必须按照以下步骤比较两个源代码文件（请在 [此处](https://wiki.lisbon.dynabic.com/display/comparison/Supported+File+Formats) 找到其他支持的格式列表）：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定路径目标文档路径或流；
* 调用[Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer)方法进行文件比较。







在这个阶段，您可以将比较报告保存为 HTML 格式并进行查看。如果您需要以编程方式获取检测到的更改的集合以进行进一步处理，您必须：

* 调用[GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index)方法获取检测到的变化列表；
* 将所需更改对象的所需 [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) 设置为 [ComparisonAction.Accept](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) 或 [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) 值；
* 实例化 [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions) 对象，其中包含要应用于（或拒绝）结果文档的更改列表；
* 调用 [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) 方法并保存文档。

您可以在 [此处](https://wiki.lisbon.dynabic.com/display/comparison/How+to+merge+source+code+files) 了解有关 ComparisonAction 属性的更多信息。

以下代码示例演示了如何比较两个 CS 文件并接受或拒绝在特定范围内检测到的更改。

```csharp
using (Comparer comparer = new Comparer("source.cs"))
{
    comparer.Add("target.cs");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject; // This is how to reject first detected difference;
    changes[1].ComparisonAction = ComparisonAction.Reject; // This is how to reject second detected difference;
    changes[2].ComparisonAction = ComparisonAction.Reject; // This is how to reject third detected difference;
    comparer.ApplyChanges(File.Create("result.cs"), new ApplyChangeOptions { Changes = changes });
}     


```

结果，我们得到一个合并的 CS 文件，其中删除的元素标记为<font color="red">红色</font>，添加的元素标记为<font color="blue">蓝色</font>，修改的元素标记为<font color="green">绿色</font>。


此外，您将收到一个 HTML 格式的文件，其中代码中的位置发生了变化。

|结果 HTML 文件 |使用 ComparisonAction 属性的结果 HTML 文件 |
| --- | --- |
| ![]（比较/网络/图像/如何比较源代码文件_result1.PNG）| ！[]（比较/网络/图像/如何比较源代码文件_result2.PNG）|

## 更多资源

---

### 高级用法主题
要了解更多关于文档比较功能的信息，请参阅[高级用法部分]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}})。

### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    


### 免费在线应用
除了功能齐全的 .NET 库，我们还提供简单但功能强大的免费应用程序。

欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

