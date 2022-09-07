---
id: groupdocs-comparison-for-net-17-1-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-17-1-0-release-notes
title: "GroupDocs.Comparison For .NET 17.1.0 发行说明"
weight: 11
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 17.1.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 7 个新功能和 7 个改进和修复。最值得注意的是：

* 引入了对 Compare.Cells 中应用/放弃更改的支持的支持
* 引入了对 Compare.PDF 中应用/放弃更改的支持的支持
* 在 Comparison.Cells 中引入了对水印、超链接、评论、文本框、形状的支持
* 提高 GroupDocs.Comparison.PDF 比较效率

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-1053 | GroupDocs.Comparison.PDF：添加对应用/放弃更改的支持 |新功能 |
|比较网-975 | GroupDocs.Comparison.PDF：添加对水印的支持 |新功能 |
|比较网-1065 | GroupDocs.Comparison.Cells：添加对超链接的支持 |新功能 |
|比较网-1069 | GroupDocs.Comparison.Cells：添加对评论的支持 |新功能 |
|比较网-1072 | GroupDocs.Comparison.Cells：添加对文本框的支持 |新功能 |
|比较网-1063 | GroupDocs.Comparison.Cells：添加对应用/放弃更改的支持 |新功能 |
|比较网-1073 | GroupDocs.Comparison.Cells：添加对形状的支持 |新功能 |
|比较网-1075 | GroupDocs.Comparison.Cells：为已删除和插入的单元格和单元格范围添加边框 |改进 |
|比较网-679 |修复修改后的表移动到新页面时不删除之前版本添加表的问题 |改进 |
|比较网-1055 |在吸收段落发生一些变化后改进逐页修剪|改进 |
|比较网-1080 | GroupDocs.Comparison.PDF：改进段落的比较更改检测 |改进 |
|比较网-1056 |提高页眉、页脚中图像的 GroupDocs.Comparison.PDF 比较质量，按页设置组件和段落的坐标 |改进 |
|比较网-1074 | GroupDocs.Comparison：PDF：设置分页后段落运行的类型更改 |错误 |
|比较网-1077 | Compare.Cells：在 Aligner 比较器和文档生成器的关键更新后修复单元格外观 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 17.1.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

#### 将电子表格文件格式与设置进行比较

更新使用电子表格文件格式比较设置的方法



```csharp
// Enter presentations paths
string sourcePath = "./source.otp";
string targetPath = "./target.otp";

// Create two streams of presentations

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
CellsComparisonSettings settings = new CellsComparisonSettings();
settings.ShowDeletedContent = false;
settings.GenerateSummaryPage = true;

Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### 将 Words 文件格式与设置进行比较

更新使用 Words 文件格式比较设置的方法



```csharp
// Enter Words document paths
string sourcePath = "./source.odt";
string targetPath = "./target.odt";

// Create two streams of Words docuemnt

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
WordsComparisonSettings settings = new WordsComparisonSettings();
Settings.ProcessHyperLinksAsAText = true;

Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### Open Documents 文件格式的比较示例



```csharp
// Enter presentations paths
string sourcePath = "./source.otp";
string targetPath = "./target.otp";

// Create two streams of presentations

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### COMPARISONNET-1080 使用方法 CompareWith 比较两个段落。



```csharp
// Creating Paragraphs
ComparisonParagraphBase sourceParagraph = new ComparisonParagraph();
sourceParagraph.Text = "This is source Paragraph.";
 
ComparisonParagraphBase targetParagraph = new ComparisonParagraph();
targetParagraph.Text = "This is target Paragraph.";
 
// Creating settings for comparison of Paragraphs
SlidesComparisonSettings settings = new SlidesComparisonSettings();
// Comparing Paragraphs
ISlidesCompareResult compareResult = sourceParagraph.CompareWith(targetParagraph, settings);


```

#### 通过图像文件夹将演示文稿保存到图像



```csharp
/using GroupDocs.Comparison.Slides;
using GroupDocs.Comparison.Slides.Contracts;
using GroupDocs.Comparison.Slides.Contracts.Comparison;
using GroupDocs.Comparison.Slides.Contracts.Enums;
using GroupDocs.Comparison.Common.Images;

//path to file
string filePath = "./presentation.pptx";
  
//path to image folder
string imageFolderPath = "./FolderForImage/";
  
//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentationBase(filePath);
  
//Set settings
var settings = new ComparsionSlidesImageSettings();
  
//Save as Image
presentation.SaveAsImages(imageFolderPath, settings);



```

