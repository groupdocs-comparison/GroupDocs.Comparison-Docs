---
id: groupdocs-comparison-for-net-19-11-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-11-release-notes
title: "GroupDocs.Comparison for .NET 19.11 发行说明"
weight: 2
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 19.11 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 19.11 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 添加了比较文档页眉/页脚的选项
* 添加了为输出文档指定纸张大小的选项
* 对文本和电子邮件文档实施多重比较
* 修复了发布文档处理程序的问题
* 提高了 PDF 文档比较的准确性
* 修复了单元格中错误结果文件的问题
* 修正了文档预览坐标变化的准确性

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2072 |添加允许设置输出格式（纸张大小）的选项 |特色 |
|比较网-2069 |为电子邮件实施多重比较器 |特色 |
|比较网-2068 |为文本实现多比较器 |特色 |
|比较网-2028 |添加比较选项以切换页眉/页脚比较 |特色 |
|比较网-2094 | API 未发布文件句柄 |错误 |
|比较网-2076 | .NET Standard 2.0 下的兼容性问题 |错误 |
|比较网-2071 |差宽高不正确 |错误 |
|比较网-2070 |错误的单元格结果文件 |错误 |
|比较网-2014 | PDF 文件比较结果的意外变化量| PDF 文件错误 |
|比较网-2012 |比较未经许可的 PDF 文件时出现异常 |错误 |
|比较网-1993 |盒子尺寸和位置不正确 |错误 |
|比较网-1971 |差宽高不正确 |错误 |

公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 19.10 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1. **电子邮件文档的多重比较**
您可以比较多个目标电子邮件 (eml) 文档。
    












```csharp
字符串 sourcePath = "source.eml";
字符串 target1Path = "target1.eml";
字符串 target2Path = "target2.eml";
字符串 target3Path = "target3.eml";
字符串 resultPath = "result.eml";
     




















比较器比较器=新比较器（源路径）；
comparer.Add(target1Path);
比较器.Add(target2Path);
比较器.Add(target3Path);
     




















comparer.Compare(File.Create(resultPath), new SaveOptions(), new CompareOptions());
```
    












2. **文本文档的多重比较**
您可以比较多个目标文本文件。
    












```csharp
string sourcePath = "source.txt";
字符串 target1Path = "target1.txt";
字符串 target2Path = "target2.txt";
字符串 target3Path = "target3.txt";
字符串 resultPath = "result.txt";
     




















比较器比较器=新比较器（源路径）；
comparer.Add(target1Path);
比较器.Add(target2Path);
比较器.Add(target3Path);
     




















comparer.Compare(File.Create(resultPath), new SaveOptions(), new CompareOptions());
```
    












3. **允许设置文档输出格式（纸张大小）的选项**
    












添加了调整结果文档纸张大小的新功能。
    












一个新的 *PaperSize* 属性被添加到 CompareOptions。用户可以通过为此属性分配 *PaperSize* 枚举中的值来设置输出文档的纸张大小。
    












如果用户没有设置 *PaperSize*，它有一个默认值 - 结果文档中的纸张大小与目标中的相同。
    












```csharp
字符串 sourcePath = "source.docx";
字符串 targetPath = "target.docx";
字符串 resultPath = "result.docx";
     




















CompareOptions compareOptions = new CompareOptions();
compareOptions.PaperSize = PaperSize.A4;
     




















比较器比较器=新比较器（源路径）；
比较器.Add(targetPath);
comparer.Compare(File.Create(resultPath), new SaveOptions(), compareOptions);
```
    












4. **切换页眉/页脚比较的选项**
    












添加了一个新选项来比较文档的页眉和页脚，您可以使用 *CompareOptions* 中的 *HeaderFootersComparison* 属性进行设置
    












默认情况下，此属性为 true。要忽略页眉和页脚的比较，应将其设置为 false。
    












```csharp
string sourcePath = "source.pdf";
字符串 targetPath = "target.pdf";
string resultPath = "source.pdf";
     




















//不比较页眉/页脚
CompareOptions compareOptions = new CompareOptions();
compareOptions.HeaderFootersComparison = false;
     




















比较器比较器=新比较器（源路径）；
比较器.Add(targetPath);
comparer.Compare(File.Create(resultPath), new SaveOptions(), compareOptions);
```

