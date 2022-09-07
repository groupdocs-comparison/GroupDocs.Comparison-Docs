---
id: groupdocs-comparison-for-java-16-11-0-release-notes
url: comparison/java/groupdocs-comparison-for-java-16-11-0-release-notes
title: "GroupDocs.Comparison for Java 16.11.0 发行说明"
weight: 1
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for Java 16.11.0 的发行说明{{< /alert >}}

## 主要特点

* 改进了比较表的比较.Words
* 改进了Comparison.PDF的表格比较
* 改进了 Compare.Cells 的性能
* 改进了 Compare.Words 内容列表的比较
* 为Comparison.Words 引入表单比较支持
* 为Comparison.Words 引入多语言文档支持
* 为比较.Words 引入了艺术字对象的支持
* 引入了对Comparison.Words 评论比较的支持
*为Comparison.PDF引入了新的段落吸收器
* 为比较.PDF 引入了新的表格吸收器
* 为Comparison.Words 引入多重比较支持
* 为 Compare.Words 的多重比较引入了应用/丢弃支持
* 为 Compare.PDF 引入页眉和页脚文本吸收器
* 改进的比较段落吸收器.PDF
* 在比较中引入了对新组件的支持。幻灯片：评论、图表
*在Comparison.PDF中引入了对水印的支持
* 在Comparison.PDF 中引入了对新组件的支持：媒体对象、图像定位
* 改进了带有表格的情况下的 ComparisonParagraphAbsorber
* 在Comparison.Slides中引入了对新组件的支持：带有VBA脚本的对象，样式变化检测，相框检测
* 修复了带有嵌套段落的比较.Words 的问题
* 修复了带有表结构的比较.Cells 的问题
* 改进了带有表格的情况下的 ComparisonParagraphAbsorber

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-792 | GroupDocs.Comparison.Words：添加页码比较 |新功能 |
|比较网-818 | GroupDocs.Comparison.Words：添加组形状支持 |新功能 |
|比较网-856 | GroupDocs.Comparison.Words：评论比较 |新功能 |
|比较网-857 | GroupDocs.Comparison.Words：艺术字对象的比较 |新功能 |
|比较网-858 | GroupDocs.Comparison.Words：表中表的比较 |新功能 |
|比较网-854 | GroupDocs.Comparison.Words：表格比较 |新功能 |
|比较网-855 | GroupDocs.Comparison.Words：多语言比较 |新功能 |
|比较网-669 | GroupDocs.Comparison.PDF：段落的对象模型 |新功能 |
|比较网-853 | GroupDocs.Comparison.Words：对象与 VBA 脚本的比较 |新功能 |
|比较网-738 | GroupDocs.Comparison.PDF：基本案例段落吸收器的实现|新功能 |
|比较网-877 | GroupDocs.Comparison.Words：添加选项以从每个文档的结果列表中组合多个结果列表 |新功能 |
|比较网-876 | GroupDocs.Comparison.Words：支持将多个文档与跟踪更改进行比较 |新功能 |
|比较网-909 | GroupDocs.Comparison.PDF：添加对Page Footer吸收的支持|新功能 |
|比较网-910 | GroupDocs.Comparison.PDF：增加对Page Header吸收的支持 |新功能 |
|比较网-880 | GroupDocs.Comparison.Words：为多个结果更改列表添加应用/放弃更改支持 |新功能 |
|比较网-970 | GroupDocs.Comparison.PDF：添加对新组件的支持：媒体对象、图像定位 |新功能 |
|比较网-961 | GroupDocs.Comparison.PDF：添加比较水印的支持 |新功能 |
|比较网-962 | GroupDocs.Comparison.Slides：添加比较图表的支持 |新功能 |
|比较网-965 | GroupDocs.Comparison.Slides：添加比较评论的支持 |新功能 |
|比较网-1009 | GroupDocs.Comparison.Slides：添加支持将对象与 VBA 脚本进行比较 |新功能 |
|比较网-1013 | GroupDocs.Comparison.Slides：添加对样式更改检测的支持 |新功能 |
|比较网-1026 | GroupDocs.Comparison.Slides：添加对相框检测的支持 |新功能 |
|比较网-782 | GroupDocs.Comparison.Words：改进表格的比较，一些表格在两个单元格上不同，但算法未将表格定义为相似 |改进 |
|比较网-783 | GroupDocs.Comparison.Words：改进内容列表的比较 |改进 |
|比较网-817 | GroupDocs.Comparison.Cells：提高细胞性能 |改进 |
|比较网-687 | GroupDocs.Comparison.PDF：改进使用表格 |改进 |
|比较网-864 | GroupDocs.Comparison.PDF：简单案例的表格吸收实现|改进 |
|比较网-776 | GroupDocs.Comparison.PDF：实现函数 CleanOperatorsList |改进 |
|比较网-880 | GroupDocs.Comparison.Words：文档处理性能改进 |改进 |
|比较网-886 | GroupDocs.Comparison.PDF：通过检查文本片段是否包含在不同的父对象中来将文本分成段落|改进 |
|比较网-904 | GroupDocs.Comparison.PDF：改进了纯文本案例的比较段落吸收器|改进 |
|比较网-873 | GroupDocs.Comparison.PDF：改进了对所有 Adobe Acrobat 格式的文本比较支持 |改进 |
|比较网-949 | GroupDocs.Comparison.PDF：改进比较表 |改进 |
|比较网-903 | GroupDocs.Comparison.PDF：改进带有表格的案例的ComparisonParagraphAbsorber |改进 |
|比较网-982 | GroupDocs.Comparison.PDF：改进文档构建器和页面映射器 |改进 |
|比较网-904 | GroupDocs.Comparison.PDF:ComparisonParagraphAbsorber 对纯文本案例的检查和改进 |改进 |
|比较网-1015 | GroupDocs.Comparison.Slides：提高比较性能 |改进 |
|比较网-1012 | GroupDocs.Comparison.Slides：扩展引擎以支持所有类型的图像 |改进 |
|比较网-957 |跨格式引擎：所有格式不同结果的表格对比案例 |改进 |
|比较网-970 | GroupDocs.Comparison.PDF：向新核心添加对新组件的支持 |改进 |
|比较网-698 | GroupDocs.Comparison.PDF：修复比较后无法打开带有表格的文档的问题 |错误 |
|比较网-727 | GroupDocs.Comparison.Words：仅针对附加文件生成零输出（未检测到更改）的文件 |错误 |
|比较网-736 | GroupDocs.Comparison.PDF：一些表格在两个单元格上不同，但算法未将表格定义为相似 |错误 |
|比较网-795 | GroupDocs.Comparison.Words：目标文件是源文件的修改，但定义不同 |错误 |
|比较网-850 | GroupDocs.Comparison.Words：无法打开结果文件：图形对象 |错误 |
|比较网-851 | GroupDocs.Comparison.Words：某些图像（或图形对象）不显示 |错误 |
|比较网-888 |比较的结果是 System.ArgumentException: Invalid font name |错误 |
|比较网-883 | TablesAligner for Pdf：修复ComparisonCell 类的GetText 函数|错误 |
|比较网-968 | GroupDocs.Comparison.Words：来自相邻段落的相同文本被定义为删除和插入 |错误 |
|比较网-964 | GroupDocs.Comparison.Slides：比较后文件未打开 |错误 |
|比较网-966 | GroupDocs.Comparison.Cells：如果行的内容是唯一的，则应将行标记为已插入或已删除 |错误 |
|比较网-967 | GroupDocs.Comparison.Cells：结果表结构不符合主表结构 |错误 |
|比较网-946 | GroupDocs.Comparison.Words：例外：newChild 是从与创建此节点的文档不同的文档创建的。 |错误 |
|比较网-107 |使用 Gradle 比较 PDF 文档既不会产生任何错误，也不会产生输出 PDF |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison for Java 16.11.0 中引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

### MultiCompareWith：支持将多个文档与跟踪更改进行比较

### 比较单词文档 - 将源文档与两个目标文档进行比较。

```java
// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new ArrayList<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);

// Add target documents in list
ListOfTargetDocuments.add(target1);
ListOfTargetDocuments.add(target2);

// Call method MultiCompareWith.
IWordsCompareResult result = source.multiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

### 将源文档与三个目标文档进行比较。

```java
// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new ArrayList<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);
ComparisonDocument target3 = new ComparisonDocument(target3Path);

// Add target documents in list
ListOfTargetDocuments.add(target1);
ListOfTargetDocuments.add(target2);
ListOfTargetDocuments.add(target3);

// Call method MultiCompareWith.
IWordsCompareResult result = source.multiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

