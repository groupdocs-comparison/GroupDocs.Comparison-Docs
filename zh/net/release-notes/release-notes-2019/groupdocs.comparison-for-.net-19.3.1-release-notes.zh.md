---
id: groupdocs-comparison-for-net-19-3-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-3-1-release-notes
title: "GroupDocs.Comparison for .NET 19.3.1 发行说明"
weight: 8
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 19.3.1 的发行说明{{< /alert >}}

## 主要特点

以下是 .NET 19.3.1 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 实现了将不同格式的文档转换为图像的能力
* 修复了 Words 文档中上标和下标元素的问题
* 修复 GroupDocs.Comparison.Html 的样式设置
* 修复了比较大尺寸 PDF 文件的问题（其他情况）
* 修正 EndNote 元素在 Words 上的比较不起作用

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
|比较网-1806 |上标和下标问题 |错误 |
|比较网-1802 |设置 StyleSettings 不适用于 html |错误 |
|比较网-1803 |比较大尺寸 PDF 文件的问题（另一种情况） |错误 |
|比较网-1804 | EndNote 比较不起作用 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 19.3.1 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

1.获取文档页面的图像表示
    

```csharp
比较器比较器=新比较器（）；
比较设置 cs = 新的比较设置（）；
cs.StyleChangeDetection = true;
     









     









//比较文档
ICompareResult 结果 = comparer.Compare(sourcePath, targetPath, cs);
result.SaveDocument(resultPath);
     









     









//获取页面列表
列表<PageImage>resultImages = comparer.ConvertToImages(resultPath);
     









     









//将它们保存为位图到单独的文件夹
if (!Directory.Exists(savePath + @"/Result Pages"))
Directory.CreateDirectory(savePath + @"/Result Pages");
     









     









foreach（resultImages 中的 PageImage 图像）
{
位图 bitmap = new Bitmap(image.PageStream);
bitmap.Save(savePath + @"/Result Pages/result_" + image.PageNumber + ".png");
位图.Dispose();
}
```

