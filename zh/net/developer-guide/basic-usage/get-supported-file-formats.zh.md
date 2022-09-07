---
id：获取支持的文档格式
url: comparison/net/get-supported-document-formats
title: "获取支持的文件格式"
weight: 1
description: "本文介绍了在 .NET 应用程序中使用 GroupDocs.Comparison 查看文档时如何获取支持的文件格式列表。"
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
名称：获取 .NET 中比较支持的文件格式
    description: "逐步获取比较.NET支持的文件格式"
脚步：
- name：获取数组支持的文件类型
text：使用 FileType 对象调用 GetSupportedFileTypes 方法。附加的 OrderBy 方法可以对生成的数组进行排序，它使用 lambda 表达式作为参数。并将结果分配给具有 FileType 数据类型的集合，并具有迭代的可能性。
- 名称：输出支持的文件类型
text：使用集合的迭代，您可以将支持的数据类型显示到控制台等。
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许获取所有[支持的文件格式]({{< ref "comparison/net/getting-started/ supported-document-formats.md" >}}) 按照以下步骤操作：

* 调用 [FileType](https://apireference.groupdocs.com/comparison/net) 的 [GetSupportedFileTypes](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype/methods/getsupportedfiletypes) /groupdocs.comparison.result/filetype) 类；
* 通过 [FileType](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype) 对象的集合枚举。

以下代码示例演示了如何获取支持的文件格式列表。

```csharp
IEnumerable<FileType> supportedFileTypes = FileType
	.GetSupportedFileTypes()
	.OrderBy(f => f.Extension);

foreach (FileType fileType in supportedFileTypes)
	Console.WriteLine(fileType);
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

