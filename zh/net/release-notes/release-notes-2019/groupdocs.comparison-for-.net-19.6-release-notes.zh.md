---
id: groupdocs-comparison-for-net-19-6-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-6-release-notes
title: "GroupDocs.Comparison for .NET 19.6 发行说明"
weight: 6
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 19.6 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 19.6 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 修复部分移动到新页面时的问题
* 修正 API 参考中的错别字
* 实施灵敏度选项
* 实现 Words 文档更改的计算坐标
* 修复了生成的 PDF 文档中内容重叠的问题
* 修复部分移动到新页面时的问题
* 使用最新版本的 Metered 集成基于信用的计费系统

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-1846 |计算单词更改的正确坐标 |改进 |
|比较网-1929 |实施灵敏度选项 |改进 |
|比较网-1901 |将最新版本的Dynabic.Metered集成到产品中|改进 |
|比较网-1815 |忽略注释（主要用于代码文件）|改进 |
|比较网-1816 |忽略空格 - 全部、前导、尾随、数量变化 |改进 |
|比较网-1813 |忽略大小写 - 忽略字符大小写差异 |改进 |
|比较网-1927 |合并文档，然后文档比较失败 |错误 |
|比较网-1891 |文本与其他文本或图像重叠 |错误 |
|比较网-1930 | PDF 结果文件中的重复图像 |错误 |
|比较网-1772 | PDF 比较有重叠和损坏的输出 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 19.6 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1. ### **设置比较详细级别**
    












1.如果我们设置*DetailLevel = Middle*，如果元素被添加\\删除\\修改，我们不会在某些文档格式（Words，Slides，Cells）中添加评论
        


















          




















        


















2. 如果我们设置*DetailLevel = Middle*，我们不会进行不区分大小写的比较。即 M = m。
        


















          




















        


















3.增加了灵敏度属性。当元素被检测为删除或插入时，此选项以百分比定义限制。
        


















    












最小值 - 0，两个比较对象的任何长度的序列都不会发生比较过程。
    












默认值 - 当删除或插入的元素相对于所有元素的百分比不超过 75% 时，发生 75 比较
    












最大值 - 100。比较发生在两个比较对象的公共子序列的任意长度。
    












**例如，我们有两个词**
    












```csharp
1）一个来源
     













2)两个目标
```
    












这两个词的公共子序列非常小。因此，当以 70% 的准确率比较它们时，不考虑它，我们得到一个完全删除和插入的词：
    












```csharp
(两个目标)[一个来源]
```
    












但是在 100% 的准确度下，我们考虑了这个子序列，尽管它由两个字母组成
    












```csharp
(tw)o[n](Targ)e[来源](t)
```
    












代码片段：
    












```csharp
字符串源 = "source.txt";
字符串目标 = "target.txt";
比较设置设置 = 新的比较设置（）；
settings.SensitivityOfComparison = 100;
比较器比较 = 新的比较器（）；
ICompareResult 结果 = compare.Compare(source, target, settings);
```

