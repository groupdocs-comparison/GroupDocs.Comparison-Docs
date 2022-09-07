---
id: 显示间隙线
url: comparison/net/show-gap-lines
title: "显示间隙线而不是更改"
weight: 13
description: "本文介绍如何调整结果文档的显示，以便在 GroupDocs.Comparison for .NET 中将更改的内容替换为空行。"
keywords: "LeaveGaps、间隙线、空线"
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
名称：如何在 .NET 中显示间隙线而不是更改
      description: "如何逐步显示间隙线而不是.NET中的更改"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：指定必要的设置
text：创建一个选项对象，并指定 ShowInsertedContent 和 ShowDeletedContent 值为 false 和 LeaveGaps 值为 true。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许调整生成文档的格式。

默认情况下，来自两个输入文件（*source* 和 *target* 文件）的更改会添加到生成的文档中并在视觉上突出显示。这可以使用 [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) 和 [ShowDeletedContent](https://apireference.groupdocs.com /comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) 属性。

您还可以使用 [LeaveGaps](https://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) 属性来调整结果文档的显示，它允许用空行替换更改的内容。要使用此属性，您还需要激活以下属性：[ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) 和 [ShowDeletedContent](https ://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent）。

以下是获得上述结果的简单步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) 对象集 [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs. compare.options/compareoptions/properties/showinsertedcontent）和/或[ShowDeletedContent]（https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent）和必然[LeaveGaps]（https ://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps) 属性；
* 调用[Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer)方法并通过[CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison) .options/compareoptions) 上一步的对象。

## 获得所需结果的示例代码块

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
 
    CompareOptions options = new CompareOptions();
    options.ShowInsertedContent = false;
    options.ShowDeletedContent = false;
    options.LeaveGaps = true;
      

    comparer.Compare(resultPath, options);
}
```

## 示例代码执行

---

|默认结果 |没有 LeaveGaps 属性的结果 |
|:---:|:---:|
| ![](比较/net/images/show-gap-lines-default-result.png) | ![](比较/net/images/show-gap-lines-without-leavegaps.png) |

|默认结果 | LeaveGaps 属性的结果 |
|:---:|:---:|
| ![](比较/net/images/show-gap-lines-default-result.png) | ![](比较/net/images/show-gap-lines-with-leavegaps.png) |

## 更多资源

---

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
