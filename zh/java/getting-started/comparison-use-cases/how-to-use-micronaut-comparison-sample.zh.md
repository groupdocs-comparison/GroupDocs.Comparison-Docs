---
id：如何使用 micronaut 比较示例
url: comparison/java/how-to-use-micronaut-comparison-sample
title: "如何使用 Micronaut 比较示例"
weight: 30
description: "本文介绍了使用 Micronaut 框架创建的 GroupDocs 比较示例"
keywords: "Micronaut 框架，比较文档，文件比较，Micronaut 框架的比较库"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：Word、Pdf、Excel比较库
        description: "该产品允许比较 Word、Pdf 和 Excel 文件"
产品代码：比较
产品平台：java
如何：
名称：如何使用 Micronaut 框架比较文件
        description: "了解如何使用 Micronaut 框架来比较文档"
脚步：
- 名称：使用的技术
文本：应用程序中使用的技术的描述
- 名称：应用架构描述
文本：应用程序架构的简短描述
- 名称：构建和运行应用程序
文本：使用 IDE 或 CLI 运行应用程序的方式
- 名称：应用程序内部的关键位置
文本：应用程序中最重要部分的实现
---
[GroupDocs.Comparison](https://products.groupdocs.com/comparison) 是为在 Java 环境中开发文档比较应用程序而创建的最灵活、功能强大且易于使用的 Java 库。 Micronaut 是一个现代的、基于 jvm 的全栈框架，用于构建模块化、易于测试的微服务和无服务器应用程序。将它们结合在一起，您可以轻松开发强大且现代的基于 Java 的应用程序，用于比较 Word 和 Pdf 文档、照片和图像、PowerPoint 演示文稿、AutoCad 绘图、XML、MSG、JSON、TXT 文件等等[支持的文件格式](/comparison/ java/支持的文档格式/）。在本文中，您将了解示例比较应用程序，这些源是完全免费的，可在 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/a5e2a25/Demos/微航）

### 使用的技术

1. Kotlin - 一种让开发人员更快乐的现代编程语言。与 Java 库完全兼容。
2. Micronaut - 基于 JVM 的框架，用于构建轻量级、模块化应用程序。
3. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) - Java、Kotlin 和 .NET 最灵活和现代的比较库
4. Thymeleaf - 适用于 Web 和独立环境的现代服务器端 Java 模板引擎。

### 应用架构描述

* `config` - 用于映射应用程序配置的类
* `manager` - 助手，例如管理文件路径的管理器
* `model` - 请求和响应模型类
* `modules` - 控制器和它们的 bean
* `usecase` - 业务逻辑

#### 额外文件

在来源：

* `Application.kt` - 应用程序的入口点
* `Defaults.kt` - 用作配置选项默认值的属性

在资源中：

* `application.conf` - 应用程序的配置
* `logback.xml` - 记录系统配置

### 构建和运行应用程序

#### 使用 IDE

应用程序入口点位于文件“Application.kt”中。必须运行函数“main”才能启动应用程序。它可以在任何 IDE 的帮助下完成。

#### 使用命令行

您可以使用 CLI 执行下一个命令轻松运行示例

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

该应用程序将使用 gradle 包装器运行，即在 `gradle` 目录中。在您喜欢的 Web 浏览器中打开 [http://localhost:8080/comparer](http://localhost:8080/comparison) 以查看 UI。

创建分发存档就像运行应用程序一样简单：

<script src="https://gist.github.com/groupdocs-comparison-gists/a57bf4fbc4e6aaeee637e5daf4fa5824.js"></script>

之后，转到 `.\build\distributions\` 目录，您将找到下一个分发文件：

* 比较-micronaut-22.3.tar
* 比较-micronaut-22.3.zip

它们都有`bin`目录和包含所有应用程序库的`lib`目录，其中包含运行应用程序的脚本

### 应用程序内部的关键位置

#### 控制器和bean

`mudules` 包里面是子包。他们每个人都处理来自客户端的单个请求。让我们以“比较”子包为例。

该软件包有两个文件：

1. `CompareController.kt` - 它包含类，将请求缓存到`/compare` url

<script src="https://gist.github.com/groupdocs-comparison-gists/ea8d8e0466e35d7e1c21b97f5b1a658b.js"></script>

该类的目标是捕获请求、提取参数、调用 bean 的方法并返回由 bean 创建的响应对象
2. `CompareBean.kt` - 它使用用例和传递的参数来创建响应对象。
bean 做的第一件事是检查请求路径是否在允许的目录中。 bean 使用 `PathManager` 来检查它

<script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

第二件事是检查样本是否支持请求的文件。 bean 使用特殊用例：`AreFilesSupportedUseCase`

<script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

第三步是创建文件的路径，结果文档将保存在其中

<script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

该示例使用临时文件更容易理解。修改示例以改用 IO 流很容易。临时目录的路径可以在 `application.conf` 中配置。默认使用系统目录

在下一步中，`CompareDocumentsUseCase` 用于比较源文档和目标文档并保存结果文件。它返回更改列表，该列表将发送给客户端。

<script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

更重要的一步是使用 RetrieveLocalFilePagesStreamUseCase 在结果文档中获取页面的输入流。这些页面将显示在客户端。

<script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

最后一步是映射比较 `ChangeInfo` 对象，它将文档中的每个更改表示为要发送给客户端的响应模型。

#### 理解用例

用例是一个只有一个目标的类。用例必须易于测试并且不能有任何状态。在示例中，每个用例都使用 `@Bean` 注释进行注释。这意味着它们将在嵌入到 Micronaut 框架机制的帮助下被注入控制器和其他 bean。同样的方式将解析用例构造函数的参数。

让我们以 `CompareDocumentsUseCase` 为例进行概述：

在用例运算符中，“invoke”被覆盖，以便可以像函数一样使用用例对象。用例的主要目标是比较保存结果文档的源文档和目标文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

用例的参数是源文档、目标文档和输出流。它使用 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 库比较文档并将结果保存到提供的流中。或者，它为每个文档设置密码。

比较库用于比较示例中的文档。它非常易于使用，因此您只需几行代码即可比较任何文档：

1. 实例化 `Comparer` 对象传递源文档路径或流。
或者，您可以使用“LoadOptions”配置比较器，将第一个参数解释为比较过程的源文本。它还具有传递带有字体的目录的属性，特定于文档。或者，您可以使用“LoadOptions”对象的特殊属性为源文档提供密码。 Comparer 实现了 Java `Closeable` 接口，因此建议使用 try-with-resources 来处理它。

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

2.使用比较器的`add`方法提供第二个文档或文本进行比较。可以向该方法传递相同的“LoadOptions”参数及其所有属性。此外，[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 支持多文档比较。为了使用它，只需使用比较器的 `add` 方法添加更多目标文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

3. 你需要做的最后一件事是调用`compare`方法开始比较。它将 `CompareOptions` 对象作为配置流程的第二个参数。这里只显示了该库的一些功能。在上面的代码中，比较器被配置为显示已删除的内容，检测样式更改并计算每次更改的坐标。更多选项可供配置。例如，您可以启用生成摘要页面、更改比较敏感度级别、禁用某些类型的更改、配置将用于突出显示更改的样式等等。阅读它们[在文档中](/comparison/java/getting-started/)。
方法 `comparer.getChanges()` 用于在 `apply` 块的末尾获取更改列表。

### 获取免费 API 许可证

一些比较功能，如比较的敏感度、生成摘要页面等，仅在许可时可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以使用该 API，而不受评估限制。

### 免费在线应用
您可以借助强大的免费应用程序检查比较算法。
尝试使用免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG、DWG、DXF 和其他文档 [GroupDocs 比较应用程序](https://products.groupdocs.app /比较）。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何[使用Ktor比较](/comparison/java/how-to-use-ktor-comparison-sample)示例
* 如何在 kotlin compose 应用程序中[显示 autocad 图纸预览](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)

