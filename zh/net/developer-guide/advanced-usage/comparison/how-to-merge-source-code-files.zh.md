---
id：如何合并源代码文件
url: comparison/net/how-to-merge-source-code-files
title: "如何合并源代码文件"
weight: 8
description: "本文介绍如何在 GroupDocs.Comparison for .NET 中控制文件合并。"
keywords: "合并文档、文档差异、比较文档、比较文件"
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
名称：如何在 .NET 中获取源文本和目标文本
      description: "逐步了解如何在 .NET 中获取源文本和目标文本"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：为文件更改创建一个数组
text: 调用 Comparer 对象的 GetChanges 方法，并将结果分配给 ChangeInfo 类型的数组。
- 名称：拒绝或接受更改
text：要拒绝或接受更改，请访问数组元素的 ComparisonAction 字段并从枚举 ComparisonAction 设置拒绝或接受值。
- 名称：为文件更改创建一个数组
text: 调用 Comparer 对象的 GetChanges 方法，并将结果分配给 ChangeInfo 类型的数组。
- 名称：应用更改
text：要应用更改，请调用 Comparer 类对象的 ApplyChanges 方法。该方法采用结果文件的文件流参数和应包含 ChangeInfo 数组的 ApplyChangeOptions 类的对象。
---

***

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 提供了使用 [ComparisonAction](https://apireference.groupdocs.com/comparison) 合并源代码文件的功能/net/groupdocs.comparison.result/changeinfo/properties/comparisonaction) 属性：

* [ComparisonAction.Accept](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/comparisonaction) 接受找到的更改并将其添加到文件中而不突出显示；
* [ComparisonAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/comparisonaction) 取消找到的更改并将它们从结果文件中删除。

以下是对结果文件应用/拒绝更改的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定路径目标文档路径或流；
* 调用[比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index)方法；
* 调用[GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index)方法获取检测到的变化列表；
* 将所需更改对象的 [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) 设置为 [ComparisonAction.Accept](https://apireference.groupdocs .com/net/comparison/groupdocs.comparison.result/comparisonaction) 或 [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) 值；
* 调用 [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) 方法并将更改集合传递给它。

## 使用 GroupDocs.Comparison 合并源代码文件的示例

---

例如，您需要比较和合并多个版本的源代码文件，并且您需要接受或丢弃不同人所做的更改。

![](/comparison/net/images/how-to-merge-source-code-file-source.png)
![](/comparison/net/images/how-to-merge-source-code-file-target.png)

差异表明**source.cs** 文件中写入了两种方法：*AddNumbers* 和*Sum*。

如果您没有使用ComparisonAction，那么在生成的文件中，所有更改都会被提交，并且这些方法将被移除，但是如果您需要控制文件的合并，[ComparisonAction](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.result/changeinfo/properties/comparisonaction) 属性将为您提供帮助。

## 使用比较操作的示例

---

以下代码示例演示了如何合并两个源代码文件。
```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    comparer.Compare(resultPath);

    ChangeInfo[] changes = comparer.GetChanges();
    for (int i = 0; i < 10; i++)
    {
        changes[i].ComparisonAction = ComparisonAction.Accept;
    }

    for (int i = 10; i < changes.Length; i++)
    {
    	changes[i].ComparisonAction = ComparisonAction.Reject;
    }

    comparer.ApplyChanges(File.Create(resultPath), new ApplyChangeOptions { Changes = changes });
}
```
## 合并文件的结果

---

结果，我们得到一个合并的源代码文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font> 。

此外，您将收到一个 HTML 格式的文件，其中代码中的位置发生了变化。

|结果源代码文件 |结果 HTML 文件 |
| --- | --- |
| ![](比较/net/images/how-to-merge-source-code-file-result-CS.png) | ![](比较/net/images/how-to-merge-source-code-file-result-HTML.png) |

从生成的文件中可以看出，仅删除了两种方法中的一种。

## 更多资源

---

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
