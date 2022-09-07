---
id: groupdocs-comparsion-for-net-17-3-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-3-0-release-notes
title: ".NET 17.3.0 发行说明的 GroupDocs.Comparsion"
weight: 9
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 17.3.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 3 个新功能、4 个改进和 1 个修复。最值得注意的是：

* 添加通过Comparison.Imaging比较DICOM文件的能力
* 简化和改进了所有支持格式的公共 API
* 为GroupDocs.Comparison.PDF引入合并单元格表格的吸收过程
* 修复了 GroupDocs.Comparison.PDF 的比较填充表

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-1156 |通过比较添加比较 DICOM 文档的能力。成像 |新功能 |
|比较网-1163 |应用/放弃 DICOM 格式的更改 |新功能 |
| OMPARISONNET-1165 |将摘要页面添加到图像流 |新功能 |
|比较网-778 |实现合并单元格表格的流程吸收 |改进 |
|比较网-1148 |改进的公共 API |改进 |
|比较网-1161 |添加在 Imaging.Tests 中比较结果和原始文件的功能 |改进 |
|比较网-1157 |在单元格、单词、幻灯片和 PDF 中打开文档时添加密码错误的本地化例外 |改进 |
|比较网-1160 | PDF 比较 - 带有表格和页脚行的 PDF 文件生成意外输出 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison 中为 .NET 17.3.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

### 默认许可

1\。创建许可证对象并使用方法 SetLicense() 将许可证或许可证流的路径作为参数

```csharp
License license = new License();
license.SetLicense("path to license");

//or
License license = new License();
license.SetLicense("license stream");
```

### 计量许可

2\。创建计量对象并使用方法 SetMeteredKey()

```csharp
// Set metered key
Metered metered = new Metered();
metered.SetMeteredKey("****", "****");
```

要检查当前消耗量，请使用 GetConsumptionQuantity() 方法

```csharp
// Get consumption quantity from metered
decimal amountBefor = Metered.GetConsumptionQuantity();
// Call comparison
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";
Comparer comparer = new Comparer();
comparer.Compare(sourcePath, targetPath, new ComparisonSettings());
comparer.Compare(sourcePath, targetPath, new ComparisonSettings());
// Get consumption quantity from metered after several calls of comparison
decimal amountAfter = Metered.GetConsumptionQuantity();
```

### 比较文件中的两个文档：

```csharp
string source = "source.docx";
string target = "target.docx";
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, target, new ComparisonSettings());
```

### 比较流中的两个文档：

```csharp
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
Stream target = Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx");

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, target, new ComparisonSettings());
Compare two documents with passwords from files:
string source = "source.docx";
string target = "target.docx";
string sourcePassword = "password";
string targetPassword = "password";
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, target, targetPassword, new ComparisonSettings());
Compare two documents with passwords from streams:
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
Stream target = Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx");

string sourcePassword = "password";
string targetPassword = "password";

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, target, targetPassword, new ComparisonSettings());
```

