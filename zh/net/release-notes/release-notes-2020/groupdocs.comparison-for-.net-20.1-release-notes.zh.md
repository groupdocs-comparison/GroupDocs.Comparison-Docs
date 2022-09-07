---
id: groupdocs-comparison-for-net-20-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-1-release-notes
title: "GroupDocs.Comparison for .NET 20.1 发行说明"
weight: 20
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 20.1 的发行说明{{< /alert >}}{{< alert style="danger" >}}在此版本中，我们将删除 GroupDocs.Comparison 的旧版 API。所以从版本 20.1 GroupDocs.Comparison.Legacy 开始。不再存在{{< /alert >}}

## 主要特点

以下是 .NET 20.1 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 移除旧版 API
* 实现了比较两个以上的 PDF 文档
* 实施比较超过 2 个图表文件
* 改进 PDF 中的表格比较
* 修复了比较两个相同的 Word 文档时的错误

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2104 |为图表实现多比较器 |特色 |
|比较网-2105 |为 PDF 实现多比较器 |特色 |
|比较网-2133 |改进 PDF 中的表格比较 |改进 |
|比较网-2148 |比较两个相同的 Word 文档时出错 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison 中为 .NET 20.1 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

* **图表文档的多重比较**
您可以比较多个目标图 (vsdx) 文档
    




```csharp
字符串 sourcePath = "source.vsdx";
字符串 target1Path = "target1.vsdx";
字符串 target2Path = "target2.vsdx";
字符串 target3Path = "target3.vsdx";
字符串 resultPath = "result.vsdx";
     








比较器比较器=新比较器（源路径）；
comparer.Add(target1Path);
比较器.Add(target2Path);
比较器.Add(target3Path);
     








comparer.Compare(File.Create(resultPath), new SaveOptions(), new CompareOptions());
```
    




* **PDF 文档的多重比较**
    




您可以比较多个目标 PDF 文档
    




```csharp
string sourcePath = "source.pdf";
字符串 target1Path = "target1.pdf";
字符串 target2Path = "target2.pdf";
字符串 target3Path = "target3.pdf";
string resultPath = "result.pdf";
     








比较器比较器=新比较器（源路径）；
comparer.Add(target1Path);
比较器.Add(target2Path);
比较器.Add(target3Path);
     








comparer.Compare(File.Create(resultPath), new SaveOptions(), new CompareOptions());
```

