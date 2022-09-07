---
id: groupdocs-comparison-for-net-3-5-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-5-0-release-notes
title: "GroupDocs.Comparison For .NET 3.5.0 发行说明"
weight: 4
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 3.5.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 9 项改进和修复。最值得注意的是：

* 为Comparison.Words 引入多重比较支持
* 为 Compare.Words 的多重比较引入了应用/丢弃支持
* 为 Compare.PDF 引入页眉和页脚文本吸收器
* 改进的比较段落吸收器.PDF

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-877 | GroupDocs.Comparison.Words：添加选项以从每个文档的结果列表中组合多个结果列表 |新功能 |
|比较网-876 | GroupDocs.Comparison.Words：支持将多个文档与跟踪更改进行比较 |新功能 |
|比较网-909 | GroupDocs.Comparison.PDF：添加对Page Footer吸收的支持|新功能 |
|比较网-910 | GroupDocs.Comparison.PDF：增加对Page Header吸收的支持 |新功能 |
|比较网-880 | GroupDocs.Comparison.Words：为多个结果更改列表添加应用/放弃更改支持 |新功能 |
|比较网-880 | GroupDocs.Comparison.Words：文档处理性能改进 |改进 |
|比较网-886 | GroupDocs.Comparison.PDF：通过检查文本片段是否包含在不同的父对象中来将文本分成段落|改进 |
|比较网-904 | GroupDocs.Comparison.PDF：改进了纯文本案例的比较段落吸收器|改进 |
|比较网-873 | GroupDocs.Comparison.PDF：改进了对所有 Adobe Acrobat 格式的文本比较支持 |改进 |

  


## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本节列出了在 GroupDocs.Comparison 中为 .NET 3.5.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

####比较word文档

将源文档与两个目标文档方法 MultiCompareWith 进行比较。

```csharp
// Enter documents paths
string sourcePath = @"Groupdocs.Comparison.Samples.data.Words.source.docx";
string target1Path = @"Groupdocs.Comparison.Samples.data.Words.target1.docx";
string target2Path = @"Groupdocs.Comparison.Samples.data.Words.target2.docx";

// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new List<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);

// Add target documents in list
ListOfTargetDocuments.Add(target1);
ListOfTargetDocuments.Add(target2);

// Call method MultiCompareWith.
IWordsCompareResult result = source.MultiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());
```

#### 将源文档与三个目标文档方法 MultiCompareWith 进行比较。

```csharp
// Enter documents paths
string sourcePath = @"Groupdocs.Comparison.Samples.data.Words.source.docx";
string target1Path = @"Groupdocs.Comparison.Samples.data.Words.target1.docx";
string target2Path = @"Groupdocs.Comparison.Samples.data.Words.target2.docx";
string target3Path = @"Groupdocs.Comparison.Samples.data.Words.target3.docx";

// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new List<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);
ComparisonDocument target3 = new ComparisonDocument(target3Path);

// Add target documents in list
ListOfTargetDocuments.Add(target1);
ListOfTargetDocuments.Add(target2);
ListOfTargetDocuments.Add(target3);

// Call method MultiCompareWith.
IWordsCompareResult result = source.MultiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());
```

