---
id: groupdocs-comparison-for-net-3-1-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-1-0-release-notes
title: "GroupDocs.Comparison For .NET 3.1.0 发行说明"
weight: 8
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 3.1.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 13 项改进和修复。最值得注意的是：

* 引入了对加密文件的支持
* 引入了文件类型的自动检测
* 引入了改进的单词比较性能高达 8 倍
* 为文本和表格引入改进的单词比较质量
* 为文本、表格和图像引入改进的 PDF 比较质量

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-700 |扩展 PDF 比较功能以获取更改或确认文档是否相同 |新功能 |
|比较网-663 |添加对 Word、单元格、幻灯片和 PDF 的密码保护文件的支持 |新功能 |
|比较网-605 |从 Stream 添加对文件类型检测的支持 |新功能 |
|比较网-638 |如果幻灯片的内容是唯一的，则应将幻灯片标记为已插入或已删除 |改进 |
|比较网-722 |更新比较根据 Words 的性能改进而有所不同。 |改进 |
|比较网-684 |更改 CommonAligner 中的差异以提高比较性能 |改进 |
|比较网-664 |使用 target-doc 和插入从 source-doc 中删除的组件实现具有相同对齐和形成结果文档的比较词 |改进 |
|比较网-588 |为异常处理实现本地化 |改进 |
|比较网-683 |修改比较设置以支持文化信息 |改进 |
|比较网-682 |在文档构造函数中添加流位置的重置 |改进 |
|比较网-681 |合并比较结果后为结果文档添加检查器 |改进 |
|比较网-719 |为 DOCX/PDF 创建空白页和额外空格的比较结果 |错误 |
|比较网-697 |客户端响应 - 比较附加文档需要 8-13 分钟，具体取决于硬件，然后以 0 字节结果结束。 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 3.1.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

### 带有自动文件格式检测的常用操作
#### 比较字符串中的文档

注意：假设 source.docx、source.xlsx、source.pdf、source.pptx、source.txt 中的文件与执行程序集位于同一文件夹中。

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath);
```

#### 将字符串中的文档与结果路径进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath);
```

#### 将字符串中的文档与结果路径和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, FileType.Docx);
```

#### 将字符串中的文档与结果路径和设置进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, new WordsComparisonSettings());
```

#### 将字符串中的文档与结果路径和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, new WordsComparisonSettings(), FileType.Docx);
```

#### 将字符串中的文档与结果路径和类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words);
```

#### 将字符串中的文档与结果路径类型和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, FileType.Docx);
```

#### 将字符串中的文档与设置进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, new WordsComparisonSettings());
```

#### 将字符串中的文档与设置和类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### 将字符串中的文档与类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, ComparisonType.Words);
```

#### 将字符串中的文档与结果路径设置和类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### 将字符串中的文档与结果路径设置类型和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, new WordsComparisonSettings(), FileType.Docx);
```

### 加密文件的常用操作
#### 比较字符串中的加密文档

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword);
```

#### 将字符串中的加密文档与结果路径进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath);
```

#### 将字符串中的加密文档与结果路径和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, FileType.Docx);
```

#### 将字符串中的加密文档与结果路径和设置进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, new WordsComparisonSettings());
```

#### 将字符串中的加密文档与结果路径设置和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, new WordsComparisonSettings(), FileType.Docx);
```

#### 将字符串中的加密文档与结果路径和类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words);
```

#### 将字符串中的加密文档与结果路径类型和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, FileType.Docx);
```

#### 将字符串中的加密文档与设置进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, new WordsComparisonSettings());
```

#### 将字符串中的加密文档与设置和类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, ComparisonType.Words, new WordsComparisonSettings());
```

#### 比较字符串中的加密文档和类型

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, ComparisonType.Words);
```

#### 将字符串中的加密文档与结果路径设置和类型进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### 将字符串中的加密文档与结果路径设置类型和目标扩展名进行比较

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, new WordsComparisonSettings(), FileType.Docx);
```

