---
id：为结果文档设置密码
url: comparison/net/set-password-for-resultant-document
title: "为生成的文档设置密码"
weight: 2
description: "本文介绍如何在 .NET 应用程序中使用 GroupDocs.Comparison for .NET 进行文件比较后设置文档密码。"
keywords: "比较文档并使用密码保护"
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
- 名称：创建一个CompareOptions对象
text：使用 PasswordSaveOption 枚举值初始化的 PasswordSaveOption 参数创建 CompareOptions 类的对象。
- 名称：创建 SaveOptions 的对象
text：使用 Password 参数创建 SaveOptions 类的对象。
- 名称：比较文件
text: 调用你的对象的 Compare 方法并放入生成的文件路径参数、SaveObject 对象和 CompareOption 对象。
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许使用密码保护生成的文档。

以下是保护生成文档的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象与 [PasswordSaveOption](https://apireference.groupdocs.com/net/comparison/groupdocs. compare.options/compareoptions/properties/passwordsaveoption) = [PasswordSaveOption](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/passwordsaveoption).User；
* 实例化 [SaveOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) 对象并设置为 [Password](https://apireference.groupdocs.com/comparison/net/ groupdocs.comparison.options/saveoptions/properties/password) 属性结果文档所需的密码；
* 调用 [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法并通过 [SaveOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/saveoptions) 和 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象到一个方法。

以下代码片段演示了如何比较文档并使用密码保护生成的文档。

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions cOptions = new CompareOptions
    {
     	PasswordSaveOption = PasswordSaveOption.User
    };
    SaveOptions sOptions = new SaveOptions()
    {
     	Password = "3333"
    };
    comparer.Compare("result.docx", sOptions, cOptions);
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

