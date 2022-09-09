---
id：如何比较发票
url: comparison/net/how-to-compare-invoices
title: "如何比较发票"
weight: 3
description: "在比较发票时，您会发现如何在生产中使用 GroupDocs.Comparison for .NET。查看 GroupDocs.Comparison API 的文件比较敏感度配置和其他用例"
keywords: "比较docx文件，发票比较，如何比较发票"
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
名称：如何在 .NET 中比较发票
      description: "如何在 .NET 中逐步比较发票"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：指定必要的设置
text：创建一个选项对象并指定必要的设置。
- 名称：比较发票
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
有时您需要在比较文件时达到最大的准确性。假设你有一个重要文档的两个版本，你需要逐个字符或相反的情况来查找差异，你需要比较文档，但细节对你来说并不重要，你只需要有变化的单词。 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供将文档与敏感度设置进行比较的功能

例如，有两张 DOCX 格式的发票，您需要将其内容与最大详细程度和比较敏感度进行比较。

| |文件 |
| --- | --- |
|源发票|![](/comparison/net/images/how-to-compare-invoices.png) | |目标发票 |![](/comparison/net/images/how-to-compare-invoices_1.png)|

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 提供了比较 DOCX 格式（或任何其他[支持的文件格式]（{{< ref "comparison /net/getting-started/supported-document-formats.md" >}}) 与 detalization level 和 [比较敏感度]({{< ref "comparison/net/developer-guide/advanced-usage/comparison/调整比较敏感度.md" >}})

以下是比较两个 DOCX 文件的步骤，具体设置为 detalization level 和 [比较敏感度]({{< ref "comparison/net/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}}）

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 使用所需的 [SensitivityOfComparison](https://apireference.groupdocs.com/net/comparison/groupdocs) 实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象.comparison.options/compareoptions/properties/sensitivityofcomparison) 和 [DetalisationLevel](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/detalisationlevel) 值；
* 调用[Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1)方法并通过[CompareOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/compareoptions) 对象到方法。

以下代码示例演示了如何比较两个 DOCX 文件。

```csharp
string sourceDocumentPath = @"Invoice_source.docx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"Invoice_target.docx"; // NOTE: Put here actual path to target document
string outputPath = @"Invoice_result.docx"; // NOTE: Put here actual path to result document       

           

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions options = new CompareOptions
    {
        SensitivityOfComparison = 100,
        DetalisationLevel = DetalisationLevel.High
    };
    comparer.Compare(outputPath, options);
}
```

结果，我们得到一个 DOCX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font>

|结果发票 |
| --- |
| ![](/comparison/net/images/how-to-compare-invoices_2.png)|

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

