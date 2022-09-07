---
id：从文件获取源和目标文本
url: comparison/net/get-source-and-target-text-from-files
title: "从文件中获取源文本和目标文本"
weight: 7
description: "本文介绍如何使用 GroupDocs.Comparison for .NET 获取特定更改的源文本和目标文本。"
keywords: "获取目标txt，获取源txt，文档差异，比较文档，比较文件"
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
text: 创建一个比较器类的对象。构造函数采用源文件路径或源文件流参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件或 tagret 文件流的路径。
- 名称：指定必要的设置
text：创建一个选项对象并指定真值的ExtendedSummaryPage。
- 名称：比较文件
text: 调用对象的 Compare 方法并放入生成的文件路径参数。
- 名称：为文件更改创建一个数组
text: 调用 Comparer 对象的 GetChanges 方法，并将结果分配给 ChangeInfo 类型的数组。
- 名称：输出更改文本
text：使用更改信息数组元素显示更改的源或目标文本。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许获取结果文件中特定更改的源文本和目标文本。

以下是获取更改的源文本和目标文本列表的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 调用[比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare)方法；
* 调用 [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges) 方法。

下面的代码示例演示了如何从文件中获取指定的文本。

## 从本地磁盘获取目标文本

```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
    }
}
```

## 从流中获取目标文本

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
    comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
    }
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
