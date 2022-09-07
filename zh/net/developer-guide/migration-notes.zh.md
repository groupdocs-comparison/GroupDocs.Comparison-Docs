---
id: 迁移笔记
url: comparison/net/migration-notes
title: "迁移说明"
weight: 3
description: ""
关键词：
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
名称：.NET 中的比较器迁移说明
    description: ".NET 中的比较器迁移说明一步一步"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：比较文件
text: 调用对象的 Compare 方法并放入生成的文件路径参数。
---
### 为什么要迁移？

  

以下是使用 GroupDocs.Comparison 自 19.9 版以来为 .NET 提供的新更新 API 的主要原因：

* **Comparer** 类作为**单一入口点**引入，用于比较任何受支持文件格式的文档与各种选项以及接受/拒绝在结果文档中发现差异的能力。
* 文档**比较选项**适用于所有文档类型。现在选项仅与比较类型相关，而不是使用与文档相关的选项。
* 整体文档相关类统一为通用。
* 产品架构从头开始重新设计，以简化传递选项和类以操作比较。
* 简化了文档信息和预览生成程序。

      



    



### 如何迁移？

以下是如何将文档与新旧 API 进行比较的简要比较。


**旧的编码风格**

```csharp
Comparer comparer = new Comparer();
ComparisonSettings settings = new ComparisonSettings() 
{ 
	StyleChangeDetection = true
};
ICompareResult result = comparer.Compare("source.docx", @"target.docx", settings);
result.SaveDocument("result.docx");
```

**新的编码风格**

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions()
    {
        DetectStyleChanges = true
    };
	comparer.Compare("result.docx", compareOptions);
}
```

