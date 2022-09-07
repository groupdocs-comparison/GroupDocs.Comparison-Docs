---
id：如何使用 javalin 比较示例
url: comparison/java/how-to-use-javalin-comparison-sample
title: "如何使用 Javalin 比较示例"
weight: 25
description: "本文描述了使用 Javalin 框架创建的 GroupDocs 比较示例"
keywords: "比较文档、Javalin 框架、使用 Kotlin 比较文件、使用 Kotlin 和 Javalin 框架比较工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：PowerPoint、Excel、图像比较API
        description: "该产品允许比较 PowerPoint、Excel 和图像文件"
产品代码：比较
产品平台：java
如何：
名称：如何使用 Javalin 框架
        description: "学习如何使用 Javalin 框架来比较文档"
脚步：
- 名称：使用的技术
文本：找出需要哪些技术并将在应用程序中使用
- 名称：通用项目结构
text: 了解项目的主要结构很重要
- 名称：如何运行示例
文本：应用程序可以运行的一种或几种方式
- 名称：应用程序内部的要点
text：在应用程序内部实现通用功能以使其工作
---
GroupDocs 比较库可以与许多流行的 Web 框架一起使用。其中之一是 Javalin 框架。通过这篇文章，您将了解，现代且强大的 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 可以与 Javalin 框架相结合来创建用于比较 AutoCad 绘图、PowerPoint 演示文稿、 Word、Excel 和 Pdf 文档、照片、图像和 [更多](/comparison/java/supported-document-formats/)。示例应用程序完全免费使用和更改。 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/d1e380f/Demos/Javalin) 上提供了源代码

### 使用的技术

1. Kotlin - 一种让开发人员更快乐的现代编程语言。与 Java 库完全兼容。
2. Javalin - Java 和 Kotlin 的简单 Web 框架。
3. Jetty - 嵌入到 Javalin Web 服务器中。
4. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) - Java、Kotlin 和 .NET 的现代比较库
5. Koin - 智能 Kotlin 注入库
6. Slf4j - 日志系统的包装器

### 常用项目结构

* `config` - 用于映射应用程序配置的 Kotlin 类
* `di` - Koin 依赖注入的模块
* `manager` - 使用路径的管理器
* `model` - 代表请求和响应的模型
* `modules` - 带有控制器的 URL 映射来处理请求
* `usecase` - 业务逻辑

#### 额外文件

在来源：

* `Application.kt` - 应用程序入口点
* `Defaults.kt` - 配置选项的默认值

在资源中：

* `application.conf` - 应用程序的配置
* `logback.xml` - 记录系统配置

### 如何运行示例

#### 使用 IDE

示例的入口点在文件“Application.kt”中。它包含运行应用程序必须执行的“main”函数。您可以使用最喜欢的 IDE 来完成。

#### 使用命令行

在示例目录中打开命令行。要运行示例，请执行下一个命令

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

该命令将在 gradle wrapper 的帮助下启动应用程序，即在 `gradle` 目录中。在 Web 浏览器中打开 [http://localhost:8080/comparer](http://localhost:8080/comparison) 以查看示例 UI。

要创建分发存档，只需使用下一个命令构建应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/77581fd6decb81d87d7a7487f997de7a.js"></script>

然后转到`.\build\distributions\`目录，你会看到分发文件：

* 比较-javalin-22.3.tar
* 比较-javalin-22.3.zip

其中有两个目录，`bin` 包含运行应用程序的脚本，`lib` 包含所有应用程序库

### 应用内的要点

#### 映射和控制器

包 `mudules` 包含子包，每个子包都是一个请求。例如，让我们回顾一下“比较”子包。

该软件包有两个文件：

1. `CompareModule.kt` - 此文件包含 url 映射，将在发送比较文档的请求时调用

<script src="https://gist.github.com/groupdocs-comparison-gists/20a0e6af013f3c0a8a57695efd2ed87d.js"></script>

该类做简单的事情：捕获请求，提取参数，调用控制器并返回响应对象
2. `CompareController.kt` - 使用用例和参数创建响应对象。
首先，在 PathManager 的帮助下，控制器检查请求路径是否在允许的目录中

<script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

其次，它检查样本是否支持请求的文件。为此，控制器使用特殊用例，其名称为 `AreFilesSupportedUseCase`

<script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

第三，控制器创建文件路径，用于保存比较过程的结果文档

<script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

使用了一些临时文件。需要尽量减少 RAM 的使用。任何人都可以轻松更改样本以避免保存任何文件。 `application.conf` 中有一个特殊的选项来配置临时目录的路径。默认使用系统临时目录。

下一步是使用 `CompareDocumentsUseCase` 比较保存结果文件的源文档和目标文档。用例返回更改列表，将其设置为响应对象以将其发送回客户端

<script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

Usecase `RetrieveLocalFilePagesStreamUseCase`，用于获取结果文档每一页的输入流

<script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

最后一件事是将 groupdocs 包中的 `ChangeInfo` 对象映射到响应模型中以用作结果

#### 理解用例

用例只是一个可以完成的动作。通常，它包含解决一项任务的业务逻辑。用例必须易于测试。在项目中，所有用例都配置为由 Koin 注入库创建。其中一些具有构造函数参数，这些参数将由 Koin 在创建用例实例时注入。
例如，让我们概述 `CompareDocumentsUseCase`

重写了“invoke”运算符，因此可以使用它的对象来调用用例，就像函数一样。用例有一个简单的目标 - 比较将结果写入提供的输出流的源文档和目标文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

它将源文档和目标文档的路径以及输出流作为参数。比较项目的结果数据将写入提供的流。作为一个选项，有参数可以为每个文档传递密码。

有一个强大而现代的 [GroupDocs.Comparison for Java/Kotlin](https://products.groupdocs.com/comparison/java/) 库用于比较文档。图书馆的比较过程非常容易。

要比较文档、演示文稿、图像等，只需执行以下步骤：
1. 创建传递源文档路径或流的 `Comparer` 类的对象。
加载选项可用于为源文档提供密码。此外，您可以使用选项配置比较器以将第一个参数用作比较过程的源文本。此外，还有一个选项可以使用特定于文档的字体来配置目录。 Comparer 实现了 Java 的`Closeable` 接口，使用后很容易释放内存。

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

2.调用比较器的`add`方法（在`use`块内）添加第二个文档或文本进行比较。该方法采用相同的 `LoadOptions` 参数来提供密码等。 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 支持多文档比较，因此您可以添加多个目标文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

3. 最后一步是调用`compare`方法，运行比较。该方法将 `CompareOptions` 对象作为第二个参数。在示例中，仅使用了几个可用选项。在上面的代码中，比较器被配置为处理样式更改、显示已删除的内容以及检索结果文档中每个更改的坐标。还有更多选项可用于配置比较过程。例如，很容易更改比较敏感度级别，启用生成摘要页面，启用/禁用每种类型的更改，在结果文档中配置它们的样式等等。该信息可以在 [in the documentation](/comparison/java/getting-started/) 中找到。
在 `apply` 块方法的末尾，`comparer.getChanges()` 用于获取更改列表。

#### 依赖注入

示例应用程序中最后一个有用的东西是一个对象“ModulesInjection”。它为 Koin 提供了 Koin 必须创建或注入的接口和类的信息。在项目中，配置了控制器、用例和管理器。配置 Koin 以注入新类非常容易。只需在此处的模块之一中指定它。

<script src="https://gist.github.com/groupdocs-comparison-gists/0754c1a4729f7b0f0e6d4828049d6a48.js"></script>

### 获取免费 API 许可证

许多比较设置，例如比较敏感度、生成摘要页面等，只有在设置了license时才可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以使用该 API，而不受评估限制。

＃＃＃ 结论

文章中描述了 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 示例，该示例是使用 Javalin Web 框架创建的。可以在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上找到更多使用 GroupDocs.Comparison for Java/Kotlin 的示例。您可以自由更改并将它们用作您自己的应用程序的核心，以便比较照片、Excel、Word、代码文件、PowerPoint 演示文稿等等[支持的文件格式](/comparison/java/supported-document-formats/ ）。

要获取详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何[使用Ktor比较](/comparison/java/how-to-use-ktor-comparison-sample)示例
* 如何[查看比较和对比](/comparison/java/how-to-see-comparison-and-contrast-of-essays) 论文
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

