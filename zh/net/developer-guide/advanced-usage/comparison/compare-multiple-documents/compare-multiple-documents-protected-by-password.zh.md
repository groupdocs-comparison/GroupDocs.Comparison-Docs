---
id：比较多个文档受密码保护
url: comparison/net/compare-multiple-documents-protected-by-password
title: "比较受密码保护的多个文档"
weight: 1
description: "本文介绍如何使用 GroupDocs.Comparison for .NET API 比较多个受密码保护的 Word 文档或 PowerPoint 演示文稿。"
keywords: "比较多个受密码保护的文档，比较多个受保护的文档"
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
名称：如何在 .NET 中比较多个文档
      description: "逐步了解如何在 .NET 中比较多个文档"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数通过第一个参数获取源文件路径或源文件流，并通过包含密码的第二个参数获取 LoadOption 对象。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。第二个参数是一个包含密码的 LoadOption 对象。
- 名称：比较文件
文本：调用对象的比较方法并放入生成的文件路径参数。
---
{{< alert style="info" >}}注意：此功能仅适用于 Word 文档、PowerPoint 和 Open Document 演示文稿。{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许比较超过 2 个文档（还有受密码保护的文档）。

以下是比较受密码保护的文档的步骤。

* 实例化 [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 对象并指定源文档密码；
* 使用源文档路径或流和 [LoadOptions](https://apireference.groupdocs.com/net/) 实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象compare/groupdocs.comparison.options/loadoptions) 上一步创建的对象；
* 实例化另一个 [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 对象并指定目标文档密码；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流和[LoadOptions](https://apireference .groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 上一步创建的对象。对每个受密码保护的目标文档重复此步骤；
* 调用 [比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法。

以下代码示例显示了如何比较受密码保护的文档。

## 比较本地磁盘中的多个文档

```csharp
using (Comparer comparer = new Comparer("source.docx", new LoadOptions() { Password = "1234" }))
{
	comparer.Add("target1.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target2.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target3.docx", new LoadOptions() { Password = "5678" });
    comparer.Compare("result.docx");
}
```

## 比较流中的多个受保护文档

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"), new LoadOptions() { Password = "1234" }))
{
	comparer.Add(File.OpenRead("target1.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target2.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target3.docx"), new LoadOptions() { Password = "5678" });
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
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

