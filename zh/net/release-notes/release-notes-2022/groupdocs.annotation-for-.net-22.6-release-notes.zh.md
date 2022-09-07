---
id: groupdocs-comparison-for-net-22-6-release-notes
url: comparison/net/groupdocs-comparison-for-net-22-6-release-notes
title: "GroupDocs.Comparison for .NET 22.6 发行说明"
weight: 17
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 22.6 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 22.6 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 修复了从 SVG 转换为图像后留下不必要的 PNG 文件的问题
* 更改的替代标题不计为幻灯片中的样式更改
* 添加了对 .NET Framework 4.0、.NET Standard 2.1 和 .NET 6.0 的支持


## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-3056 |从 SVG 转换为图像后留下不必要的 PNG 文件 |错误 |
|比较网-3053 |更改的替代标题不计为幻灯片中的 StyleChange |错误 |


## 公共 API 和向后不兼容的更改
从此版本开始支持 .NET Framework 4.0，为 GroupDocs.Comparison 添加了 .NET Standard 2.1 和 .NET 6.0。代替了对 .NET Framework 2.0 的支持。

Current release has a known issue: Comparing of PDF does not work when use libary in .NET 6.0 project. This will be hotfixed ASAP
