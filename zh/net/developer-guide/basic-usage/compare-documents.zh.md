---
id：比较文档
url: comparison/net/compare-documents
title: "比较文件"
weight: 3
description: "本文演示如何使用 GroupDocs.Comparison for .NET 比较 Word、Excel、PowerPoint、Outlook、OneNote、PDF、图像、HTML、AutoCAD、Visio、OpenDocument、OneNote 文档。"
keywords: "比较文档，C#中的文档比较"
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
名称：如何在 .NET 中比较文档
    description: "逐步了解如何在 .NET 中比较文档"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
text: 调用对象的 Compare 方法并放入生成的文件路径参数。
---
## 文件比较功能

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 使用的更改检测算法允许检测不同文档部分和块中的更改：

* 文本块 - 段落、单词和字符；
* 表格；
* 图片;
* 形状等
    


为了更好地分离检测到的更改，添加、修改或删除的文档部分用不同的颜色突出显示：

* 添加 - <font color="blue">**蓝色**</font>
* 修改 – <font color="green">**绿色**</font>
* 风格 – <font color="green">**绿色**</font>
* 已删除 – <font color="red">**红色**</font>

如果需要，可以自定义更改样式着色方案，更改的文本块可以用不同的格式标记 - 斜体、粗体、下划线、删除线等。

以下是比较两个文档的简单步骤：
* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用 [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法并指定目标文档路径或流。
* 调用 [比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法。

以下代码片段演示了使用几行代码进行文档比较的最简单情况。

## 比较本地文件中的文档

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	comparer.Compare("result.docx");
}
```

## 比较流中的文档

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	comparer.Compare(File.Create("result.docx"));
}
```

## 更多资源
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

