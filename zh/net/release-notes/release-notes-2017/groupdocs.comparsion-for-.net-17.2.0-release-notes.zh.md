---
id: groupdocs-comparsion-for-net-17-2-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-2-0-release-notes
title: ".NET 17.2.0 发行说明的 GroupDocs.Comparsion"
weight: 10
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 17.2.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 8 个新功能、2 个改进和 5 个修复。最值得注意的是：

* 添加对 Imaging DjVu 的支持
*在Comparison.PDF中引入了对水印中文本字体的支持
* 引入了对图像、图表、智能艺术、VBA 控件、Comparison.Cells 中的公式的支持
* 提高 GroupDocs.Comparison.PDF 比较效率

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-1123 |集成计量许可 |新功能 |
|比较网-1122 | GroupDocs.Comparison.PDF：添加支持比较水印中的文本字体|新功能 |
|比较网-1068 | GroupDocs.Comparison.Cells：添加对公式的支持 |新功能 |
|比较网-1065 | GroupDocs.Comparison.Cells：添加对图像的支持 |新功能 |
|比较网-1070 | GroupDocs.Comparison.Cells：添加对图表的支持 |新功能 |
|比较网-1066 | GroupDocs.Comparison.Cells：添加对 Smart Art 的支持新功能 |
|比较网-1067 | GroupDocs.Comparison.Cells：添加对 VBA 控件的支持 |新功能 |
|比较网-1108 |添加对mobi格式的支持|新功能 |
|比较网-1112 |添加对 Imaging DjVu 的支持 |改进 |
|比较网-1080 | GroupDocs.Comparison.PDF：改进段落的比较更改检测 |改进 |
|比较网-1129 | GroupDocs.Comparison.PDF：修复某些行被删除或插入不应该出现的错误 |错误 |
|比较网-1130 | GroupDocs.Comparison.PDF：当段落的第一行没有缩进但应该有 | 时修复错误错误 |
|比较网-1131 | GroupDocs.Comparison.PDF：修复组件更改其页面但不更改其位置但应该是的错误 |错误 |
|比较网-1128 | GroupDocs.Comparison.PDF：修复段落第一行用作非段落行时的错误 |错误 |
|比较网-1132 | GroupDocs.Comparison.PDF：修复表格中的文本在简单段落中使用两次时的错误 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison 中为 .NET 17.2.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

### 计量许可



```csharp
// Create new instance of GroupDocs.Comparison.Metered classs
GroupDocs.Comparison.Metered metered = new GroupDocs.Comparison.Metered();
 
// Set public and private key to metered instance
metered.SetMeteredKey("***", "***");
 
// Get metered value before usage of the comparison
decimal amountBefore = GroupDocs.Comparison.Metered.GetConsumptionQuantity();
 
Console.WriteLine("Amount consumed  before: " + amountBefore);
 
// compare files
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";
 
GroupDocs.Comparison comparison = new GroupDocs.Comparison();
Stream result = comparison.Compare(sourcePath, targetPath);
 
// Get metered value after usage of the comparison
decimal amountAfter = GroupDocs.Comparison.GetConsumptionQuantity();

Console.WriteLine("Amount consumed  after: " + amountAfter);
```

