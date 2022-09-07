---
id：如何比较 AutoCAD 图纸
url: comparison/net/how-to-compare-autocad-drawings
title: "如何比较 AutoCAD 工程图"
weight: 1
description: "阅读这篇文章，了解如何使用 GroupDocs.Comparison for .NET 来查找 AutoCAD 文件和其他图形之间的差异。此外，在本文中，您可以找到在生产中使用此产品的选项"
keywords: "如何比较 AutoCAD 文件、CAD 文件、比较用例、比较 AutoCAD 文件"
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
名称：如何在 .NET 中比较 AutoCAD 图形
    description: "如何在 .NET 中逐步比较 AutoCAD 图纸"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较图纸
text: 调用对象的 Compare 方法并将生成的文件路径参数和选项对象放入。
---
随着设计的发展，记住从一个版本到另一个版本的更改变得越来越困难，尤其是在远程分布式团队中工作时。 AutoDesk 的 **DWG 比较** 功能提供了一种在两个图纸之间进行视觉比较的方法 - 它识别已从两个图纸中修改、添加或删除的对象，并使用颜色和修订云来显示差异。结果显示在名为*比较图*的新图纸中。

对比图中的三种颜色突出了共同对象和差异。您可以指定颜色来识别以下内容：

* 仅存在于第一幅图中的对象 - <font color="green">**绿色**</font> ，默认情况下
* 仅存在于第二幅图中的对象 – <font color="red">**red**</font> ，默认情况下
* 两幅图中未更改或共有的对象 – <font color="gray">**灰色**</font> ，默认情况下

要将图纸与 DWG Compare 进行比较，您应该：

1. 执行以下操作之一以启动 DWG 比较实用程序：
1. 单击 **Collaborate** 选项卡 > **Compare** 面板 > **DWG Compare**。
2. 单击 **Application** 菜单 > **Drawing Utilities** > **DWG Compare**。
2. 在**DWG 比较**对话框中，单击**浏览**选择第一个工程图文件。
3. 单击颜色以更改仅存在于第一个图形中的对象的默认颜色设置。
4. 浏览并选择要与第一个图纸进行比较的第二个图纸文件。
5. 单击颜色以更改仅存在于第二个图形中的对象的默认颜色设置。
6. 单击**比较**。将打开一个包含比较结果的新图形。

## 如何使用 GroupDocs.Comparison 比较 AutoCAD 工程图

尽管 AutoDesk 提供的绘图比较功能非常方便且功能强大，但它显然没有提供一种以编程方式比较绘图和处理发现的代码差异的方法。 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 提供简单方便的 API 来检测图纸之间的差异（以及许多其他 [支持的文件格式]({{< ref " compare/net/getting-started/supported-document-formats.md" >}})) 并应用或丢弃对结果文档的更改。这是一个DWG图纸比较的例子

|源/目标图纸 |
| --- |
|![](comparison/net/images/how-to-compare-autocad-drawings.png) |
|![](comparison/net/images/how-to-compare-autocad-drawings_1.png)|

以下是比较两个 DWG 文件的步骤：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象；
* 调用[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)方法并指定目标文档路径或流；
* 调用 [比较](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) 方法。

以下代码示例演示了上述方法。

```csharp
using (Comparer comparer = new Comparer(@"source.dwg"))
{
    comparer.Add("target.dwg");
    comparer.Compare("result.dwg");
}
```

结果，我们得到了一个 DWG 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font> 。

![](comparison/net/images/how-to-compare-autocad-drawings_2.png)

## 更多资源
### 高级用法主题
要了解更多关于文档比较功能的信息，请参阅[高级用法部分]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}})。

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

