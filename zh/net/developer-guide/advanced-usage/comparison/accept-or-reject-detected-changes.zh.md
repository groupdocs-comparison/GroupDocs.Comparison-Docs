---
id：接受或拒绝检测到的更改
url: comparison/net/accept-or-reject-detected-changes
title: "接受或拒绝检测到的更改"
weight: 1
description: "按照本指南，您将了解如何使用 GroupDocs.Comparison for .NET API 应用或丢弃在文档比较过程中检测到的更改。"
keywords: "对比较文档应用更改、拒绝比较更改、文档比较更改"
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
名称：如何接受或拒绝 .NET 中检测到的更改
      description: "逐步了解如何接受或拒绝 .NET 中检测到的更改"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径或源文件流参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件或 tagret 文件流的路径。
- 名称：比较文件
text：不带参数调用对象的比较方法。
- 名称：为文件更改创建一个数组
text: 调用 Comparer 对象的 GetChanges 方法，并将结果分配给 ChangeInfo 类型的数组。
- 名称：拒绝或接受更改
text：要拒绝或接受更改，请访问数组元素的 ComparisonAction 字段并从枚举 ComparisonAction 设置拒绝或接受值。
- 名称：应用更改
text：要应用更改，请调用 Comparer 类对象的 ApplyChanges 方法。该方法采用结果文件的文件流参数和应包含 ChangeInfo 数组的 ApplyChangeOptions 类的对象。
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供了在源文档和目标文档之间应用或放弃特定更改并保存带有（或不带有）选定更改的结果文档的能力。
以下是对结果文档应用/拒绝更改的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定路径目标文档路径或流；
* 调用[比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index)方法；
* 调用[GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index)方法获取检测到的变化列表；
* 将所需更改对象的 [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) 设置为 [ComparisonAction.Accept](https://apireference.groupdocs .com/net/comparison/groupdocs.comparison.result/comparisonaction) 或 [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) 值；
* 调用 [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) 方法并将更改集合传递给它。

[ApplyChangeOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions) 类：

* [更改](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions/properties/changes) - 必须应用（或不应用）到结果文档的更改列表；
* [SaveOriginalState](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions/properties/saveoriginalstate) - 应用更改后保持比较结果的原始状态。

以下代码示例显示了如何接受/拒绝检测到的更改。

## 接受或拒绝存储在本地磁盘上的文档的更改

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges(File.Create("result.docx"), new SaveOptions(), new ApplyChangeOptions() { Changes = changes });
}
```

## 接受或拒绝以流形式提供的文档的更改

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(new SaveOptions(), new CompareOptions());
    ChangeInfo[] changes = comparer.GetChanges(new GetChangeOptions());
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges(File.Create("result.docx"), new SaveOptions(), new ApplyChangeOptions() { Changes = changes });
}
```

## 以下代码示例显示如何使用 SaveOriginalState 选项接受/拒绝检测到的更改

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges("resultWithRejectedChange.docx", new ApplyChangeOptions() { Changes = changes, SaveOriginalState = true });
    changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Accept;
    comparer.ApplyChanges("resultWithAcceptedChange.docx", new ApplyChangeOptions() { Changes = changes });
}
```

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
除了功能齐全的 .NET 库，我们还提供简单但功能强大的免费应用程序。
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
