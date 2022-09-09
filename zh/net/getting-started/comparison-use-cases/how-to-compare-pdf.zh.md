---
id：如何比较 pdf 文件
url: comparison/net/how-to-compare-pdf-files
title: "如何比较 PDF 文件"
weight: 1
description: "阅读这篇文章，了解如何使用 GroupDocs.Comparison for .NET 来查找 PDF 文件中的差异。此外，在本文中，您可以找到在生产中使用此产品的选项"
keywords: "如何比较 PDF 文件、PDF 文件、比较用例、比较 PDF 文件"
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
在处理类似文档时，越来越难以找到其中一个版本的更改内容之间的差异，尤其是在处理大量文档时。PDF 文档比较等功能可以显着提高您的工作效率，最重要的是，加快速度。**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 为您提供了许多选项来比较各种 [支持的文件格式]({{< ref "comparison /net/getting-started/supported-document-formats.md" >}})，包括 PDF 格式。

比较后，生成的文件中有三种颜色突出了差异。您还可以自己指定颜色以识别下一个差异：

* 插入第一个文件的元素。 – <font color="blue">**蓝色**</font> ，默认情况下
* 从第一个文件中删除的元素 - <font color="red">**red**</font> ，默认情况下
* 改变了样式（字体、颜色等）的元素 – <font color="green">**green**</font> ，默认情况下

|源/目标/结果 PDF 文件 |
| --- | --- |
|来源 |![](/comparison/net/images/how-to-compare-pdf-1.png) |
|目标 |![](/comparison/net/images/how-to-compare-pdf-2.png)|
|结果 |![](/comparison/net/images/how-to-compare-pdf-3.png)|

比较两个 PDF 文件的代码示例：

```csharp
string sourcePath = @"source.pdf"; // NOTE: Path to the source pdf document 
string targetPath = @"target.pdf"; // NOTE: Path to the target pdf document 
string resultPath = @"result.pdf"; // NOTE: Path to the result pdf document       

            

using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
}
```

结果，我们得到一个带有突出显示更改的 PDF 文件，其中删除的元素用字体<font color="red">**red**</font>标记，添加的 – 用<font color="blue">**blue**</font>标记，修改的 – 用<font color="yellow">**green**</font>标记。

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

