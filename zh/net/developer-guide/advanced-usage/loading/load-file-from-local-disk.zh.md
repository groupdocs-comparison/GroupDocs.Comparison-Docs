---
id：从本地磁盘加载文件
url: comparison/net/load-file-from-local-disk
title: "从本地磁盘加载文件"
weight: 1
description: "本文介绍了在使用 GroupDocs.Comparison for .NET 时如何从本地磁盘加载 PDF、Word、Excel、PowerPoint 文档。"
keywords: "从本地磁盘加载文档，从文件路径加载文档，使用 GroupDocs.Comparison 加载文档"
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
名称：如何在 .NET 中从本地磁盘加载文件
    description: "逐步了解如何在 .NET 中从本地磁盘加载文件"
脚步：
- name：创建一个带有文件路径的字符串变量
text：使用源文件的路径创建一个字符串变量。您可以根据需要指定绝对或相对文件路径。
- 名称：创建对象并加载源文件
text：通过在参数中指定字符串变量来创建对象并加载源文件。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
当源文件位于本地磁盘时 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许您通过 [Comparer](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/comparer) 类构造函数，指定它的绝对或相对路径。要加载位于本地磁盘上的目标文件，您应该使用接受绝对或相对路径的 [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法范围。

以下代码片段显示了如何从本地磁盘加载文件。

```csharp
string sourcePath = "source.docx";
using (Comparer comparer = new Comparer(sourcePath))
{
	string targetPath = "target.docx";
    comparer.Add("targetPath");
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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
