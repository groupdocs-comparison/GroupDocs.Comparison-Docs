---
id: groupdocs-comparison-for-net-16-10-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-16-10-0-release-notes
title: "GroupDocs.Comparison For .NET 16.10.0 发行说明"
weight: 3
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 16.10.0 的发行说明{{< /alert >}}

## 主要特点

此每月定期发布中有 10 项改进和修复。最值得注意的是：

* 在比较中引入了对新组件的支持。幻灯片：评论、图表
*在Comparison.PDF中引入了对水印的支持
* 在Comparison.PDF 中引入了对新组件的支持：媒体对象、图像定位
* 改进了带有表格的情况下的 ComparisonParagraphAbsorber

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-970 | GroupDocs.Comparison.PDF：添加对新组件的支持：媒体对象、图像定位 |新功能 |
|比较网-961 | GroupDocs.Comparison.PDF：添加比较水印的支持 |新功能 |
|比较网-962 | GroupDocs.Comparison.Slides：添加比较图表的支持 |新功能 |
|比较网-965 | GroupDocs.Comparison.Slides：添加比较评论的支持 |新功能 |
|比较网-949 | GroupDocs.Comparison.PDF：改进比较表 |改进 |
|比较网-903 | GroupDocs.Comparison.PDF：改进带有表格的案例的ComparisonParagraphAbsorber |改进 |
|比较网-982 | GroupDocs.Comparison.PDF：改进文档构建器和页面映射器 |改进 |
|比较网-904 | GroupDocs.Comparison.PDF:ComparisonParagraphAbsorber 对纯文本案例的检查和改进 |改进 |
|比较网-968 | GroupDocs.Comparison.Words：来自相邻段落的相同文本被定义为删除和插入 |错误 |
|比较网-964 | GroupDocs.Comparison.Slides：比较后文件未打开 |错误 |

  


## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison 中为 .NET 16.10.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

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

