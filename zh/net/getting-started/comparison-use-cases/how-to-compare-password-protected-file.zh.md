---
id：如何比较密码保护文件
url: comparison/net/how-to-compare-password-protected-files
title: "如何比较受密码保护的文件"
weight: 1
description: "阅读本文并了解如何使用 GroupDocs.Comparison for .NET 来查找受密码保护的文件的差异。"
keywords: "如何比较受密码保护的文件、受密码保护的文件、比较受密码保护的文件"
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
有时在处理文档时，您可能需要比较其中一个或什至两个文件都受密码保护的文件的结果，在这种情况下，尽管文件受到保护，仍然可以选择比较文件。此选项允许您比较可以为文件设置密码的任何格式的受保护文件。

![](/comparison/net/images/how-to-compare-password-protected-files-1.png)

比较两个受密码保护的文件的代码示例：

```csharp
string sourcePath = @"source.format"; // NOTE: Path to the source document 
string targetPath = @"target.format"; // NOTE: Path to the target document 
string resultPath = @"result.format"; // NOTE: Path to the result document    


Options.LoadOptions loadOptionsSource = new Options.LoadOptions {Password = "passwordSource"}; // NOTE: options with password for the first file
Options.LoadOptions loadOptionsTarget = new Options.LoadOptions {Password = "passwordTarget"}; // NOTE: options with password for the second file
            

using (Comparer comparer = new Comparer(sourcePath, loadOptionsSource))
{
    comparer.Add(targetPath, loadOptionsTarget);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
}
```
结果，我们得到了两个受密码保护的文件的比较文件。

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

