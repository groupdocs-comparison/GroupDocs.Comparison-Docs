---
id: how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
title: "如何将 Dropwizard 比较示例部署到 Heroku PaaS 平台"
weight: 22
description: "文章描述了 Dropwizard 比较示例部署到 Heroku PaaS 平台的过程"
keywords: "Dropwizard 框架，使用 Java 或 Kotlin 比较文档，平台即服务，Paas，Heroku"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：Pdf、PowerPoint、Word 比较器
        description: "该产品允许比较 Pdf、Word、Excel、PowerPoint、代码、图像、AutoCad 和更多文档"
产品代码：比较
产品平台：java
如何：
名称：如何将 Dropwizard 项目部署到 Heroku
        description: "了解如何将比较 Dropwizard 示例项目部署到 Heroku"
脚步：
- 名称：系统要求
text: 将应用程序部署到 Heroku 需要哪些工具
- 名称：从 GitHub 获取示例应用程序
文本：下载预配置的示例应用程序以进行部署
- 名称：项目中要部署到 Heroku 的一般点
text: 开始部署之前在项目中配置的主要内容
- 名称：创建 Heroku 应用程序
文本：在 Heroku 帐户中创建应用程序，将在其中部署示例
- 名称：将示例应用程序部署到 Heroku
文本：运行命令以部署示例应用程序并检查一切是否正常
---

有很多方法可以发布应用程序。其中最受欢迎的方法之一是借助 PaaS（平台即服务）部署网站或 Web 应用程序。幸运的是，创建 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) 以便与它们轻松集成。本文是关于将使用 Dropwizard 框架开发的比较示例应用程序部署到 Heroku - 非常流行的 PaaS 平台。比较示例应用程序完全免费使用和修改。它在 [在 GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Dropwizard) 页面上可用。

＃＃＃ 系统要求

在将示例部署到 Heroku 服务器之前安装下一个应用程序很重要

1. `Heroku CLI` - 在 Heroku 账户中创建应用的工具（当然，你需要一个账户）
2. `Git` - 使用示例应用程序存储库并将其部署到 Heroku 服务器的工具

### 从 GitHub 获取示例应用程序

1. 打开[GitHub页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 使用[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/)的示例爪哇/)
2.页面右上方有一个绿色按钮`Code`，点击后复制HTTPS仓库链接
3. 打开 Linux 终端或 Windows 命令行并运行下一条命令

```外壳
git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

之后，带有来自 GitHub 的示例项目将被下载到您的本地目录。不要关闭命令行


### 项目中要部署到 Heroku 的一般要点

1. 示例配置为使用 `PORT` 环境变量（文件 `configuration.yml`）。必须这样做，因为 Heroku 可以在每次应用启动时更改端口

<script src="https://gist.github.com/groupdocs-comparison-gists/03c23b58c3448dd517029a37d3f1118d.js"></script>

2. 为了让 Heroku 知道如何运行应用程序，创建了特殊文件（`Procfile`）

<script src="https://gist.github.com/groupdocs-comparison-gists/6c193c0ab14440ef6265018b54e2956e.js"></script>

3. 创建文件 `system.properties` 以指定应用程序需要的 Java 版本

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### 创建 Heroku 应用程序

1.运行下一个命令进入示例目录并运行登录过程

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Heroku 页面将在您必须登录的浏览器中打开，以便命令行工具可以访问您的帐户

2. 运行以下命令创建新的 Heroku 应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/70a482acde3a286d42a34939019c0a95.js"></script>

其中 `my-dropwizard-comparer` 是新应用程序的名称。您可以随意更改它，唯一的事情是 - 它必须是独一无二的。该命令的结果是一个用于访问您的新应用程序的 Web url 和一个指向 heroku git 存储库的链接。以下是命令行结果输出的示例：

```外壳
https://my-dropwizard-comparer.herokuapp.com/ | https://git.heroku.com/my-dropwizard-comparer.git
```

### 将示例应用程序部署到 Heroku

1. 接下来，使用以下命令将 heroku 存储库链接作为“远程”添加到示例应用程序存储库

<script src="https://gist.github.com/groupdocs-comparison-gists/bf5d9c5d71cdd1a4a7fdd52ee552942a.js"></script>
    



其中 `my-dropwizard-comparer` 是 Heroku 应用程序名称，`heroku-dropwizard` Heroku 存储库标识符。您可以更改它，但不要忘记新的。

2. 使用以下命令将应用程序部署到 Heroku 服务器

<script src="https://gist.github.com/groupdocs-comparison-gists/f605188b333f3ae13f048837f89892f4.js"></script>
    



这是 Demos/Dropwizard 一个你想要推送的示例的路径。它是相对的，从样本的 git root 开始。 `heroku-dropwizard` 是上一步中的 heroku 存储库标识符。 `master` 是 Heroku 存储库中的一个 git 分支。目前 Heroku 只部署了 `master` 和 `main` 分支。
    



该命令会将 Dropwizard 示例上传到 Heroku 服务器并开始构建。您将在命令行中看到构建过程的输出。一切都必须顺利完成。如果是这样，只需在您喜欢的浏览器中打开第 2 步中的链接 ([https://my-dropwizard-comparer.herokuapp.com/](https://my-dropwizard-comparer.herokuapp.com/)) 即可查看已上传的应用程序。为了检查应用程序，您可以在比较 UI 的帮助下上传一些文件。

要管理应用程序，您可以使用 Heroku [web 界面](https://dashboard.heroku.com/apps)

### 有用的命令

* 下面的命令将显示 Heroku CLI 的常用帮助

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* 要查看特定命令的帮助，请在 `help` 单词之后输入

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* 要查看特定应用程序的日志，只需运行下一条命令（您可以添加 `--tail` 参数以实时显示日志）

<script src="https://gist.github.com/groupdocs-comparison-gists/4984f5d703b956cb9c2db0193dfdcea3.js"></script>

* 访问远程文件系统运行命令如下

<script src="https://gist.github.com/groupdocs-comparison-gists/eb2c27b5111502e256b121fae24f50ad.js"></script>

注意：当应用重启时，远程文件系统中的所有更改都将丢失

* 要重新启动应用程序，请使用以下命令

<script src="https://gist.github.com/groupdocs-comparison-gists/f06a5c8ad2cd9c1d7313459d96abccce.js"></script>

###更多机会

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 不仅是现代而且是比较不同文档、图像和其他文件的强大解决方案。同时，对比样片完全免费使用和开放更改。您可以更新它们以使用 Heroku 附加组件，例如数据库或文件存储。 Dropwizard 示例有很多选项（请参阅 `configuration.yml`），可通过设置环境变量获得。在 Heroku Web 界面或使用命令行很容易更改它们。此外，Dropwizard 示例嵌入了使用 Google Drive API 或 Dropbox API 作为要比较的文件存储的解决方案。要了解更多信息，请参阅 [Google Drive API 集成](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) 和 [Dropbox API 集成](/比较/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/) 页面

### 获取免费 API 许可证

比较设置很多，例如【生成摘要页面】(/comparison/java/get-only-summary-page/)、【比较敏感度】(/comparison/java/adjusting-comparison-sensitivity/)等, 仅在获得许可的情况下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

使用 Dropwizard 框架创建的比较示例应用程序只是使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) 比较 Pdf、Word、Excel 电子表格、PowerPoint 演示文稿、图表、CAD 文件、 OpenOffice 文件、图像和更多[支持的文件格式](/comparison/java/supported-document-formats/)。您可以在 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上找到更多将 GroupDocs.Comparison 与 Java 和 Kotlin 结合使用的示例。有关更多详细信息、选项和示例，请浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较 AutoCad 文件](/comparison/java/how-to-compare-autocad-drawings)
* 如何 [depoy Ktor sample](comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) 到 Heroku PaaS 平台
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何 [depoy Spring sample](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) 到 Heroku PaaS 平台

