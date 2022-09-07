---
id: 调整-比较-敏感度
url: comparison/net/adjusting-comparison-sensitivity
title: "调整比较灵敏度"
weight: 2
description: "详细了解文档比较敏感度以及在使用 GroupDocs.Comparison for .NET 比较文档时如何调整它以实现最佳性能和准确性。"
keywords: "比较敏感度、比较详细程度、比较文件、文件比较"
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
名称：如何在 .NET 中调整比较敏感度
      description: "了解如何逐步调整 .NET 中的比较敏感度"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：指定必要的设置
文本：创建一个选项对象并指定 SensitivityOfComparison。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许调整比较敏感度，以在文档比较速度和准确性之间取得必要的平衡。可能的比较敏感度值范围是从 **0** 到 **100**。

* **最小值** - 最小值为 **0**。将灵敏度设置为最小值可提供最快的比较速度，但可能会产生最差的比较质量。
如果两个比较词中至少有一个共同字母，则这些词将不会被视为完全插入和删除
* **默认值** - 默认值为 **75**。当删除或插入的元素相对于所有元素的百分比不超过 75% 时，会进行比较。
* **最大值** - 最大值为 **100**。比较发生在两个比较对象的公共子序列的任意长度。此选项提供最佳质量，但比较速度最慢。

为了更好地理解比较算法的工作原理，假设我们有两个字符串：

|弦乐 |
| --- |
| `1`。是我们的股权诗` |
| `2`。杰克是一只快乐的小牛` |

我们将使用<font color="red">**red**</font>突出显示已删除的文本部分，并使用<font color="blue">**blue**</font>颜色突出显示插入的部分。因此，这些字符串有两个常见的子序列：“**is**”单词和 4 个空格符号。
**
常见的子序列是-“**is**”，长度为6个符号（其中有4个空格符号）。
Length of inserted sub-sequence is 13 symbols - **Jackagladcalf**
Removed sub-sequence length is 17 symbols - **Itourequitypoetry**
让我们计算删除和插入符号的百分比：(17 + 13) / (17 + 13 + 6) * 100 = 83%

*案例 1.* 如果 **SensitivityOfComparison = 80%** 这两个字符串的比较将产生下一个结果：
**杰克是一只快乐的小牛这是我们的股票诗歌**

因为计算出的删除和插入符号的百分比等于 **83%** 并且它大于 **SensitivityOfComparison** 等于 **80%** 的值，所以这个公共子序列将不被考虑在内。
第一个字符串被认为完全删除，第二个字符串被认为完全插入。对于任何小于 **83%** 的计算百分比，将产生相同的结果。

*案例 2.* 如果 **SensitivityOfComparison = 85%**，这两个字符串的比较将产生下一个结果：
** JackIt 是我们的快乐小牛诗歌**

找到了共同的子序列，因为 **85% > 83%**。对于任何大于 **83%** 的计算百分比，将产生相同的结果。

  

以下是比较具有特定比较敏感度的文档的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 使用所需的 [SensitivityOfComparison](https://apireference.groupdocs.com/net/comparison/groupdocs) 实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象.comparison.options/compareoptions/properties/sensitivityofcomparison) 值；
* 调用[Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1)方法并通过[CompareOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/compareoptions) 对象到方法。

以下代码片段演示了如何比较具有特定敏感性的文档：

## 比较具有灵敏度调整的文档

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions options = new CompareOptions() { SensitivityOfComparison = 100 };
	comparer.Compare("result.docx", options);
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

You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
