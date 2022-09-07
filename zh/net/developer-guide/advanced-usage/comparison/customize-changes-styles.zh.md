---
id：自定义更改样式
url: comparison/net/customize-changes-styles
title: "自定义更改样式"
weight: 4
description: "按照本指南，您将了解如何在使用 GroupDocs.Comparison for .NET 时自定义文档比较报告并修改检测到的更改的外观。"
keywords: "样式更改检测，比较文档样式，文档比较"
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
名称：如何在 .NET 中自定义更改样式
      description: "逐步了解如何在 .NET 中自定义更改样式"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：指定必要的设置
text：创建一个options对象，并通过需要参数的对象初始化InsertedItemStyle、DeletedItemStyle、ChangedItemStyle参数。
- 名称：比较文件
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 提供了比较选项集，其中一些默认值提供了适当的比较速度和质量。但是，可以根据各种参数及其值自定义比较选项，以满足某些特定需求。下面的示例演示了如何更改不同的更改类型样式。

以下是使用自定义更改样式设置比较两个文档的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 使用所需参数实例化 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象；
* 调用 Compare 方法并将 [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) 对象传递给方法。

以下代码片段演示了如何将文档与特定选项进行比较。

## 将本地磁盘中的文档与自定义更改样式进行比较

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	CompareOptions compareOptions = new CompareOptions()
	{
    	InsertedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		DeletedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		ChangedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        }
	};
comparer.Compare("result.docx", compareOptions);
}
```

## 将流中的文档与自定义更改样式进行比较

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	CompareOptions compareOptions = new CompareOptions()
	{
    	InsertedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		DeletedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		ChangedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        }
	};
comparer.Compare(File.Create("result.docx"), compareOptions);
}
```

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
