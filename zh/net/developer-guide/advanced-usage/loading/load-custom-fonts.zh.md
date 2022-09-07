---
id：加载自定义字体
url: comparison/net/load-custom-fonts
title: "加载自定义字体"
weight: 4
description: "本文介绍了如何在使用 GroupDocs.Comparison for .NET 时加载自定义字体 PDF、Word、Excel、PowerPoint 文档。"
keywords: "自定义字体、字体"
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
名称：如何在 .NET 中加载自定义字体
    description: "逐步了解如何在 .NET 中加载自定义字体"
脚步：
- 名称：创建一个对象并加载字体。
text: 创建一个 LoadOptions 类的对象。使用带有字体文件参数路径的 Add 方法访问对象字段。
- 名称：创建一个对象并使用选项加载源文件
text: 创建一个比较器类的对象。构造函数接受源文件路径参数和 LoadOptions 的对象。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许您比较内容具有非标准字体的文档。

以下是连接自定义字体和比较文档的步骤：

* 实例化 [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 对象并提供自定义字体的目录列表；
* 使用源文档路径或流和 [LoadOptions](https://apireference.groupdocs.com/net/) 实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象compare/groupdocs.comparison.options/loadoptions) 上一步创建的对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 调用 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 方法。

以下代码示例显示了如何连接自定义字体和比较文档。

```csharp
// Instantiate the LoadOptions object and create a list of custom font directories.
LoadOptions loadOptions = new LoadOptions();
loadOptions.FontDirectories.Add("./fontPath/");
 
using (Comparer comparer = new Comparer("source.docx", loadOptions))
{
    comparer.Add("target.docx");
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

