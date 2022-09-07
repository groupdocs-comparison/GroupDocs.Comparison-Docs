---
id：如何比较简报
url: comparison/net/how-to-compare-powerpoint-presentations
title: "如何比较 PowerPoint 演示文稿"
weight: 4
description: "本文描述了在您的工作实践中使用 GroupDocs.Comparison for .NET 的一个可能示例，以及在 PowerPoint 演示文稿中查找样式差异的软件产品的可能性"
keywords: "比较演示文稿，比较样式变化，比较 pptx，如何比较 PowerPoint 文件"
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
名称：如何在 .NET 中比较 PowerPoint 演示文稿
    description: "如何逐步比较 .NET 中的 PowerPoint 演示文稿"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：指定必要的设置
text：创建一个选项对象并指定必要的设置。
- 名称：比较演示文稿
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
您可能需要比较 PowerPoint 演示文稿的两个版本以查看它们之间的差异（例如，如果同事直接对其进行了编辑而没有注意到更改）。最快的方法是使用 PowerPoint 的内置比较功能。要使用这个：

* 打开演示文稿的原始版本
* 转到 **评论** > **比较**
* 点击 **Compare** 打开浏览器窗口
* 选择演示文稿的编辑版本，然后单击 **Merge**

然后您将进入查看模式。这将打开审阅窗格，该窗格在屏幕右侧显示演示文稿中所有编辑的列表。

![](comparison/net/images/how-to-compare-powerpoint-presentations.png)

## 如何使用 GroupDocs.Comparison 比较两个演示文稿

第三方程序提供的这种功能显然是不够的。 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供了许多功能来比较各种[支持的文件格式]({{< ref "comparison/net/getting- started/supported-document-formats.md" >}})，包括 PowerPoint 演示文稿格式。举个例子，你在不同的时间做了一个演示，但是幻灯片上的元素没有像你原来那样定位。要查找幻灯片的不同之处，您可以使用 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 功能以及内置选项比较 PPTX 格式的两个文件有助于发现样式的变化。

| |演讲 |
| --- | --- |
|原创 | ![](比较/网络/图像/how-to-compare-powerpoint-presentations_1.png)|
|修改 | ![](比较/网络/图像/如何比较-powerpoint-presentations_2.png)|

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 提供了比较 PPTX 格式的两个文件（或任何其他[支持的文件格式]({{< ref "comparison /net/getting-started/supported-document-formats.md" >}}))

以下是比较两个 PPTX 文件的步骤。

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 使用所需参数实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象；
* 调用 [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison) .options/compareoptions) 对象到方法；

以下代码示例演示了如何比较两个 PPTX 文件。

```csharp
string sourceDocumentPath = @"source_presentation.pptx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"target_presentation.pptx"; // NOTE: Put here actual path to target document
string outputPath = @"result_presentation.docx"; // NOTE: Put here actual path to result document       

            

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(outputPath, compareOptions);
}
```

结果，我们得到一个 PPTX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font>

|结果幻灯片 |
| --- |
| ![](比较/网络/图像/how-to-compare-powerpoint-presentations_3.png))

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

