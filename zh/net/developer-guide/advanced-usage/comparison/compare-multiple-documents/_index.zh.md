---
id：比较多个文档
url: comparison/net/compare-multiple-documents
title: "比较多个文档"
weight: 3
description: "详细了解如何使用 GroupDocs.Comparison for .NET 同时比较多个 Word 文档或 PowerPoint 演示文稿。"
keywords: "比较多个文档，文档多比较，比较两个以上的文档"
产品名称：GroupDocs.Comparison for .NET
hideChildren：真
结构化数据：
显示组织：真
---
{{< alert style="info" >}}注意：此功能仅适用于 Word 文档、PowerPoint 和 Open Document 演示文稿。{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许比较超过 2 个文档。

以下是比较多个文档的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用 [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法并指定目标文档路径或流。对每个目标文档重复此步骤；
* 调用 [比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法。

以下代码示例显示了如何使用特定选项比较多个文档。

## 比较本地磁盘中的多个文档

```csharp
using (Comparer comparer = new Comparer("source.docx")
{
	comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
    comparer.Compare("result.docx");
}
```

## 比较流中的多个文档

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    comparer.Compare(File.Create("result.docx"));
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
