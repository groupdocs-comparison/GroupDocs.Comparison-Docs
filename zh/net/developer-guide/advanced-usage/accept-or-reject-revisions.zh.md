---
id：接受或拒绝修订
url: comparison/net/accept-or-reject-revisions
title: "接受或拒绝修订"
weight: 4
description: "按照本指南，您将学习如何使用内置的 Microsoft Word 功能应用或放弃在文档比较期间发现的修订。"
keywords: "修改、修改处理、接受或拒绝修改、申请修改进行修改"
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文档比较
    description: "使用 C# 语言和 GroupDocs.Comparison for .NET 以高性能方式本地比较文档"
产品代码：比较
产品平台：net
显示视频：真
如何：
名称：如何在 .NET 中接受或拒绝修订
    description: "逐步了解如何在 .NET 中接受或拒绝修订"
脚步：
- 名称：创建一个对象
text：创建一个 RevisionHandler 类的对象。构造函数采用修订路径或修订文件流。
- 名称：获取修订
text：调用RevisionHandler对象的GetRevisions方法，将值赋给RevisionInfo列表。
- 名称：接受或拒绝修订
text：如果列表元素类型等于 RevisionType 枚举的插入值，则接受 RevisionAction 枚举的值分配给元素的 Action 字段。
- 名称：应用修订更改
文本：要应用更改，请调用 RevisionHandler 对象的 ApplyRevisionChanges 方法。该方法采用结果文件的文件路径参数和 ApplyRevisionOptions 类的对象，该类应包含由 RevisionInfo 列表初始化的 Changes 字段。
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供从 Docx 文件格式获取修订、处理和保存处理结果的能力。
以下是从文档中*获取*修订、*接受/拒绝*修订以及*将处理结果写入*最终文件的步骤。

* 使用源文档路径或流实例化 [RevisionHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) 对象；
* 调用[GetRevisions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/getrevisions)方法获取检测到的修订列表；
* 将所需更改对象的 [Action](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisioninfo/properties/action) 设置为 [RevisionAction.Accept](https://apireference .groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) 或 [RevisionAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction)价值;
* 调用[ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index)方法，需要将新创建的实例传递给[ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) 对象并将结果文档的路径或流传递给它，收集修订中的更改。

还可以一起处理所有更改，对所有更改应用一个操作。以下是处理所有更改的步骤：
* 使用源文档路径或流实例化 [RevisionHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) 对象；
* 调用[ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index)方法，需要将新创建的实例传递给[ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) 对象并将操作传递给它 ([RevisionAction.Accept](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.words.revision/revisionaction)、[RevisionAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) 或 [RevisionAction .None](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction)）适用于所有修订。

[ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) 类：
* [更改](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/properties/changes) - 需要应用于最终文档的修订更改列表。
* [CommonHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/fields/commonhandler) - 允许您定义一个操作来处理所有修订的属性。

如果您没有将生成的文档的路径或文件传递给 [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges) 方法，则更改将写入进行修订的同一文件中。

以下代码示例演示了如何从文档中获取修订、接受/拒绝检测到的修订以及将更改保存到生成的文档。

## 接受或拒绝来自本地磁盘的修订

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## 接受或拒绝流中的修订

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(File.OpenRead("Document_with_revision.docx")))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## 接受或拒绝所有修订

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
	revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { CommonHandler = RevisionAction.Accept });
}
```

## 修改处理结果
下面是基于前面提供的代码的源文件和输出文件。

|源文件 |结果文件 |
| --- | --- |
| ![](/comparison/net/images/revision-file.png) | ![](/comparison/net/images/result-revision-file.png) |

## 更多资源
### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### 免费在线应用
除了功能齐全的 .NET 库，我们还提供简单但功能强大的免费应用程序。
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

