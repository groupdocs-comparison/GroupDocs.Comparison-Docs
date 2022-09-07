---
id: groupdocs-comparison-for-net-20-4-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-4-release-notes
title: "GroupDocs.Comparison for .NET 20.4 发行说明"
weight: 16
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 20.4 的发行说明{{< /alert >}}

## 主要特点

在 .NET 20.4 的 GroupDocs.Comparison 版本的更改列表下方：

* 添加了只显示插入内容的新功能
* 改进了为演示文稿、电子表格和图表显示目标文本的功能
* 改进异常使用
* 修复了电子表格和笔记的库兼容性问题
*修复了比较图表时的异常数量

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2234 |实现 ShowInsertedContent 函数 |特色 |
|比较网-2269 |改进图表的GetTargetText 函数|改进 |
|比较网-2242 |改进幻灯片的 GetTargetText 函数 |改进 |
|比较网-2241 |改进单元格的 GetTargetText 函数 |改进 |
|比较网-2271 |改进异常使用 |改进 |
|比较网-2272 |更新测试中不支持的图表格式异常 |错误 |
|比较网-2270 |图表中的空引用异常 |错误 |
|比较网-2267 |升级到版本 20.3 时与 Cells 库的兼容性问题 |错误 |
|比较网-2239 |更新笔记库时的兼容性问题 |错误 |

## 公共 API 和向后不兼容的更改

## **显示插入的内容**

从版本 20.4 开始，**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供了禁用在结果文件中显示添加内容的功能。
  

要使用此功能，您应该在 *CompareOptions ShowInsertedContent *property 中指定为 false。


```csharp
CompareOptions options = new CompareOptions();
options.ShowInsertedContent = false;

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetDocumentPath);
     comparer.Compare(File.Create(outputPath), new SaveOptions(), options);
}
```

