---
id：比较变量和文档属性
url: comparison/net/compare-of-variables-and-document-properties
title: "比较变量和文档属性"
weight: 11
description: "本文介绍如何在 GroupDocs.Comparison for .NET 中激活文档属性的比较。"
keywords: "变量属性、内置属性、自定义属性、比较文档属性、CompareVariableProperty、CompareDocumentProperty"
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
名称：如何在 .NET 中使用变量和文档属性
      description: "逐步了解如何在 .NET 中比较变量和文档属性文档"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：指定必要的设置
text：创建一个选项对象，并指定 CompareVariableProperty 和 CompareDocumentProperty 为真值。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 允许您比较 WORD 文档的各种属性，例如 *Variable*、*Built* 和 *Custom* 属性。

CompareOptions 类的以下字段用于启用文档属性的比较功能：

* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) - 激活*variable*属性的比较；
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) - 激活 *built* 和 *custom* 属性的比较。

以下是激活比较文档属性的步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) 对象并设置 [CompareVariableProperty](https://apireference.groupdocs.com/comparison/net/groupdocs) .comparison.options/compareoptions/properties/comparevariableproperty) 属性为 *true* ([CompareDocumentProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) 为 *true * 用于 *built* 和 *custom* 属性）；
* 调用[Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer)方法并通过[CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison) .options/compareoptions) 上一步的对象。

## 用于激活比较变量、内置和自定义属性的示例代码块

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions();
    options.CompareVariableProperty = true; // to activate the comparison of variable properties
    options.CompareDocumentProperty = true; // to activate the comparison of built and custom properties
     

    comparer.Compare(resultPath, options);
}
```

## 比较属性的结果

---

比较属性的结果显示在单独的页面 - *属性摘要页面*上。

![](/comparison/net/images/properties-summary-page.png)

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
