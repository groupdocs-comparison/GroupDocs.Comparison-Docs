---
id: groupdocs-comparison-for-net-20-12-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-12-release-notes
title: "GroupDocs.Comparison for .NET 20.12 发行说明"
weight: 6
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 20.12 的发行说明{{< /alert >}}

## 主要特点

在 .NET 20.12 的 GroupDocs.Comparison 版本的更改列表下方：
* 改进 Words 文档中的修订处理
* 修复了 Words 中文本重复的问题
* 修复了表格显示不正确而不显示添加或删除的单元格的问题
* 修复 GroupDocs.Comparison 在 GroupDocs.Total 解决方案中正常工作


		

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2557 |改进 Words 文档中的修订处理 |改进 |
|比较网-2537 | DOCX 文件的比较 比较后文本是重复的，而不是在输出中被识别为替换 |错误 |
|比较网-2533 | Word 文档与表格的比较问题（不正确的文档创建，禁止在 Word 格式的表格中显示更改）|错误 |
|比较网-2536 |修复 GroupDocs 整体解决方案比较问题 |错误 |

## 公共 API 和向后不兼容的更改

1. 当正在比较的文档中已经存在其他 *Revisions* 时，会出现重新显示文档中更改的内容的问题。

**修订** - 使用内置 Word 工具比较文档时收到的更改。

为了解决这个问题，创建了新的 *ShowRevisions* 属性，允许您在生成的文档中禁用这些 *Revisions* 的显示。下面给出了使用新属性的代码示例。

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {ShowRevisions = false};
    comparer.Compare(resultPath, options);
}
```
有关新属性的更多信息，请参见 [此处](https://docs.groupdocs.com/comparison/net/show-revisions/)。

2. [改进了 Words 文档的 Accept\Reject Revisions 功能](https://docs.groupdocs.com/comparison/net/accept-or-reject-revisions/)


