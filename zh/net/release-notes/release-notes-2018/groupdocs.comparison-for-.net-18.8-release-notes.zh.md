---
id: groupdocs-comparison-for-net-18-8-release-notes
url: comparison/net/groupdocs-comparison-for-net-18-8-release-notes
title: "GroupDocs.Comparison for .NET 18.8 发行说明"
weight: 4
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 18.8 的发行说明{{< /alert >}}

## 主要特点

在 .NET 18.8 的 GroupDocs.Comparison 版本中最显着的变化列表下方：

* 为比较格式（Html、幻灯片、注释、Pdf、单词）的数量实现了文本突出显示的新设置
* 改进 PDF 映射器
* 改进对不同格式与图像比较的支持
* 修复特定 PDF 文档比较问题的数量

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-1637 |实现文本高亮比较的新设置。Html |新功能 |
|比较网-1636 |为文本突出显示比较实施新设置。幻灯片 |新功能 |
|比较网-1635 |为文本高亮比较实现新设置。新功能 |
|比较网-1634 |实现文本高亮比较的新设置。PDF |新功能 |
|比较网-1633 |为文本突出显示比较实施新设置。单词 |新功能 |
|比较网-1644 |改进 PDF 映射器 |改进 |
|比较网-1640 |改进对不同格式与图像比较的支持 |改进 |
|比较网-1620 |带图表的 PDF 输出不如预期 |错误 |
|比较网-1619 |带图像的 PDF 输出不如预期 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 18.8 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1.插入，删除和样式更改项目样式设置用于设置字体颜色，突出显示颜色，样式（粗体，斜体，下划线，删除线）和结果文档中标记更改的标签：
    



```csharp
settings.InsertedItemsStyle.FontColor = System.Drawing.Color.Brown;
settings.InsertedItemsStyle.HighlightColor = System.Drawing.Color.Red;
settings.InsertedItemsStyle.BeginSeparatorString = "<inserted> ";
settings.InsertedItemsStyle.EndSeparatorString = "</inserted> ";
```
    



```csharp
settings.DeletedItemsStyle.FontColor = System.Drawing.Color.Aquamarine;
settings.DeletedItemsStyle.HighlightColor = System.Drawing.Color.Blue;
settings.DeletedItemsStyle.BeginSeparatorString = "<deleted> ";
settings.DeletedItemsStyle.EndSeparatorString = "</deleted> ";
```
    



```csharp
settings.StyleChangedItemsStyle.FontColor = System.Drawing.Color.Aqua;
settings.StyleChangedItemsStyle.HighlightColor = System.Drawing.Color.Green;
settings.StyleChangedItemsStyle.BeginSeparatorString = " <style>";
settings.StyleChangedItemsStyle.EndSeparatorString = "</style> ";
```

