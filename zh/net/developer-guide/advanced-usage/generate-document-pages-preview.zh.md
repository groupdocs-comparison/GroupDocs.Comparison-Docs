---
id：生成文档页面预览
url: comparison/net/generate-document-pages-preview
title: "生成文档页面预览"
weight: 4
description: "按照本指南，您将了解如何使用 GroupDocs.Comparison for .NET API 生成 PDF、Word、Excel、PowerPoint 文档缩略图和预览文档页面。"
keywords: "文档预览、预览文档页面、PNG 文档页面、JPG 文档页面"
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
名称：如何在 .NET 中生成文档页面预览
    description: "逐步了解如何在 .NET 中生成文档页面预览"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text：使用 Add 方法添加 tagret 文件的路径。
- 名称：比较文件
text：不带参数调用对象的比较方法。
- 名称：创建设置对象
text：创建 PreviewOptions 类的对象，并为其初始化必要的参数。
- 名称：为源文档或目标文档生成预览
text：调用Comparer对象所需文档的GeneratePreview方法。
- 名称：生成结果文档的预览
text：创建 Document 类的对象。构造函数采用结果文件流参数。使用 PreviewOptions 参数调用 GeneratePreview 方法。
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) 允许使用 [GeneratePreview](https://apireference. [Document](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/document) 类的 groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) 方法。

[PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) 类用于管理预览生成过程 - 指定所需的页码、图像格式等。

以下是使用 GroupDocs.Comparison API 生成文档预览的步骤：
* 创建 [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 类的新实例，并将源文档路径作为构造函数参数传递；
* 使用 [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) 方法将目标文档添加到比较中；
* [来源](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/source) 和[目标](https://apireference.groupdocs.com/net/comparison/groupdocs. [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) 对象的 comparison/comparer/properties/targets) 属性允许访问源文档和目标文档并提供 [GeneratePreview](https: //apireference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) 方法；
* 实例化 [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) 对象：
* 为每个页面流创建委托（参见事件处理程序 CreatePageStream）；
* 图片预览格式——PNG/JPG/BMP；
*要处理的页码；
*预览图像的自定义大小（如果需要）。
{{< alert style="info" >}}由 [CreatePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream) 委托创建的流将是生成预览图像后自动处理一次。如果您需要实现自定义图像预览流处理，您必须传递附加参数 [ReleasePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) 来清理资源.{{< /alert >}}
* 调用[Source](https://apireference.groupdocs.com/net/comparison/)的[GeneratePreview](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview)方法groupdocs.comparison/comparer/properties/source) 和 [Targets](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/targets) 文档并通过 [PreviewOptions](https:// apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions）。

这里有一个 [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) 类的主要属性：
* [CreatePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream) - 定义创建输出页面预览流的方法的委托；
* [ReleasePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) - 定义删除输出页面预览流的方法的委托。这可以在需要对资源处理进行高级控制时使用。
* [宽度](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/width) - 预览图像宽度。该属性在需要自定义输出图像宽度时使用；
* [高度](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/height) - 预览图像高度。该属性在需要自定义输出图像高度时使用；
* [PageNumbers](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/pagenumbers) - 将被预览的页码；
* [PreviewFormat](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/previewformat) - 获取或设置预览图像格式，可以在图像质量和大小之间进行选择。 **BMP** 格式应用于获得最佳图像质量。 **JPG** 格式在对图像尺寸有严格要求的情况下会很有用 - 它会生成最小的图像尺寸（以及更快的加载图像预览），但质量低于 **BMP**。默认选择 **PNG** 格式 - 这是图像质量和大小之间的黄金分割。

以下代码片段演示了如何生成文档预览。

## 获取源文档的页面预览

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Source.GeneratePreview(previewOptions);
}
```

## 获取目标文档的页面预览

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Targets[0].GeneratePreview(previewOptions);
}
```

## 获取结果文档的页面预览

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    document.GeneratePreview(previewOptions);
}
```

## 为预览图像设置特定大小

在某些情况下，在文档页面预览生成期间设置特定的图像大小可能很有用。例如，要生成文档页面缩略图 - 小图像，它是用作占位符的原始图像的压缩预览图像。与原始页面图像相比，此类缩略图的主要优点是文件大小减小。

以下代码片段演示了如何为预览图像设置特定大小。

```csharp
using (Comparer comparer = new Comparer("source.pptx"))
{
	comparer.Add("target.pptx");
    comparer.Compare("result.pptx");
    Document document = new Document(File.OpenRead("result.pptx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    previewOptions.Height = 1000;
    previewOptions.Width = 1000;
    document.GeneratePreview(previewOptions);
}
```

{{< alert style="info" >}}注意：WordProcessing 文档尚不支持此功能。{{< /alert >}}

## 通过手动资源清理获取页面预览

默认情况下，生成和渲染文档页面预览图像流后会立即被释放。但是，可以实现自定义方法来处理此操作。

```csharp
// Method should match with ReleasePageStream delegate signature
private void UserReleaseStreamMethod(int pageNumber, Stream stream)
{
	Console.WriteLine($"Releasing memory for page: {pageNumber}");
    stream.Close();
}
 
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    // here we set delegate target method
    previewOptions.ReleasePageStream = UserReleaseStreamMethod;
    document.GeneratePreview(previewOptions);
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
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 等文档 [GroupDocs 比较应用程序](https://products.groupdocs.app/comparison ）。

