---
id: groupdocs-comparison-for-net-19-5-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-5-release-notes
title: "GroupDocs.Comparison for .NET 19.5 发行说明"
weight: 7
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 19.5 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 19.5 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 对图表、幻灯片和 PDF 格式的更改实施计算
* 实现获取文档信息的方法
* 改进了所有支持格式的项目的异常和错误处理
* 修复了获取 HTML 文件的图像的问题
* 修复了字体检测问题
* 修正 PDF 中不正确的差异
* 改进了 Words 文档表格中的更改检测

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-1847 |计算幻灯片的正确更改坐标 |特色 |
|比较网-1849 |计算 PDF 更改的正确坐标 |特色 |
|比较网-1852 |计算图表更改的正确坐标 |特色 |
|比较网-1895 |实现获取文档信息方法 |特色 |
|比较网-1773 |所有格式的错误处理改进 |改进 |
|比较网-1799 |改进 Words 表格中的更改检测 |改进 |
|比较网-1808 |比较不适用于脚注 |错误 |
|比较网-1774 |无法获取 HTML 文件的图像 |错误 |
|比较网-1805 |比较输出中的已删除项目不符合预期 |错误 |
|比较网-1892 | PDF 中的差异信息不正确 |错误 |
|比较网-1899 | Html MarkDeletedInsertedContentDeep 错误 |错误 |
|比较网-1903 | .NET 应用程序的 GroupDocs.Comparison 中的许可证问题错误 |
|比较网-1906 |字体检测异常 |错误 |
|比较网-1909 |分词异常 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison for .NET 19.5 中引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1. **扩展的 PageImage 属性**
目前，PageImage 类通过添加 2 个公共属性 *Width* 和 *Height* 进行了扩展
    














```csharp
比较器比较器=新比较器（）；
     

















// 获取页面列表作为图像
列表<PageImage>sourceImages = comparer.ConvertToImages(sourcePath);
// 获取第一页的大小
int h = sourceImages[0].Height;
int w = sourceImages[0].Width;
```
    














2. **获取更改的坐标**
    














获取 Result 文档中特定更改的坐标适用于 **Slides、PDF** 和 **Diagrams** 文档
    














要使用此功能，您应该在 *ComparisonSettings CalculateComponentCoordinates* 属性中指定
    














```csharp
比较设置设置 = 新的比较设置
{
...
计算组件坐标=真；
...
}
```
    














更改的坐标将存储在 *ChangeInfo* 类的 *Box* 属性中
    














```csharp
列表<ChangeInfo>更改 = 新列表<ChangeInfo>(result.GetChanges());
chages[0].Box // 第一次变化的坐标
```
    














进一步使用此选项的示例：
    














```csharp
比较设置比较设置=新比较设置（）；
比较设置.StyleChangeDetection = true;
//这个设置指定我们想要改变坐标
比较设置.CalculateComponentCoordinates = true;
比较设置.DetailLevel = DetailLevel.High;
string sourcePath = "source.pdf";
字符串 targetPath = "target.pdf";
字符串结果路径 = "结果.pdf;
比较器比较器=新比较器（）；
ICompareResult 结果 = comparer.Compare(sourcePath, targetPath, comparisonSettings);
result.SaveDocument(resultPath);
     

















列表<PageImage>resultImages = comparer.ConvertToImages(resultPath);
列表<ChangeInfo>更改 = 新列表<ChangeInfo>(result.GetChanges());
     

















//下面是我们如何使用更改坐标的一种情况。
//我们正在通过 pages 对象并在更改的坐标处绘制一个矩形
foreach（resultImages 中的 PageImage 图像）
{
位图 bitmap = new Bitmap(image.PageStream);
使用（图形图形 = Graphics.FromImage（位图））
{
foreach (ChangeInfo changeInfo in changes)
{
//如果有东西被插入，画一个蓝色矩形
if (changeInfo.Type == TypeChanged.Inserted)
graphics.DrawRectangle(new Pen(Color.Blue), changeInfo.Box.X, changeInfo.Box.Y, changeInfo.Box.Width, changeInfo.Box.Height);
//如果有东西被删除了画一个红色矩形
if (changeInfo.Type == TypeChanged.Deleted)
graphics.DrawRectangle(new Pen(Color.Red), changeInfo.Box.X, changeInfo.Box.Y, changeInfo.Box.Width, changeInfo.Box.Height);
//如果有什么是变化绘制一个绿色矩形
if (changeInfo.Type == TypeChanged.StyleChanged)
graphics.DrawRectangle(new Pen(Color.Green), changeInfo.Box.X, changeInfo.Box.Y, changeInfo.Box.Width, changeInfo.Box.Height);
}
}
bitmap.Save(savePath + @"/Result_Pages/result_" + image.PageNumber + ".png");
位图.Dispose();
}
```
    














3. **新的 DocumentInfo 类**
    














添加了新的 DocumentInfo 类。此类包含以下属性：
    














NumberOfPages（只读）- 文档页数
PagesData（只读） - PageInfo 类的列表
    














PageInfo 类包含以下属性：
Width - 页面的宽度
高度 - 页面的高度
    














```csharp
告密者告密者 = 新告密者（）；
//从filePath获取文档信息
DocumentInfo documentInfo = informer.GetDocumentInfo(filePath);
```

