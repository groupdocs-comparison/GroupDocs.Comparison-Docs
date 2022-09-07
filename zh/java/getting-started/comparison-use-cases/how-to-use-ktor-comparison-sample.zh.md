---
id：如何使用 ktor 比较样本
url: comparison/java/how-to-use-ktor-comparison-sample
title: "如何使用 Ktor 比较样本"
weight: 19
description: "本文描述了使用 Ktor 框架创建的 GroupDocs 比较示例"
keywords: "Ktor 框架，比较文档，用 Kotlin 比较文件，用 Kotlin 和 Ktor 框架比较工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：Pdf、Word、图像比较API
        description: "该产品允许比较 Pdf、Word 和图像文件"
产品代码：比较
产品平台：java
如何：
名称：如何使用 Ktor 框架
        description: "了解如何使用 Ktor 框架比较 Java 或 Kotlin 项目中的文档、图像和其他文件"
脚步：
- 名称：将使用哪些技术
文本：找出需要哪些技术并将在应用程序中使用
- 名称：项目的通用结构
正文：形成应用项目的主体结构很重要
- 名称：入口点或如何运行示例
text：应用程序启动的一种或几种方式
- 名称：应用程序内部的关键位置
text：在应用程序内部实现通用功能以使其工作
---
有许多流行的 Web 框架可以与 GroupDocs 比较库一起使用。 Ktor 是最现代和最强大的 Kotlin 框架之一。本文介绍了将 Ktor 框架与现代且强大的 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 一起用于比较 Word、Excel、PowerPoint、Pdf 文档、照片等的示例。该示例完全免费使用并可在 [GitHub 上] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor)

### 将使用哪些技术

1. Kotlin - 一种让开发人员更快乐的现代编程语言。与 Java 库完全兼容。
2. Ktor - 现代、开源、免费且有趣的 Web 框架。
3. Netty - 嵌入到 Ktor 版本的 Web 服务器中。
4. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) - Java、Kotlin 和 .NET 的现代比较库
5. Koin - 智能 Kotlin 注入库
6. Logback - 通用日志系统

###项目常用结构

* `config` - 用于映射应用程序和比较器配置的 Kotlin 类
* `di` - Koin 依赖注入模块
* `manager` - 广泛使用的操作的抽象层
* `model` - 请求/响应 Kotlin 类
* `modules` - 处理请求的 url 映射和控制器
* `status` - 处理异常的处理程序
* `usecase` - 业务逻辑

#### 其他重要文件

在来源：

* `Application.kt` - 应用程序入口点
* `Defaults.kt` - 如果未配置，则使用默认值

在资源中：

* `application.conf` - 应用程序配置
* `comparer.conf` - 示例配置
* `logback.xml` - 日志系统的配置

### 入口点或如何运行示例

#### 使用 IDE

应用程序的入口点在文件“Application.kt”中。必须运行一个“main”函数来启动应用程序。您可以在您最喜欢的 IDE 中执行此操作。

#### 使用命令行

要运行应用程序，请在 Ktor 示例目录中打开命令行并运行下一个命令

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

该命令将使用 gradle wrapper 运行应用程序，即在 `gradle` 目录中。在 Web 浏览器中打开 [http://localhost:8080/comparer](http://localhost:8080/comparison)。

您可以轻松地创建用于分发的存档。为此，只需使用下一个命令构建应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/77581fd6decb81d87d7a7487f997de7a.js"></script>

之后，您可以进入 `.\build\distributions\` 目录并找到下一个分发文件：

* 比较-ktor-22.3.tar
* 比较-ktor-22.3.zip

其中有两个目录，`lib` 包含所有应用程序库，`bin` 包含用于运行应用程序的脚本

### 应用程序内部的关键位置

#### 映射和控制器

包 `mudules` 包含一些子包。它们中的每一个都是一个请求。例如，让我们查看子包 `compare`。
该软件包有两个文件：
1. `CompareModule.kt` - 包含 url 映射，将在浏览器发送比较文档的请求时调用

<script src="https://gist.github.com/groupdocs-comparison-gists/6c365c5e96514aad2d97c319e67540d5.js"></script>

全部，该类完成：捕获请求，提取参数，调用控制器并返回响应对象
2. `CompareController.kt` - 结合用例结果和参数创建响应对象。
首先，使用 `PathManager` 检查请求路径是否在允许的目录中

<script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

然后，控制器检查比较应用程序支持的请求文件。为此，它使用了特殊的用例，称为 `AreFilesSupportedUseCase`

<script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

下一步是创建文件的路径，其中将保存比较过程的结果文档

<script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

临时文件用于最大限度地减少 RAM 的使用。更改应用程序很容易，因此它不会保存任何文件。临时目录可以在`comparer.conf`中指定。默认情况下，使用系统临时目录。

现在，控制器使用 `CompareDocumentsUseCase` 来比较源文档和目标文档并保存结果文件。此外，用例返回更改列表，稍后将设置为响应对象

<script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

下一个用例称为“RetrieveLocalFilePagesStreamUseCase”，用于获取结果文档每一页的输入流

<script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

最后一步是将 groupdocs `ChangeInfo` 对象映射到响应模型中，作为结果发送

#### 什么是用例以及如何使用它们

通常 - 用例是可以完成的单个精简。通常，它包含业务逻辑，只有一个目标，易于测试。项目中的所有用例都配置为由 Koin 创建。一些用例具有构造函数参数，这些参数在 Koin 将创建用例实例时注入。
作为一个例子，让我们概述一下 `CompareDocumentsUseCase`

用例重写了“invoke”运算符，因此可以使用它的对象作为函数来调用它。用例的唯一目的是比较源文档和目标文档并将结果写入提供的输出流。

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

作为参数，它采用源文档和目标文档以及输出流的路径，结果应该保存在其中。可选参数是每个文档的密码。

为了比较文档，我们使用强大而现代的 [GroupDocs.Comparison for Java/Kotlin](https://products.groupdocs.com/comparison/java/) 库。使用该库，比较过程非常简单。

第一步是创建 `Comparer` 类的对象。加载选项用于为文档提供密码。此外，通过选项，您可以将 Comparer 配置为使用第一个参数，而不是作为源文档的路径（流也可用），而是将其用作比较过程的源文本。此外，还有一个选项可以使用特定字体配置目录。 Comparer 实现了 Java `Closeable` 接口，因此很容易释放使用的内存。

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

在 `use` 块中，我们调用比较器的 `add` 方法来添加第二个文档或文本进行比较。该方法采用相同的“LoadOptions”参数。此外，[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 支持多文档比较，因此您可以添加多个目标文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

最后一点是调用 `compare` 方法，这将开始比较过程。如您所见，该方法将 `CompareOptions` 对象作为第二个参数。这里只使用了几个选项。它被配置为显示在目标文档中删除的内容，以识别和处理样式更改并提供结果文档中每个更改的坐标。还有更多可用的选项。例如，您可以启用生成摘要页面、更改比较敏感度级别、启用/禁用每种类型的更改、在结果文档中配置其样式等。您可以在 [in the documentation](/comparison/java/getting-started/) 中找到更多选项。
在 `apply` 块的末尾，我们使用 `comparer.getChanges()` 方法来获取更改列表。

#### 依赖注入

应用程序中更重要的一件事是对象“ModulesInjection”。它用于向 Koin 提供有关它应该创建或注入的类和接口的信息。这里是控制器、用例和管理器。添加任何必须由 Koin 注入的新类，在此处的模块之一中指定它非常重要。

<script src="https://gist.github.com/groupdocs-comparison-gists/0754c1a4729f7b0f0e6d4828049d6a48.js"></script>

### 获取免费 API 许可证

许多比较设置，例如，生成摘要页面，比较的敏感性等，只有许可证才能使用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

文章描述了 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 示例，该示例是使用 Ktor Web 框架实现的。在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上有更多使用 GroupDocs.Comparison for Java/Kotlin 的示例。它们完全免费且开放，可用作您自己的应用程序的核心，用于比较照片、Excel、Word、代码文件、PowerPoint 演示文稿等[支持的文件格式](/comparison/java/supported-document-formats/) .

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何 [使用 Dropbox API](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) 作为比较 API 的文件源
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

