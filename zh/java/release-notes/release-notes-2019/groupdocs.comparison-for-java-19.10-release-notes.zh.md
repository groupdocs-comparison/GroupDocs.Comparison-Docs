---
id: groupdocs-comparison-for-java-19-10-release-notes
url: comparison/java/groupdocs-comparison-for-java-19-10-release-notes
title: "Java 19.10 发行说明的 GroupDocs.Comparison"
weight: 1
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for Java 19.10 的发行说明{{< /alert >}}

## 主要特点

在此版本的 GroupDocs.Comparsion for Java 中已修复的错误列表下方。最值得注意的是：

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
* 修复部分移动到新页面时的问题
* 修正 API 参考中的错别字
* 实施灵敏度选项
* 实现 Words 文档更改的计算坐标
* 修复了生成的 PDF 文档中内容重叠的问题
* 修复部分移动到新页面时的问题
* 使用最新版本的 Metered 集成基于信用的计费系统
* 将命名空间更新为更合乎逻辑和方便（一些命名空间被重命名）

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
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
|比较网-1773 |所有格式的错误处理改进 |改进 |
|比较网-1799 |改进 Words 表格中的更改检测 |改进 |
|比较网-1846 |计算单词更改的正确坐标 |改进 |
|比较网-1929 |实施灵敏度选项 |改进 |
|比较网-1901 |将最新版本的Dynabic.Metered集成到产品中|改进 |
|比较网-1815 |忽略注释（主要用于代码文件）。 |改进 |
|比较网-1816 |忽略空格 - 全部、前导、尾随、数量变化 |改进 |
|比较网-1813 |忽略大小写 - 忽略字符大小写差异。 |改进 |
|比较网-1931 |重构 GroupDocs.Comparison 命名空间 |改进 |
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
|比较网-1906 |字体检测异常 |错误 |
|比较网-1909 |分词异常 |错误 |
|比较网-1927 |合并文档，然后文档比较失败 |错误 |
|比较网-1891 |文本与其他文本或图像重叠 |错误 |
|比较网-1930 | PDF 结果文件中的重复图像 |错误 |
|比较网-1772 | PDF 比较有重叠和损坏的输出 |错误 |
|比较JAVA-374 |多线程比较返回 null |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison for Java 19.10 中引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1. **扩展的 PageImage 属性**
目前，PageImage 类通过添加 2 个公共属性 *Width* 和 *Height* 进行了扩展
    





























```java
比较器比较器=新比较器（）；
// 获取页面列表作为图像
列表<PageImage>sourceImages = comparer.convertToImages(sourcePath);
// 获取第一页的大小
int height = sourceImages.get(0).getHeight();
int width = sourceImages.get(0).getWidth();
```
    





























2. **获取更改的坐标**
    





























获取 Result 文档中特定更改的坐标适用于 **Slides、PDF** 和 **Diagrams、Word** 文档。
    





























要使用此功能，您应该在 *ComparisonSettings CalculateComponentCoordinates* 属性中指定
    





























```java
比较设置设置 = 新的比较设置
...
settings.setCalculateComponentCoordinates(true);
...
```
    





























更改的坐标将存储在 *ChangeInfo* 类的 *Box* 属性中
    





























```java
比较器比较器=新比较器（）；
// 设置
比较设置 比较设置 = 新的比较设置（）；
compareSettings.setCalculateComponentCoordinates(true);
// 比较文档
ICompareResult compareResult = comparer.compare(sourcePath, targetName, compareSettings);
// 获取第一次更改的大小
ChangeInfo[] 更改 = compareResult.getChanges();
// 第一次变化的坐标
最终矩形矩形 = 更改[0].getBox();
```
    





























进一步使用此选项的示例：
    





























```java
比较设置 比较设置 = 新的比较设置（）；
比较设置.setStyleChangeDetection(true);
//这个设置指定我们想要改变坐标
compareSettings.setCalculateComponentCoordinates(true);
比较设置.setDetailLevel(DetailLevel.High);
     









































比较器比较器=新比较器（）；
ICompareResult 结果 = comparer.compare(sourcePath, targetPath, comparisonSettings);
result.saveDocument(resultPath);
     









































     









































列表<PageImage>resultImages = comparer.convertToImages(resultPath);
最终 ChangeInfo[] 更改 = result.getChanges();
     









































     









































// 下面是我们如何使用更改坐标的一种情况。
// 我们正在通过 pages 对象并在坐标的变化处绘制一个矩形
for (PageImage pageImage : resultImages) {
最终 InputStream pageStream = pageImage.getPageStream();
final BufferedImage bufferedImage = ImageIO.read(pageStream);
最终图形图形 = bufferedImage.getGraphics();
对于（更改信息更改信息：更改）{
最终矩形矩形 = changeInfo.getBox();
//如果有东西被插入，画一个蓝色矩形
if (changeInfo.getType() == TypeChanged.Inserted) {
graphics.setColor(Color.BLUE);
graphics.drawRect((int) rectangle.getX(), (int) rectangle.getY(), (int) rectangle.getWidth(), (int) rectangle.getHeight());
}
//如果有东西被删除了画一个红色矩形
if (changeInfo.getType() == TypeChanged.Deleted) {
     









































graphics.setColor(Color.RED);
graphics.drawRect((int) rectangle.getX(), (int) rectangle.getY(), (int) rectangle.getWidth(), (int) rectangle.getHeight());
}
//如果有什么是变化绘制一个绿色矩形
if (changeInfo.getType() == TypeChanged.StyleChanged) {
graphics.setColor(Color.GREEN);
graphics.drawRect((int) rectangle.getX(), (int) rectangle.getY(), (int) rectangle.getWidth(), (int) rectangle.getHeight());
}
}
ImageIO.write(bufferedImage, "png", new File(resultPath.replace("result", "result_" + pageImage.getPageNumber()) + ".png"));
graphics.dispose();
pageStream.close();
}
```
    





























3. **获取文档页面的图像表示**
    





























```java
比较器比较器=新比较器（）；
比较设置 比较设置 = 新的比较设置（）；
比较设置.setStyleChangeDetection(true);
     









































//比较文档
ICompareResult 结果 = comparer.compare(sourcePath, targetPath, comparisonSettings);
result.saveDocument(resultPath);
     









































// 获取页面列表
列表<PageImage>resultImages = comparer.convertToImages(resultPath);
     









































// 将它们保存为位图到单独的文件夹
for (PageImage pageImage : resultImages) {
最终 InputStream pageStream = pageImage.getPageStream();
     









































Assert.assertNotNull(pageStream);
     









































final BufferedImage bufferedImage = ImageIO.read(pageStream);
ImageIO.write(bufferedImage, "png", new File(resultPath.replace(resultName, "result_" + pageImage.getPageNumber()) + ".png"));
}
```
    





























4. **新的 DocumentInfo 类**
    





























添加了新的 *DocumentInfo* 类。此类包含以下属性
    





























*NumberOfPages*（只读）- 文档页数
*PagesData*（只读）- *PageInfo* 类的列表，
    





























*PageInfo* 类包含以下属性：
Width - 页面的宽度
高度 - 页面的高度
    





























```java
告密者告密者 = 新告密者（）；
// 从filePath获取文档信息
DocumentInfo documentInfo = informer.getDocumentInfo(sourcePath);
```
    





























5. **设置比较细节级别**
    





























1.如果我们设置*DetailLevel = Middle*，如果元素被添加\\删除\\修改，我们不会在某些文档格式（Words，Slides，Cells）中添加评论
        












































2. 如果我们设置*DetailLevel = Middle*，我们不会进行不区分大小写的比较。即 M = m。
        












































3.增加了灵敏度属性。当元素被检测为删除或插入时，此选项以百分比定义限制。
        












































    





























最小值 - 0，两个比较对象的任何长度的序列都不会发生比较过程。
    





























默认值 - 75，当删除或插入的元素相对于所有元素的百分比不超过 75% 时进行比较。
    





























最大值 - 100，比较发生在两个比较对象的公共子序列的任意长度。
    





























**例如，我们有两个词**
    





























```java
1）一个来源
     









































2)两个目标
```
    





























这两个词的公共子序列非常小。因此，当以 70% 的准确率比较它们时，不考虑它，我们得到一个完全删除和插入的词：
    





























```java
(两个目标)[一个来源]
```
    





























但是在 100% 的准确度下，我们考虑了这个子序列，尽管它由两个字母组成
    





























```java
(tw)o[n](Targ)e[来源](t)
```
    





























代码片段：
    





























```java
比较设置 比较设置 = 新的比较设置（）；
比较设置.setSensitivityOfComparison(100);
比较器比较 = 新的比较器（）；
ICompareResult 结果 = compare.compare(sourcePath, targetPath, comparisonSettings);
```

