---
id：从字符串加载文本
url: comparison/net/load-text-from-string
title: "从字符串加载文本"
weight: 5
description: "本文介绍了在使用 GroupDocs.Comparison for .NET 时如何从字符串类型的变量中加载值。"
keywords: "从字符串类型的变量中加载值，使用 GroupDocs.Comparison 加载文本"
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
名称：如何从 .NET 中的字符串加载文本
    description: "逐步了解如何从 .NET 中的字符串加载文件"
脚步：
- 名称：创建对象并加载源文本
text: 创建一个比较器类的对象。构造函数通过第一个参数和带有 LoadText 参数的 LoadOption 对象获取源文本。
- 名称：加载目标文本
text：使用 Add 方法添加 tagret 文本。第二个参数是一个包含 LoadText = true 的 LoadOption 对象。
- 名称：比较文件
text：创建一个字符串变量，比较结果将被放置在其中。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许比较 *string* 类型变量的值。
以下是比较变量文本的步骤：

* 实例化 [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) 对象并设置 [LoadText](https://apireference.groupdocs.com/comparison/net/groupdocs) .comparison.options/loadoptions/properties/loadtext) 属性为 *true*（这表示传递的字符串包含要比较的文本，而不是文件路径）；
* 使用 *string* 类型的源变量和 [LoadOptions](https://apireference.groupdocs. com/net/comparison/groupdocs.comparison.options/loadoptions) *object* 在上一步创建；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定*string*类型的目标变量和[LoadOptions](https:// /apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) *object* 在上一步创建；
* 调用 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 方法。
* 调用 [GetResultString](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/getresultstring) 方法获取带有比较结果的字符串。

以下代码片段显示了如何从变量加载值：
```csharp
using (Comparer compare = new Comparer("source text", new LoadOptions() { LoadText = true }))
{
    compare.Add("target text", new LoadOptions() { LoadText = true });
    compare.Compare();
    string result = compare.GetResultString();
}
```
---

也可以结合不同的文件传递方式（文件路径或流），如下代码示例所示：
```csharp
using (Stream sourceStream = File.OpenRead("./source.docx"))
{
    using (Comparer compare = new Comparer(sourceStream))
    {
        compare.Add("target text", new LoadOptions() { LoadText = true });
        compare.Compare();
        string result = compare.GetResultString();
        Console.WriteLine(result);
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
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

