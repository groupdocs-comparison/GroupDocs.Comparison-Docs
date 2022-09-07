---
id：比较多个文档与特定比较设置
url: comparison/net/compare-multiple-documents-with-specific-compare-settings
title: "使用特定比较设置比较多个文档"
weight: 2
description: "按照本指南，您将学习如何比较具有不同自定义的多个文档 - 样式检测、更改比较细化级别等。"
keywords: "比较多个文档，样式变化检测，多比较文件"
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
名称：如何将多个文档与 .NET 中的特定比较设置进行比较
      description: "逐步了解如何将多个文档与 .NET 中的特定比较设置进行比较"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：指定必要的设置
text：创建一个比较选项对象并指定必要的设置。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
{{< alert style="info" >}}注意：此功能仅适用于 Microsoft Word 文档、Microsoft PowerPoint 和 Open Document 演示文稿。{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许比较超过 2 个文档并指定一些特定的比较选项，例如检测到的更改的样式、比较的详细程度等。

以下是将多个文档与特定选项进行比较的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用 [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法并指定目标文档路径或流。对每个目标文档重复此步骤；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象并指定所需的选项；
* 调用 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison) .options/compareoptions) 上一步的对象。

以下代码示例显示了如何将多个文档与特定选项进行比较。

## 使用本地磁盘的特定比较设置比较多个文档

```csharp
using (Comparer comparer = new Comparer("source.docx")
{
	comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
	CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
        }
    };
    comparer.Compare("result.docx", compareOptions);
}
```

## 将多个文档与流中的特定比较设置进行比较

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
        }
    };
    comparer.Compare(File.Create("result.docx"), compareOptions);
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
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

