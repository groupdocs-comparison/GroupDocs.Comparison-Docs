---
id: 获取文件信息
url: comparison/net/get-file-info
title: "获取文件信息"
weight: 2
description: "本文介绍了在使用 GroupDocs.Comparison 注释文档或图像时如何检测文档文件类型、大小和计算页数。"
keywords: "获取文件信息、获取文件类型、页数、文件大小"
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
名称：在 .NET 中获取比较器文件信息
    description: "逐步在 .NET 中获取比较器文件信息"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：创建文件信息对象
text：在比较器对象的Source字段上调用GetDocumentInfo方法，并将结果分配给IDocumentInfo类的文件信息对象。
- name：获取文件信息
text：要获取有关文件的一般信息，请使用文件信息对象访问必填字段。要获取有关特定页面的信息，请将 PagesInfo 字段与所需的页面索引一起使用，然后访问所需的字段。
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许获取文件信息，包括：

* [文件类型](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/filetype) - 文档文件类型（PDF、Word 文档、Excel 电子表格、PowerPoint 演示文稿或图像等。 );
* [PageCount](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/pagecount) - 文档页数；
* [FileSize](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/size) - 文档文件大小；
* [PagesInfo](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/pageinfo) - 表示关于页面的信息。

以下代码示例演示了如何获取文件信息。

## 从本地磁盘获取文件的文件信息

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ", 
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
}
```

## 从流中获取文件的文件

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ", 
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
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

