---
id: groupdocs-comparison-for-net-20-2-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-2-release-notes
title: "GroupDocs.Comparison for .NET 20.2 发行说明"
weight: 19
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 20.2 的发行说明{{< /alert >}}

## 主要特点

在 .NET 20.2 的 GroupDocs.Comparison 版本的更改列表下方：

* 增加了比较最流行的脚本和编程语言文件的能力
* 实现了比较两个以上电子表格文档的能力
* 实现了比较两个以上 Note 文档的能力
* 包括所有支持的文件 fromats
* 改进 PDF 更改坐标的计算
* 修复了演示文稿（幻灯片）文档的元素移动变化检测
    










|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2188 |实现 Groovy 文件比较 |特色 |
|比较网-2187 |实现 JSON 文件比较 |特色 |
|比较网-2186 |实现比较 ActionScipt 文件 |特色 |
|比较网-2185 |实现 Perl 文件比较 |特色 |
|比较网-2184 |实现比较目标 C\\C++ 文件 |特色 |
|比较网-2180 |实现比较 Ruby 文件 |特色 |
|比较网-2179 |实现 Shell\\batch 脚本、Log、Diff、Config、LESS 文件比较 |特色 |
|比较网-2178 |实现比较PHP文件|特色 |
|比较网-2177 |实现比较 SQL 文件 |特色 |
|比较网-2176 |实现比较基于 C 的文件 |特色 |
|比较网-2175 |实现比较 Scala 文件 |特色 |
|比较网-2174 |实现比较 Javascript 文件 |特色 |
|比较网-2173 |实现比较汇编文件 |特色 |
|比较网-2172 |实现比较 Python 文件 |特色 |
|比较网-2171 |实现比较java文件|特色 |
|比较网-2169 |实现比较 CSharp 文件 |特色 |
|比较网-2165 |为单元实现多比较器 |特色 |
|比较网-2103 |为 Note | 实现多比较器特色 |
|比较网-2183 |改进PDF更改坐标的计算|改进 |
|比较网-2168 |更新 GetSupportedFileTypes 方法，使其包含文档中所有支持的格式 |改进 |
|比较网-2181 |比较PPT/PPTX文档与元素移动变化检测|错误 |
|比较网-2097 | PDF 比较，输出文档标题失真 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison 中为 .NET 20.1 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1. **比较两个以上的 Note 文档**
    









从版本 20.2 GroupDocs.Comparison 开始，允许比较两个以上的 OneNote 文档（用于创建和交换笔记的 Microsoft OneNote 文档）此功能适用于 .one 文件。
    









以下代码片段显示了如何执行此操作，这里我们比较了 3 个 Note 文件
    









```csharp
string sourcePath = "source.one";
字符串 target1Path = "target1.one";
字符串 target2Path = "target2.one";
字符串 target3Path = "target3.one";
string resultPath = "result.one";
 
比较器比较器=新比较器（源路径）；
comparer.Add(target1Path);
比较器.Add(target2Path);
比较器.Add(target3Path);
 
comparer.Compare(File.Create(resultPath), new SaveOptions(), new CompareOptions());
```
    









2. **比较两个以上的电子表格文档**
    









从 20.2 版开始，GroupDocs.Comparison 允许比较两个以上的 SpreadSheed 文档（包括 Microsoft 创建的用于 Microsoft Excel 的电子表格文件格式，以及 ODS - OpenOffice/StarOffice 使用的电子表格文件格式）。
    









此功能适用于“xls”、“xlsx”、“xlsb”、“csv”、“ods”、“xls2003”、“xlsm”文件
    









以下代码片段显示了如何执行此操作，这里我们比较了 3 个 Excell 文件
    









```csharp
字符串 sourcePath = "source.xlsx";
字符串 target1Path = "target1.xlsx";
字符串 target2Path = "target2.xlsx";
字符串 target3Path = "target3.xlsx";
string resultPath = "result.pdf";
 
比较器比较器=新比较器（源路径）；
comparer.Add(target1Path);
比较器.Add(target2Path);
比较器.Add(target3Path);
 
comparer.Compare(File.Create(resultPath), new SaveOptions(), new CompareOptions());
```

