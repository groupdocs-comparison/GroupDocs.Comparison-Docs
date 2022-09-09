---
id：如何运行示例
url: comparison/net/how-to-run-examples
title: "如何运行示例"
weight: 6
description: "在本文中，您可以找到如何运行示例。我们提供多种解决方案，帮助您运行 GroupDocs.Comparison 示例，方法是构建您自己的或使用我们开箱即用的后端或前端示例。"
keywords: "如何运行比较，基本用法，如何运行示例"
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
名称：如何在 .NET 中运行示例
      description: "如何在 .NET 中逐步运行示例"
脚步：
- 名称：创建对象并加载源文件
text: 创建一个比较器类的对象。构造函数采用源文件路径参数。您可以根据需要指定绝对或相对文件路径。
- 名称：加载目标文件
text: 使用 Add 方法添加 tagret 文件的路径
- 名称：比较文件
文本：调用对象的比较方法并放入生成的文件路径参数。
---
{{< alert style="warning" >}}在运行示例之前，请确保 GroupDocs.Comparison 已成功安装。{{< /alert >}}

我们提供多种解决方案，帮助您运行 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 示例，方法是构建您自己的或使用我们的后端或前端示例盒子外面。

请从以下列表中选择一项：


## 从头开始构建项目

* 打开 Visual Studio 并转到 **File** -> **New** -> **Project**。
* 选择合适的项目类型 - 控制台应用程序、ASP.NET Web 应用程序等。
* 按照本 [指南]({{< ref "comparison/net/getting-started/installation.md" >}}) 从 Nuget 或 GroupDocs 官方网站安装 **GroupDocs.Comparison for .NET**。
* 像这样使用 **GroupDocs.Comparison for .NET** 编写您的第一个应用程序
```csharp
字符串 sourceDocumentPath = @"C:\source.docx"; // 注意：在此处输入源文档的实际路径
字符串 targetDocumentPath = @"C:\target.docx"; // 注意：在此处输入源文档的实际路径
字符串输出路径 = @"C:\result.docx"; // 注意：在此处输入源文档的实际路径
    

使用（比较器比较器 = 新比较器（源文档路径））
{
comparer.Add(targetDocumentPath);
比较器.比较（输出路径）；
}
```
* 构建并运行您的项目。
* 渲染的文档页面将在 *"outputPath"* 参数中指定的路径。

## 运行后端示例

**GroupDocs.Comparison** 的完整示例包托管在 [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET) 上。您可以从 [这里](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET/archive/master.zip) 下载 ZIP 文件，或者使用您最喜欢的 git 客户端克隆 GitHub 的存储库.
如果您下载 ZIP 文件，请解压缩本地磁盘上的文件夹。提取的文件和文件夹将如下图所示：

![](/comparison/net/images/how-to-run-examples.jpg)

在提取的文件和文件夹中，您可以找到 CSharp 解决方案文件。该项目是在 **Microsoft Visual Studio 2019** 中创建的。 **Resources** 文件夹包含示例中使用的所有示例文档和图像文件。
要运行示例，请在 Visual Studio 中打开解决方案文件并构建项目。要添加 **GroupDocs.Comparison** 的缺失引用，请参阅 [安装指南]({{< ref "comparison/net/getting-started/installation.md" >}})。所有函数都是从 **RunExamples.cs** 调用的。
取消注释您要运行的功能并注释其余部分。

![](/comparison/net/images/how-to-run-examples_1.png)

## 运行 MVC 示例

您可以按照以下步骤运行 [GroupDocs.Comparison for .NET MVC Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)：

* 从 GitHub 下载 [源代码](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC/archive/master.zip) 或克隆此存储库
```csharp
git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC
```
* 在 VisualStudio 中打开解决方案。更新 **web.config** 中的常用参数和 **configuration.yml** 中的示例相关属性以满足您的要求。
* 在您喜欢的浏览器中打开 [http://localhost:8080/comparison](http://localhost:8080/comparison)

有关项目配置的更多详细信息，请参阅此 [指南](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC#configuration)。

## 运行 WebForms 示例

您可以按照以下步骤运行 [GroupDocs.Comparison for .NET Web.Forms Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)：
* 从 GitHub 下载 [源代码](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms/archive/master.zip) 或克隆此存储库
```csharp
git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms
```
* 在 VisualStudio 中打开解决方案。更新 **web.config** 中的常用参数和 **configuration.yml** 中的示例相关属性以满足您的要求。
* 在您喜欢的浏览器中打开 [http://localhost:8080/comparison](http://localhost:8080/comparison)

有关项目配置的更多详细信息，请参阅此 [指南](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms#configuration)。

## 从 Docker 运行

使用 [Docker](https://www.docker.com/) 图像以简单的方式尝试 GroupDocs.Comparison for .NET 功能。以下是从 docker 映像运行 GroupDocs.Comparison for .NET 的命令。

```csharp
mkdir DocumentSamples
mkdir Licenses
docker run -p 8080:8080 --env application.hostAddress=localhost -v `pwd`/DocumentSamples:/home/groupdocs/app/DocumentSamples -v `pwd`/Licenses:/home/groupdocs/app/Licenses groupdocs/comparison
## Open http://localhost:8080/comparison in your favorite browser.
```

## 贡献

如果您想添加或改进示例，我们鼓励您为该项目做出贡献。此存储库中的所有示例都是开源的，可以在您自己的应用程序中自由使用。
要做出贡献，您可以分叉存储库、编辑代码并创建拉取请求。如果发现有帮助，我们将审查更改并将其包含在存储库中。

