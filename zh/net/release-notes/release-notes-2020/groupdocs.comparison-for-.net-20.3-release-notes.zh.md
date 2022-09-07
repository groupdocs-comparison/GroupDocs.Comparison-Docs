---
id: groupdocs-comparison-for-net-20-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-3-release-notes
title: "GroupDocs.Comparison for .NET 20.3 发行说明"
weight: 18
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 20.3 的发行说明{{< /alert >}}

## 主要特点

在 .NET 20.3 的 GroupDocs.Comparison 版本的更改列表下方：

* 提高了文本文档多次比较的性能
* 修正在比较源代码文件时创建输出 HTML 文件
* 修复了比较图表文档时的异常
* 修复了将 PDF 与图像 .NET 进行比较时的 System.StackOverflownException

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2214 |提高 TXT MultiComparer 的性能 |改进 |
|比较网-2235 | TextComparerResult 不会为编程语言文件创建 .html 文件 |错误 |
|比较网-2211 |将 PDF 与图像 .NET 进行比较时出现 System.StackOverflownException错误 |
|比较网-2209 |比较两个 vsdx 文件抛出异常 |错误 |
|比较网-2208 |图表文字换行问题 |错误 |

## 公共 API 和向后不兼容的更改

**从 Words 文档中获取目标文本**

从版本 20.3 开始 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许获取 Result 文档中特定更改的目标文本，这适用于 **Word** 文档。

要使用此功能，您应该在 *GetChanges TargetText* 属性中指定

```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetDocumentPath);
     comparer.Compare(outputPath);
     ChangeInfo[] changes = comparer.GetChanges();
     foreach (var change in changes)
     {
         var targetText = change.TargetText;
         Console.WriteLine(targetText);
     }
}
```

