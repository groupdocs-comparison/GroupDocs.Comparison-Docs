---
id：从流中加载文件
url: comparison/net/load-file-from-stream
title: "从流中加载文件"
weight: 2
description: "本文介绍了在使用 GroupDocs.Comparison for .NET 时如何从流中加载 PDF、Word、Excel、PowerPoint 文档。"
keywords: "从流中加载文档，使用 GroupDocs.Comparison 加载文档"
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
名称：如何在 .NET 中从流中加载文件
    description: "逐步了解如何在 .NET 中从流中加载文件"
脚步：
- 名称：创建对象并指定源文件流
text: 创建一个比较器类的对象。构造函数采用源文件流。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件流。
- 名称：比较文件
文本：调用对象的比较方法并放入生成的文件流。
---
如果您有流形式的文件。为了避免将流作为文件保存在磁盘上的开销，**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供了一种直接处理文件流的方法。

以下是要遵循的步骤：
* 获取文件流；
* 将打开的源文件流传递给 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 类构造函数或将打开的目标文件流传递给 [Add](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法。
    



以下代码片段描述了如何从流中加载文件。

```csharp
using (Stream sourceStream = File.OpenRead("source.docx"))
using (Stream targetStream = File.OpenRead("target.docx"))
{
	using (Comparer comparer = new Comparer(sourceStream))
	{
	    comparer.Add(targetStream);
    	comparer.Compare(File.Create("result.docx"));
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
