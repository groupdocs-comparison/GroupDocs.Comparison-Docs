---
id: 生成文档页面预览
url: comparison/java/generate-document-pages-preview
title: "生成文档页面预览"
weight: 4
description: "按照本指南，您将学习如何使用 GroupDocs.Comparison for Java API 生成 PDF、Word、Excel、PowerPoint 文档缩略图和预览文档页面。"
keywords: "文档预览、预览文档页面、PNG 文档页面、JPG 文档页面"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文档比较工具
        description: "该产品允许比较 Pdf、Word、Excel、PowerPoint、AutoCad、图像、代码和更多文件格式。比较 API 还支持接受或拒绝更改、提取文档信息和生成比较报告"
产品代码：比较
产品平台：java
如何：
名称：如何生成文档页面预览
        description: "了解如何生成文档页面预览"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：创建“CreatePageStream”对象
文本：创建将扩展“CreatePageStream”类并实例化它的类。将调用方法“public OutputStream invoke(int pageNumber)”为文档的每一页提供输出流，以便将预览图像保存到这些流中
- 名称：创建“预览选项”
文本：创建“PreviewOptions”类的实例，将创建页面流对象作为参数传递
- 名称：配置预览选项
文本：使用帮助 op 'setPreviewFormat(PreviewFormats.PNG)' 方法更新图像预览格式和使用 'setPageNumbers(new int[]{1, 2})' 方法更新页码
- 名称：检索源文档
文本：使用 'getSource()' 方法检索源文档对象
- 名称：生成预览图像
文本：调用“generatePreview”方法将预览选项作为参数传递
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许使用 [generatePreview](https://apireference. [Document] 的 groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) 方法(https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Document) 类。

[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 类用于管理预览生成过程 - 指定所需的页码、图像格式等。

以下是使用 GroupDocs.Comparison API 生成文档预览的步骤：

* 创建 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类的新实例，并将源文档路径作为构造函数参数传递。
* 使用 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法将目标文档添加到比较中。
* [来源](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) 和[目标](https://apireference.groupdocs.com/comparison/java/ [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象的 com.groupdocs.comparison/Comparer#getTargets()) 属性允许访问源文档和目标文档并提供[generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) 方法。
* 实例化 [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 对象：
* 每个页面流创建的回调（参见事件处理程序 CreatePageStream）；
* 图像预览格式 - PNG / JPG / BMP，
*要处理的页码；
*预览图像的自定义大小（如果需要）。

{{<警报风格=“信息”>}}
由 [createPageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_CreatePageStream) 回调创建的流将在生成预览图像后自动处理一次。如果您需要实现自定义图像预览流处理，您必须传递附加参数 [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_ReleasePageStream) 来清理资源.
{{< /警报 >}}

* 调用 [Source](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) 方法的 [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.PreviewOptions)) /apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) 和[目标](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer# getTargets()) 文档并将 [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 传递给它。
    




这里有一个 [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 类的主要属性：
* [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setCreatePageStream(com.groupdocs.comparison.common.delegates.Delegates.CreatePageStream)) - 定义的回调创建输出页面预览流的方法；

* [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setReleasePageStream(com.groupdocs.comparison.common.delegates.Delegates.ReleasePageStream)) - 定义的回调删除输出页面预览流的方法。这可以在需要对资源处理进行高级控制时使用。

* [宽度](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setWidth(int)) - 预览图像宽度。该属性在需要自定义输出图像宽度时使用；

* [高度](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setHeight(int)) - 预览图像高度。该属性在需要自定义输出图像高度时使用；

* PageNumbers - 将被预览的页码；

* [PreviewFormat](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setPreviewFormat(int)) - 获取或设置预览图像格式，可以在图像质量之间进行选择和大小。 **[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP)** 格式应用于获得最佳图像质量。 **[JPG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#JPEG)** 格式在对图像大小有严格要求的情况下很有用 - 它产生最小的图像尺寸（和更快的加载图像预览），但质量低于 **[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP )**。默认选择 **[PNG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#PNG)** 格式 - 这是图像质量之间的黄金分割和大小。
    




以下代码片段演示了如何生成文档预览。

## 获取源文档的页面预览

<script src="https://gist.github.com/groupdocs-comparison-gists/74af4dca2cd81b3d14b5136fdd291f26.js"></script>

## 获取目标文档的页面预览

<script src="https://gist.github.com/groupdocs-comparison-gists/e34414e2945b837f57160900fa1e925b.js"></script>

## 获取结果文档的页面预览

<script src="https://gist.github.com/groupdocs-comparison-gists/5da1f1afc204abe5d0212d68f77e6701.js"></script>

## 为预览图像设置特定大小

在某些情况下，在文档页面预览生成期间设置特定的图像大小可能很有用。例如，要生成文档页面缩略图 - 小图像，它是用作占位符的原始图像的压缩预览图像。与原始页面图像相比，此类缩略图的主要优点是文件大小减小。

以下代码片段演示了如何为预览图像设置特定大小。

<script src="https://gist.github.com/groupdocs-comparison-gists/127ca350ae9fb6449f7fd2cdd1be32e0.js"></script>

{{< alert style="info" >}}NOTE: This feature is not supported for WordProcessing documents yet.{{< /警报 >}}

## 通过手动资源清理获取页面预览

默认情况下，生成和渲染文档页面预览图像流后会立即被释放。但是，可以实现自定义方法来处理此操作。

<script src="https://gist.github.com/groupdocs-comparison-gists/36201a68f984bd2840ccf577a823eb0f.js"></script>

## 更多资源

### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：

* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)


* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)


* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)


* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    




### 免费在线应用
除了功能齐全的 Java 库，我们还提供简单但功能强大的免费应用程序。
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
