---
id: groupdocs-comparison-for-net-18-7-release-notes
url: comparison/net/groupdocs-comparison-for-net-18-7-release-notes
title: "GroupDocs.Comparison for .NET 18.7 发行说明"
weight: 6
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 18.7 的发行说明{{< /alert >}}

## 主要特点

在 .NET 18.7 的 GroupDocs.Annotation 版本中最显着的变化列表下方：

* 添加了图表组形状的比较
* 实现了在没有图表大师的情况下添加形状
* 改进了图表的段落比较器
* 改进的 Html 样式表比较器
* 修复了在某些特定的 PDF 文档比较情况下样式更改未突出显示的问题

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-1605 |为图表实现组形状 |新功能 |
|比较网-1587 |实现比较不同的格式作为图像 |新功能 |
|比较网-1607 |在图中实现 GluedShapes |新功能 |
|比较网-1608 |改进 Html 的样式表比较器 |改进 |
|比较网-1606 |添加没有Diagram's Master的形状|改进 |
|比较网-1619 |带图像的 PDF 输出不如预期 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison 中为 .NET 18.7 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1.使用“DiagramMasterSetting”管理Comparison.Diagram的master。
    





```csharp
MasterPath = string;// - 用户设置自定义主路径
UseSourceMaster = bool;// - true - 一起使用源和目标中的 master，false - 使用默认或自定义 master
```
    





例子：
    





* UseSourceMaster – false without MasterPath – 使用默认主路径
* UseSourceMaster - MasterPath 为 false - 使用自定义主路径
* UseSourceMaster - true - 一起使用源文档和目标文档中的 master
    





在比较不同格式的图像时，使用“OriginalSize”设置文档大小，该大小将在文档转换为图片时使用。
    





```csharp
OriginalSize.Width;// int
OriginalSize.Heigth;// int;
```

