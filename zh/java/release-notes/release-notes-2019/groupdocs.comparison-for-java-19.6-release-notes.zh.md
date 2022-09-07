---
id: groupdocs-comparison-for-java-19-6-release-notes
url: comparison/java/groupdocs-comparison-for-java-19-6-release-notes
title: "GroupDocs.Comparison for Java 19.6 发行说明"
weight: 2
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for Java 19.6 的发行说明{{< /alert >}}

## 主要特点

以下是 Java 版 GroupDocs.Comparsion 中最显着的变化列表。最值得注意的是：

* 添加了图表组形状的比较
* 实现了在没有图表大师的情况下添加形状
* 改进了图表的段落比较器
* 改进的 Html 样式表比较器
* 修复了在某些特定的 PDF 文档比较情况下样式更改未突出显示的问题
* 在某些特定情况下改进了 PDF 比较
* 改进的 HTML 对齐器，提高了比较的准确性
* 修正和改进了比较.HTML 上的锚标签
* 改进了幻灯片的表格比较
* 修复了比较不同样式的表格的问题
* 修复了表格第一列的比较样式
* 修复了结果幻灯片文档大小不正确的问题
* 改进了幻灯片的图表比较
* 确保并对比较进行了必要的更改以使其成为线程安全的
*改进的单词比较测试器
* 改进幻灯片的样式检测
* 修复了幻灯片中自选图形的问题
* 改进了大尺寸文件在 PDF 中的比较
* 改进了结果文件中的工作表名称生成
* 在单元格中实现图表标题比较
* 在单元格文档的结果文件生成中实现自动形状的自动调整大小
* 在单元格的结果文件（而不是图片）中实现图表生成
* 改进了 PDF 中的段落吸收器，用于比较速度增加
* 修正了设置段落行的问题
* 修复大尺寸 PDF 文件中设置超链接的问题
* 涵盖此版本中所有更改的完整问题列表
* 实现了将不同格式的文档转换为图像的功能
* 修复了 Words 文档中上标和下标元素的问题
* 修复 GroupDocs.Comparison.Html 的样式设置
* 修复了比较大尺寸 PDF 文件的问题（其他情况）
* 修正 EndNote 元素在 Words 上的比较不起作用
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
|比较网-1605 |为图表实现组形状 |特色 |
|比较网-1587 |实现比较不同的格式作为图像 |特色 |
|比较网-1607 |在图中实现 GluedShapes |特色 |
|比较网-1637 |实现文本高亮比较的新设置。Html |特色 |
|比较网-1636 |为文本突出显示比较实施新设置。幻灯片 |特色 |
|比较网-1635 |为文本高亮比较实现新设置。特色 |
|比较网-1634 |实现文本高亮比较的新设置。PDF |特色 |
|比较网-1633 |为文本突出显示比较实施新设置。单词 |特色 |
|比较网-1836 |将文档另存为 Words 的图像 |特色 |
|比较网-1837 |将文档另存为 Cells 的图像 |特色 |
|比较网-1838 |将文档保存为幻灯片的图像 |特色 |
|比较网-1839 |将文档另存为 PDF 的图像 |特色 |
|比较网-1840 |将文档另存为 HTML 图像 |特色 |
|比较网-1841 |将文档另存为图像以用于电子邮件 |特色 |
|比较网-1842 |将文档另存为图像以供注意 |特色 |
|比较网-1843 |将文档另存为文本图像 |特色 |
|比较网-1844 |将文档保存为图表的图像 |特色 |
|比较网-1847 |计算幻灯片的正确更改坐标 |特色 |
|比较网-1849 |计算 PDF 更改的正确坐标 |特色 |
|比较网-1852 |计算图表更改的正确坐标 |特色 |
|比较网-1895 |实现获取文档信息方法 |特色 |
|比较网-1608 |改进 Html 的样式表比较器 |改进 |
|比较网-1606 |添加没有Diagram's Master的形状|改进 |
|比较网-1645 |安全改进更新 |改进 |
|比较网-1644 |改进 PDF 映射器 |改进 |
|比较网-1640 |改进对不同格式与图像比较的支持 |改进 |
|比较网-740 |改进 Html Anchors 比较 |改进 |
|比较网-753 |改进 PDF 比较 |改进 |
|比较网-758 |改进 HTML 对齐器 |改进 |
|比较网-1725 |改进幻灯片的 TableFormatSetter |改进 |
|比较网-1734 |使比较线程安全 |改进 |
|比较网-1748 |改进幻灯片上的图表比较 |改进 |
|比较网-1739 |改进幻灯片的样式检测 |改进 |
|比较网-735 |改进单词比较测试器 |改进 |
|比较网-1738 |改进结果文档中的段落吸收器 |改进 |
|比较网-1742 |改进单元格上的图表比较 |改进 |
|比较网-1773 |所有格式的错误处理改进 |改进 |
|比较网-1799 |改进 Words 表格中的更改检测 |改进 |
|比较JAVA-589 |添加功能以自动或使用设置替换丢失的字体 |改进 |
|比较网-1619 |带图像的 PDF 输出不如预期 |错误 |
|比较网-1620 |带图表的 PDF 输出不如预期 |错误 |
|比较网-1619 |带图像的 PDF 输出不如预期 |错误 |
|比较网-752 |比较受密码保护的 Words 文件时出错 |错误 |
|比较网-750 |无法比较 PDF 文档 |错误 |
|比较网-1727 |幻灯片表格不显示文字样式变化 |错误 |
|比较网-1726 |幻灯片：表格主题问题 |错误 |
|比较网-1724 |幻灯片：比较第一列中的样式时出现问题 |错误 |
|比较网-1723 |幻灯片：结果文档大小的问题 |错误 |
|比较网-1744 |修复幻灯片上的 autoshape 问题 |错误 |
|比较网-1760 |单元格中的结果文件中的工作表名称不正确 |错误 |
|比较网-1747 |比较大型 PDF 文件时的问题 |错误 |
|比较网-1769 |设置 ParaghraphLines 时的问题。 |错误 |
|比较网-1766 |在大尺寸 PDF 文件中设置超链接的问题 |错误 |
|比较网-1806 |上标和下标问题 |错误 |
|比较网-1802 |设置 StyleSettings 不适用于 html |错误 |
|比较网-1803 |比较大尺寸 PDF 文件的问题（另一种情况） |错误 |
|比较网-1804 | EndNote 比较不起作用 |错误 |
|比较网-1808 |比较不适用于脚注 |错误 |
|比较网-1772 | PDF 比较有重叠和损坏的输出 |错误 |
|比较网-1774 |无法获取 HTML 文件的图像 |错误 |
|比较网-1805 |比较输出中的已删除项目不符合预期 |错误 |
|比较网-1892 | PDF 中的差异信息不正确 |错误 |
|比较网-1899 | Html MarkDeletedInsertedContentDeep 错误 |错误 |
|比较网-1903 | .NET 应用程序的 GroupDocs.Comparison 中的许可证问题错误 |
|比较网-1906 |字体检测异常 |错误 |
|比较网-1909 |分词异常 |错误 |
|比较JAVA-147 |无法使用 GroupDocs 比较两个 PDF 文件。Java 17.3.0 的比较 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本节列出了 GroupDocs.Comparison for Java 19.6 中引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1.使用“DiagramMasterSetting”管理Comparison.Diagram的master。
    













```java
setMasterPath(String);// - 用户设置自定义主路径
setUseSourceMaster(boolean);// - true - 使用来自源和目标的 master，false - 使用默认或自定义 master
```
    













例子：
    













* UseSourceMaster – false without MasterPath – 使用默认主路径
* UseSourceMaster - MasterPath 为 false - 使用自定义主路径
* UseSourceMaster - true - 一起使用源文档和目标文档中的 master
    













在比较不同格式的图像时，使用“OriginalSize”设置文档大小，该大小将在文档转换为图片时使用。
    













```java
OriginalSize -> setWidth(...);// int
OriginalSize -> setHeigth(...);// int;
```
    













      























    













2. 插入、删除和样式更改项样式设置用于设置字体颜色、突出显示颜色、样式（粗体、斜体、下划线、删除线）和结果文档中标记更改的标签。
    













```java
settings.getInsertedItemsStyle().setFontColor(Color.getBrown());
settings.getInsertedItemsStyle().setHighlightColor(Color.getRed());
settings.getInsertedItemsStyle().setBeginSeparatorString("<inserted> ");
settings.getInsertedItemsStyle().setEndSeparatorString("</inserted> ");
```
    













```java
settings.getDeletedItemsStyle().setFontColor(Color.getAquamarine());
settings.getDeletedItemsStyle().setHighlightColor(Color.getBlue());
settings.getDeletedItemsStyle().setBeginSeparatorString("<deleted> ");
settings.getDeletedItemsStyle().setEndSeparatorString("</deleted> ");
```
    













```java
settings.getStyleChangedItemsStyle().setFontColor(Color.getAqua());
settings.getStyleChangedItemsStyle().setHighlightColor(Color.getGreen());
settings.getStyleChangedItemsStyle().setBeginSeparatorString(" <style>");
settings.getStyleChangedItemsStyle().setEndSeparatorString("</style> ");
```
    













      























    













3. 获取文档页面的图像表示。
    













```java
比较器比较器=新比较器（）；
比较设置 cs = 新的比较设置（）；
cs.setStyleChangeDetection(true);
     





















     





















//比较文档
ICompareResult 结果 = comparer.compare(sourcePath, targetPath, cs);
result.saveDocument(resultPath);
     





















     





















//获取页面列表
列表<PageImage>resultImages = comparer.convertToImages(resultPath);
     





















     





















//将它们保存为位图到单独的文件夹
if (!new File(savePath + "/Result Pages").exists())
new File(savePath + "/Result Pages").mkdir();
     





















     





















对于（页面图像图像：结果图像）
{
BufferedImage 位图 = ImageIO.read(image.getPageStream());
ImageIO.write(bitmap, "png", new FileOutputStream(savePath + "/Result Pages/result_" + image.getPageNumber() + ".png"));
}
```

