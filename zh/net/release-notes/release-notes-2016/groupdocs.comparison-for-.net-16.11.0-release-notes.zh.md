---
id: groupdocs-comparison-for-net-16-11-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-16-11-0-release-notes
title: "GroupDocs.Comparison For .NET 16.11.0 发行说明"
weight: 2
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 16.11.0 的发行说明{{< /alert >}}

## 主要特点

此每月定期发布中有 10 项改进和修复。最值得注意的是：

* 在Comparison.Slides中引入了对新组件的支持：带有VBA脚本的对象，样式变化检测，相框检测
* 修复了带有嵌套段落的比较.Words 的问题
* 修复了带有表结构的比较.Cells 的问题
* 改进了带有表格的情况下的 ComparisonParagraphAbsorber

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-1009 | GroupDocs.Comparison.Slides：添加支持将对象与 VBA 脚本进行比较 |新功能 |
|比较网-1013 | GroupDocs.Comparison.Slides：添加对样式更改检测的支持 |新功能 |
|比较网-1026 | GroupDocs.Comparison.Slides：添加对相框检测的支持 |新功能 |
|比较网-1015 | GroupDocs.Comparison.Slides：提高比较性能 |改进 |
|比较网-1012 | GroupDocs.Comparison.Slides：扩展引擎以支持所有类型的图像 |改进 |
|比较网-957 |跨格式引擎：所有格式不同结果的表格对比案例 |改进 |
|比较网-970 | GroupDocs.Comparison.PDF：向新核心添加对新组件的支持 |改进 |
|比较网-966 | GroupDocs.Comparison.Cells：如果行的内容是唯一的，则应将行标记为已插入或已删除 |错误 |
|比较网-967 | GroupDocs.Comparison.Cells：结果表结构不符合主表结构 |错误 |
|比较网-946 | GroupDocs.Comparison.Words：例外：newChild 是从与创建此节点的文档不同的文档创建的。 |错误 |

  


## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 16.11.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

没有任何

