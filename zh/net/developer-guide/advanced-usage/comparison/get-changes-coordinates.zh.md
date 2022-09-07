---
id：获取更改坐标
url: comparison/net/get-changes-coordinates
title: "获取更改坐标"
weight: 5
description: "本文介绍了在将文档与 GroupDocs.Comparison for .NET 进行比较时，如何在文档页面预览中获取检测到的更改的坐标"
keywords: "比较文档，获取更改坐标"
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
名称：如何在 .NET 中获取更改坐标
      description: "逐步了解如何在 .NET 中获取更改坐标"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：指定必要的设置
text：创建一个选项对象并指定真值的CalculateCoordinates。
- 名称：比较文件
文本：调用对象的比较方法并放置比较选项参数。
- 名称：为文件更改创建一个数组
text: 调用 Comparer 对象的 GetChanges 方法，并将结果分配给 ChangeInfo 类型的数组。
- 名称：输出改变坐标
text：使用更改信息对象的每个元素的 Box 字段显示有关更改坐标的信息，然后使用带有坐标名称的字段。
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许检测源文档和目标文档之间的变化，并在文档预览图像处获取变化坐标。这些坐标对于突出显示带有某些图形的文档预览图像中检测到的更改非常有用（例如，在每个检测到的更改周围放置一个红色矩形）。

以下是获取更改坐标的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象并设置 [CalculateCoordinates](https://apireference.groupdocs.com/net/comparison/groupdocs) .comparison.options/compareoptions/properties/calculatecoordinates) 属性为真；
* 调用 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison) .options/compareoptions) 上一步的对象；
* 调用 [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) 方法。

以下代码示例显示了如何将多个文档与特定选项进行比较。

## 坐标计算示例

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions(){ CalculateCoordinates = true };
    comparer.Compare(compareOptions);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    	Console.WriteLine("Change Type: {0}, X: {1}, Y: {2}, Text: {3}", change.Type, change.Box.X, change.Box.Y, change.Text);
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
