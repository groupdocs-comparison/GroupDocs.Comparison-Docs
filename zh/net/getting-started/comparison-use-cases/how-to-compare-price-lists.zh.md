---
id：如何比较价格列表
url: comparison/net/how-to-compare-price-lists
title: "如何比较价目表"
weight: 5
description: "本文介绍如何使用 Microsoft Excel 功能和 GroupDocs.Comparison API for .NET 比较文件。您还将学习如何比较两个或多个表并获取文件的差异"
keywords: "比较 Excel 文件，比较电子表格，如何比较 Excel 文件"
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
名称：如何在 .NET 中比较价目表
    description: "如何在 .NET 中逐步比较价目表"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加目标文件的路径。
- 名称：比较价格表
text: 调用对象的 Compare 方法并放入生成的文件路径参数。
---
假设您有两个要比较的 Excel 工作簿，或者可能是同一工作簿的两个版本。或者，也许您想找出潜在的问题，例如手动输入（而不是计算）的总数，或损坏的公式。如果您有 Microsoft Office Professional Plus 2013，则可以使用 Microsoft 电子表格比较运行它发现的差异和问题的报告。

{{< alert style="info" >}}重要提示：电子表格比较仅适用于 Office Professional Plus 2013 或 Office 365 ProPlus。{{< /alert >}}

要将两个 Excel 工作簿与 Office Professional Plus 2013 进行比较，您应该：

* 单击 **主页 > 比较文件**。出现比较文件对话框。
![](/comparison/net/images/how-to-compare-price-lists.jpg)
* 单击 **Compare** 框旁边的蓝色文件夹图标以浏览到工作簿早期版本的位置。
      







![](/comparison/net/images/how-to-compare-price-lists_1.jpg)
      







    



* 单击 **To** 框旁边的绿色文件夹图标以浏览到要与早期版本进行比较的工作簿的位置，然后单击 **OK**。
* 在左窗格中，通过选中或取消选中选项来选择要在工作簿比较结果中看到的选项，例如 **Formulas**、**Macros** 或 **Cell Format**。或者，只需**全选**。
      







![](/comparison/net/images/how-to-compare-price-lists_2.png)
* 单击 **OK** 运行比较。

## 如何使用 GroupDocs.Comparison 比较 Excel 文件

Microsoft Office Professional Plus 2013 提供电子表格比较，但 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供了以编程方式比较工作表的可能性，您不仅可以比较两个不同的文件，但同时有几个。假设有 XLSX 格式或其他 [支持的文件格式]({{< ref "comparison/net/入门/支持的文档格式.md" >}})。其他，您需要比较它们的内容。下面是一个如何使用 GroupDocs.Comparsion API 比较三个价目表的示例。通常您只需按照以下步骤操作：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用 [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法并指定目标文档路径或流。对每个目标文档重复此步骤；
* 调用 [比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法。
      







    




| |文件 |
| --- | --- |
| 2018年价目表| ![](比较/网络/图像/how-to-compare-price-lists_3.png) |
| 2019年价目表| ![](比较/网络/图像/how-to-compare-price-lists_4.png) |
| 2020年价目表| ![](比较/net/images/how-to-compare-price-lists_5.png) |

这是用于比较三个价目表的代码。

```csharp
string sourceDocumentPath = @"Source Price List.xlsx"; // NOTE: Put here actual path to source document
string targetOneDocumentPath = @"Target Price List 1.xlsx"; // NOTE: Put here actual path to target one document
string targetTwoDocumentPath = @"Target Price List 2.xlsx"; // NOTE: Put here actual path to target two document
string outputPath = @"Result Price List.xlsx"; // NOTE: Put here actual path to result document
             







using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetOneDocumentPath);
     comparer.Add(targetTwoDocumentPath);
     comparer.Compare(outputPath);
}
```

结果，我们得到一个 XSLX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font>


|结果价目表 |
| --- |
| ![](比较/网络/图像/how-to-compare-price-lists_6.png) |

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

