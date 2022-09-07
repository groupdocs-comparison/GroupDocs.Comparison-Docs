---
id：如何比较任何文件使用撰写桌面
url: comparison/java/how-to-compare-any-files-using-compose-desktop
title: "如何比较 Kotlin Compose 桌面应用程序中的任何文件"
weight: 12
description: "这篇文章是关于在 Kotlin Compose 应用程序中使用比较 API"
keywords: "比较任何文件或文档，文件的差异，Kotlin Compose 中的 Diff 工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较文本
        description: "该产品允许比较文本或任何其他文件"
产品代码：比较
产品平台：java
如何：
名称：如何在 Kotlin Compose 项目中比较文本
        description: "了解如何在 Kotlin Compose 项目中比较文本或任何其他文件"
脚步：
- 名称：加载源文本或文件
text：创建一个比较器类的实例，将源文本或文件路径作为构造函数参数传递
- 名称：加载目标文本或文件
text：添加一个或多个目标文本或文件以将它们与源文本进行比较
- 名称：比较源和目标文本或文件
text: 运行比较过程传递路径，比较结果将被保存在哪里
---

在本文中，我们将讨论如何使用 Kotlin 使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison) API Compose Desktop 应用程序。阅读本文后，您会发现创建可在任何桌面平台（如 Windows、Linux 或 Mac）上运行的比较桌面应用程序很容易。 Kotlin Compose 是一种现代且快速增长的流行 UI 框架。它通常（*目前*）用于创建 Android 应用程序，但也支持创建桌面、Web 和多平台应用程序。本文不会详细介绍如何使用 Compose，因为 Internet 上的资料很多。

## Kotlin 的文件比较 API

在本文中，我将使用 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 与 Kotlin 一起创建桌面应用程序。除了最常用的图像格式（如 PNG、JPG/JPEG 和 GIF）外，还有大量 [支持的文件格式](/comparison/java/supported-document-formats/) 可供比较。此外，该 API 允许比较文字处理文档、电子表格、演示文稿、绘图、网页、电子邮件、源代码文件等等。此外，比较库可用于为任何 [支持的文件格式](/comparison/java/supported-document-formats/) 生成预览图像，以在您的应用程序中显示它们。

## 创建和配置 Compose 项目

### 项目创建

您可以通过在 IntelliJ Idea 项目创建窗口中选择 `Kotlin` -> `Compose Desktop Aplication` 选项轻松创建 Compose 项目。您必须选择项目名称、位置、`Build system`（推荐使用 Gradle Kotlin）和`Project JDK`（推荐 15 或以上）

### 通过添加 GroupDocs.Comparison 存储库和库来配置项目

要将比较 API 添加到您的项目，请遵循以下步骤：
1.打开`build.gradle.kts`
2. 转到 `repositories` 块并将 Maven GroupDocs 存储库添加到其中

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

3. 进入`dependencies`块，添加GroupDocs.Comparison库作为依赖（*推荐使用[最新版本](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/ repo/com/groupdocs/groupdocs-comparison) 库*)

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

4. 点击IDE `Gradle`面板上的`Reload All Gradle Projects`按钮刷新项目库

现在您可以在项目中使用比较 API

## 添加基本比较功能

为了有机会比较桌面应用程序中的文件，您需要一些基本的 UI 元素和功能。至少，必须有按钮来选择要比较的源文档和目标文档。此外，您需要一个按钮，它将运行比较过程。

### 基本用户界面元素

首先，创建变量，您将在其中存储源文档和目标文档的路径。使用 `mutableStateOf` 和 `remember` 的原因可以在 Compose 文档中找到

```kotlin
    val sourcePath = remember { mutableStateOf<String?>(null) }
    val targetPath = remember { mutableStateOf<String?>(null) }
```

添加按钮以选择源文件进行比较。第二个按钮看起来一样，只是更改文本和变量。用 Compose `Row` 或 `Column` 包围它们并添加一些视觉样式是个好主意

<script src="https://gist.github.com/groupdocs-comparison-gists/542ddc34f70deb8cbcfca719d3900605.js"></script>

添加按钮以运行比较过程

<script src="https://gist.github.com/groupdocs-comparison-gists/d28868d161134606a3aa62d8542f58d3.js"></script>

### 附加应用功能

为了选择文件，您的应用程序需要文件选择对话框。目前，Compose 没有自己的对话框，但不要忘记我们仍然使用 Java。通过这种方式，我们可以使用标准的 Java `JFileChooser` 类。

<script src="https://gist.github.com/groupdocs-comparison-gists/caa93da30f5babc0966765cc58ffb95a.js"></script>

此函数将打开对话框以选择文件，然后将文件的路径设置为作为参数可变状态传递。 JFileChooser 可以配置为按格式过滤文件，设置起始目录等。

### 使用比较 API 获取文档的差异

比较 API 有很多功能和设置，但我们将只使用其中的百分之几，以免使本文变得太难。比较文件并得到结果只是 3 行代码。要做到这一点，只需按照接下来的**编号**步骤：

1. 创建 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 类的对象，将源文档路径传递给它。
* 或者，您可以创建比较器对象传递给它的输入流，以避免将源文件保存在任何地方
* 您可以传递 `LoadOptions("document-password")` 作为第二个参数来比较受密码保护的文档
* 可以将 `LoadOptions(true)` 作为第二个参数传递，以使用字符串而不是文件创建比较器对象。这样第一个参数必须是要比较的字符串
* 要启用日志记录，请将 `ComparerSettings` 类的对象作为附加参数传递。该类具有有用的记录器字段
2. 使用适当的 [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add-java.lang.String-) 方法将第二个文档路径添加到比较器对象。
* p.1 中的所有附加选项。也可以在这里
3.调用[compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))方法得到两个文档的比较结果。
* 配置比较过程，可以通过[CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions)、[SaveOptions](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions）或两者。这里只是一些设置：
* 使用文档元数据
* 使用密码保护结果文件
* 配置文档添加、删除、更改部分的样式
* 改变比较的敏感度
*启用/禁用不同类型的更改
* 生成摘要页面
* 还有[更多](/comparison/java/comparison/)

这是比较文件的代码：

<script src="https://gist.github.com/groupdocs-comparison-gists/07b102aec320458b093158f5197bb39b.js"></script>

在上面的代码中我们使用系统临时目录和静态方法[FileType.fromFileNameOrExtension](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#fromFileNameOrExtension-java.lang.String- )，检测文件类型，创建保存结果文件的路径。您可以更改它以将结果文件保存到 java 输出流。 *注意：这里的结果文件，总是同名`Result`。这意味着每个比较过程都会替换之前的结果文档。*您可以调用[FileType.getSupportedFileTypes](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#getSupportedFileTypes--)获取您拥有的比较库版本的所有支持文档类型的方法。

### 将结果文档保存到客户端选择的位置

<script src="https://gist.github.com/groupdocs-comparison-gists/02051b940d9777eaac914946acd22de4.js"></script>

这里我们只是使用 JFileChooser 保存对话框让用户有机会选择保存结果文件的位置。之后，我们将生成的文件移动到新位置。当然这里必须添加一些检查和通知，这只是示例。

### 更多比较 API 机会

最小的应用程序功能已经实现。但是有很多可以改进的地方。例如，很容易显示源、目标和结果文档，显示每个更改，让用户有机会在保存文档之前接受或拒绝任何更改等。

#### 在 Compose Desktop 中显示文件中的图像

Compose Desktop 已经有画家来显示资源中的图像。但是我们需要额外的资源加载器来显示文件中的图像。这里只是一个简单的例子：

<script src="https://gist.github.com/groupdocs-comparison-gists/eae238d65e5fac06b7afbdf95aed1c14.js"></script>

这是在 Compose 函数中使用此加载器的示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/4da2c9d2d8c9ed67a2f224f1e1592df0.js"></script>

#### 显示结果文档的页面

为了显示结果文档的页面，我们需要[为每个页面生成预览](/comparison/net/generate-document-pages-preview/)。幸运的是，比较 API 有特殊的功能可以做到这一点。

这是生成预览图像的示例：

<script src="https://gist.github.com/groupdocs-comparison-gists/33607095e596a70efc85d61740a542e0.js"></script>

[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) 类不仅可以设置输出图像格式，还可以指定图像的宽度、高度、页面到过程等等。

#### 使用比较 API 显示更改

除了生成预览之外，[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 提供了获取更改列表并接受/拒绝任何更改的机会。为此，您需要在调用后使用方法 [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges-com.groupdocs.comparison.options.GetChangeOptions-) [比较](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare-java.lang.String-) 方法。您可以通过 [GetChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/GetChangeOptions) 来配置过滤器，但不是必须的。

<script src="https://gist.github.com/groupdocs-comparison-gists/3ce0ef2b0ef1744448e9a4cf1e05da6a.js"></script>

如上所述，方法 [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges--) 返回更改列表，每个更改都有很多信息，如：
* 更改的 [唯一 id](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getId--)
* [更改文本](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getText--) 来自结果文档
* [之前的文字](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getSourceText--) 更改
* [文本之后](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getTargetText--) 更改
* 页面上[框的坐标](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getBox--)，其中更改位于文档中
* [样式列表](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getStyleChanges--) 更改
* 和 [等等](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo)

### 获取免费 API 许可证

大多数选项只有在设置许可证后才可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

在本文中，仅显示了 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 功能的一小部分。要获取更多信息，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。此外，在 [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Compose) 上，我们有类似的将比较 API 与 Compose 桌面框架一起使用的示例。联系我们 [在论坛上](https://forum.groupdocs.com/) 解决您的问题。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何在 kotlin compose 应用程序中[显示 autocad 图纸预览](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application)
* 如何[比较 Java 代码文件](/comparison/java/how-to-compare-images-using-java-or-kotlin) 使用 Java 或 Kotlin 应用或拒绝更改
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
