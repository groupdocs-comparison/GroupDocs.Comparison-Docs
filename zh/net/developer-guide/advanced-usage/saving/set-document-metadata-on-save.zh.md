---
id: 保存时设置文档元数据
url: comparison/net/set-document-metadata-on-save
title: "在保存时设置文档元数据"
weight: 1
description: "遵循本指南，了解如何在 .NET 应用程序中进行文件比较后保存结果文档时设置文档元数据。"
keywords: "保存文档元数据、比较文档、文档比较、文件差异"
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
名称：如何在 .NET 中保存时设置文档元数据
    description: "逐步了解如何在 .NET 中保存时设置文档元数据"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
文本：调用对象的 Compare 方法，并将生成的文件路径参数和 SaveOtions 对象与 MetadataType 枚举初始化的所需元数据参数一起放置。
---
通常文档可以包含一些元数据信息，例如作者、组织等。[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 提供了在保存结果时选择元数据源的能力文档。
可能的元数据来源是：

* **来源**文档元数据；
* **目标**文档元数据；
* **用户定义的**元数据。

以下是设置结果文档元数据的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 实例化 [SaveOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) 对象并设置 [CloneMetadataType](https://apireference.groupdocs.com/net/comparison/groupdocs) .comparison.options/saveoptions/properties/clonemetadatatype) 具有所需 [MetadataType](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/metadatatype) 变体的属性；
* 调用 [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法并通过 [SaveOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/saveoptions) 对象到方法。

以下代码演示了如何设置生成的文档元数据。

## 从源文件设置元数据

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Source });
}
```

## 从目标文件设置元数据

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Target });
}
```

## 设置用户定义的元数据

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    SaveOptions saveOptions = new SaveOptions()
    {
    	CloneMetadataType = MetadataType.FileAuthor,
        FileAuthorMetadata = new FileAuthorMetadata
        {
        	Author = "Tom",
            Company = "GroupDocs",
            LastSaveBy = "Jack"
        }
    };
    comparer.Compare("result.docx", saveOptions);
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

