---
id: groupdocs-comparison-for-net-21-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-21-1-release-notes
title: "GroupDocs.Comparison for .NET 21.1 发行说明"
weight: 20
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 21.1 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 21.1 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 改进了带有 Pdf 格式边框的元素的显示
* 改进了 Pdf 格式的文本显示
* 增加了Word格式脚注类型的比较
* 为 ChangeInfo 类添加了 SourceText 属性，并改进了 Cells、Words 和 Pdf 格式的 TargetText 属性

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2585 |提高Words文档获取源文本的能力|特色 |
|比较网-2586 |提高PDF文档获取源文本的能力|特色 |
|比较网-2587 |提高 Cells 文档获取源文本的能力 |特色 |
|比较网-2563 |脚注不比较 |改进 |
|比较网-2451 | PDF 中的文本框比较问题 |错误 |
|比较网-2454 |比较PDF文件时部分符号不显示|错误 |


## 公共 API 和向后不兼容的更改

1.脚注类型比较是指样式比较，而且这种变化很难在正文中表现出来。因此，这些变化都是按照文档中的空白行或图片（使用注释）的原则进行标记的。
为了清楚地比较脚注类型，您可以使用以下代码片段：

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions()
	{
		DetectStyleChanges = true,
		DetalisationLevel = DetalisationLevel.High
	};
    comparer.Compare(resultPath, options);
}
```

2. 更新了有关获取源文本和目标文本的文档，可在 [此处](https://docs.groupdocs.com/comparison/net/get-source-and-target-text-from-files/) 找到。

