---
id: groupdocs-comparison-for-net-21-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-21-3-release-notes
title: "GroupDocs.Comparison for .NET 21.3 发行说明"
weight: 18
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 21.3 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 21.3 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 实现了对空行的替换，而不是在结果文档中显示 Word 格式段落的更改
* 改进了 Cells 格式的图像比较
* 改进了以单元格格式创建图表
* 改进了 Word 格式样式更改的组件显示
* 修复了比较文本文档时关闭流的问题

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2560 | Word 文档比较输出不如预期 |错误 |
|比较网-2597 | Excel 文件比较问题 |错误 |
|比较网-2624 |创建图表不完整 |错误 |
|比较网-2626 |无法获取行差异以及如何在输出中显示样式更改详细信息 |错误 |
|比较网-2627 |防止比较文本文件流为空时的情况|错误 |


## 公共 API 和向后不兼容的更改

1.要查看样式变化的组件信息显示的变化，可以使用以下代码：

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
 
    CompareOptions options = new CompareOptions();
    options.DetectStyleChanges = true;
    options.DetalisationLevel = DetalisationLevel.High;
      
    comparer.Compare(resultPath, options);
}
```

2. 可以在 [此处](https://docs.groupdocs.com/comparison/net/show-gap-lines/) 找到有关获取将更改的内容替换为空行的结果文档的更多信息。

