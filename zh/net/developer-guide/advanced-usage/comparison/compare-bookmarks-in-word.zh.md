---
id: 比较-bookmarks-in-word
url: comparison/net/compare-bookmarks-in-word
title: "比较 Word 文档中的书签"
weight: 12
description: "本文介绍如何在 GroupDocs.Comparison for .NET 中激活 Word 格式的书签比较。"
keywords: "书签, Word, word, docx, doc, 比较书签, word 书签, CompareBookmarks, 书签比较"
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
名称：如何在 .NET 中比较 Word 文档中的书签
      description: "逐步了解如何在 .NET 中比较 Word 文档中的书签"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：指定必要的设置
text：创建一个选项对象并指定为 true 值的 CompareBookmarks。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许比较 WORD 文档中的书签。

以下是比较文档书签的步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) 对象并初始化 [CompareBookmarks](https://apireference.groupdocs.com/comparison/net /groupdocs.comparison.options/compareoptions/properties/comparebookmarks) 属性为 **true**；
* 调用[Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer)方法并通过[CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison) .options/compareoptions) 上一步的对象。

## 演示如何比较书签的示例代码块

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
     

    comparer.Compare(resultPath, new CompareOptions {
        CompareBookmarks = true
    });
}
```

## 将文档与启用的 CompareBookmarks 选项进行比较后的结果

---

比较书签的结果在文档中显示为插入的注释和描述。请参阅下面的图像示例：

![](comparison/net/images/compared-bookmarks.png)

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
