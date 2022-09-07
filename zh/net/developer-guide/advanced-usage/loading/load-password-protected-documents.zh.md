---
id：加载密码保护文档
url: comparison/net/load-password-protected-documents
title: "加载受密码保护的文档"
weight: 3
description: "本文介绍了如何在使用 GroupDocs.Comparison for .NET 时加载受密码保护的 PDF、Word、Excel、PowerPoint 文档。"
keywords: "加载受密码保护的文档，使用 GroupDocs.Comparison 加载受保护的文档"
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
名称：如何从 .NET 中的流中加载文件
    description: "逐步了解如何在 .NET 中从流中加载文件"
脚步：
- 名称：创建 LoadOption 的对象
文本：创建一个包含密码参数的 LoadOption 对象。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。第二个参数是一个包含密码的 LoadOption 对象。
- 名称：比较文件
文本：调用对象的比较方法并放入生成的文件流。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许比较受密码保护的文档。
以下是比较受密码保护的文档的步骤。

* 实例化 [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 对象并指定源文档密码；
* 使用源文档路径或流和 [LoadOptions](https://apireference.groupdocs.com/net/) 实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象compare/groupdocs.comparison.options/loadoptions) 上一步创建的对象；
* 实例化另一个 [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 对象并指定目标文档密码；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流和[LoadOptions](https://apireference .groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 上一步创建的对象；
* 调用 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 方法。

以下代码示例显示了如何比较受密码保护的文档。

```csharp
LoadOptions sourceLoadOptions = new LoadOptions(){ Password = "1234" };
 
using (Comparer comparer = new Comparer("source.docx", sourceLoadOptions))
{
	LoadOptions targetLoadOptions =	new LoadOptions() { Password = "5678" };
    comparer.Add("target.docx", targetLoadOptions);
    comparer.Compare("result.docx");
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

