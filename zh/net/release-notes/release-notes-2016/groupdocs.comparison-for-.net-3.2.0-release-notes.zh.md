---
id: groupdocs-comparison-for-net-3-2-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-2-0-release-notes
title: "GroupDocs.Comparison For .NET 3.2.0 发行说明"
weight: 7
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 3.2.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 14 项改进和修复。最值得注意的是：

* 支持将比较结果保存为图片
* 引入对 HTML 格式的支持
* 引入了改进的单词比较性能
* 为表格引入改进的单词比较质量
* 为表格和图像引入改进的 PDF 比较质量
* 引入改进的 Cells 一般比较质量
* 引入了对文本格式的应用/放弃更改支持

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-787 |使用Comparison.Text进行比较时将html文件保存到word文档|新功能 |
|比较网-769 |为 Comparison.Text 添加 GetChanges 和 UpdateChanges 方法 |新功能 |
|比较网-742 |实现将结果比较保存为图像 |新功能 |
|比较网-730 | PDF：实现自己的表格吸收器 |新功能 |
|比较网-801 |提高速度比较 Cells |改进 |
|比较网-750 | Compare.Words 使用新的矫治器显着提高性能 |改进 |
|比较网-728 |处理比较后改善图像和文本的显示|改进 |
|比较网-726 |在 ImagePlacementAbsorber 之后为来自 XForms 的图像实现位置和大小图像的校正功能 |改进 |
|比较网-616 |实现 Words 格式的公式比较 |改进 |
|比较网-533 | pdf与图像比较的实现|改进 |
|比较网-794 | GroupDocs.Comparison.Words：段落的对齐方式不匹配，当段落被分页符移动时 |错误 |
|比较网-780 |比较文本中的内存不足异常 |错误 |
|比较网-737 |使用图形对象时无法打开结果文件 |错误 |
|比较网-445 |单元格：不支持原始 Excel 表格布局。 |错误 |

  


  



## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 3.2.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

