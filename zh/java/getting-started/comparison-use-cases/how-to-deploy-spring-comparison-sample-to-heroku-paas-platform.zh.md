---
id: 如何部署-spring-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform
title: "如何将 Spring 比较示例部署到 Heroku PaaS 平台"
weight: 21
description: "本文介绍了如何将 Spring 对比样例部署到 Heroku PaaS 平台"
keywords: "Spring Framework，比较文档，使用 Kotlin、Paas、Heroku 比较文件"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：电子表格、AutoCad、图像比较器
        description: "该产品允许比较 PowerPoint、代码、图像、AutoCad、Pdf、Word、Excel 和更多文档"
产品代码：比较
产品平台：java
如何：
名称：如何将 Spring 项目部署到 Heroku
        description: "了解如何将比较 Spring 示例项目部署到 Heroku"
脚步：
- 名称：系统要求
text: 将应用程序部署到 Heroku 需要哪些工具
- 名称：从 GitHub 获取示例应用程序
文本：下载预配置的示例应用程序以进行部署
- 名称：要部署到 Heroku 的项目中的要点
text: 开始部署之前在项目中配置的主要内容
- 名称：创建 Heroku 应用程序
文本：在 Heroku 帐户中创建应用程序，将在其中部署示例
- 名称：将示例应用程序部署到 Heroku
文本：运行命令以部署示例应用程序并检查一切是否正常
---

部署 Web 应用程序和网站的最流行的解决方案之一是 PaaS（平台即服务）。幸运的是，[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) 开发为可以轻松与它们集成。本文介绍了将使用 Spring Framework 开发的比较示例部署到非常流行的 PaaS 平台之一 - Heroku 的方式。比较示例完全免费使用和修改。它在 [在 GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Spring) 页面上可用。

＃＃＃ 系统要求

必须安装下一个应用程序才能将示例部署到 Heroku 服务器

1. `Heroku CLI` - 访问Heroku账号的工具（当然，你需要一个账号）
2. `Git` - 下载示例应用程序并将其部署到 Heroku 服务器的工具

### 从 GitHub 获取示例应用程序

1. 打开[GitHub页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 使用[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/)的示例爪哇/)
2.使用页面右上角的绿色按钮`Code`复制HTTPS存储库链接
3. 打开 Linux 终端或 Windows 命令行并运行下一条命令

```外壳
git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

该命令会将带有示例的项目从 GitHub 下载到您的本地目录。不要关闭命令行

### 项目中要部署到 Heroku 的要点

1. 构建 JAR 文件的 Maven 配置文件已配置并默认处于活动状态
2. 示例配置为使用 `PORT` 环境变量（文件 `configuration.yml`）。这很重要，因为 Heroku 可以在每次应用启动时更改端口

<script src="https://gist.github.com/groupdocs-comparison-gists/2f55731e40bfc2db4b42e48c58f8faa6.js"></script>

3.说Heroku如何运行应用程序被创建的特殊文件（`Procfile`）

<script src="https://gist.github.com/groupdocs-comparison-gists/90a35cf6498755ae7672cb83cfbd4d73.js"></script>

4. 创建文件 `system.properties` 以指定我们的应用程序需要的 Java 版本

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### 创建 Heroku 应用程序

1. 运行下一条命令以进入示例目录并使用 Heroku 帐户登录

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

最后一个命令将打开 Heroku 网站，您应该在其中登录到大型命令行工具访问您的帐户

2. 使用 next 命令创建新的 Heroku 应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/549e2bd14bbff90c1a1e8c6be2b64053.js"></script>

其中 `my-spring-comparer` 是应用程序的名称。您可以随意更改它，但它必须是唯一的。该命令的结果将是一个用于访问您的新应用程序的 Web url 和一个指向 heroku git 存储库的链接。这是命令行输出的示例：

```外壳
https://my-spring-comparer.herokuapp.com/ | https://git.heroku.com/my-spring-comparer.git
```

### 将示例应用程序部署到 Heroku

1. 接下来，使用下一个命令将 heroku 存储库链接添加为示例应用程序存储库的远程：

<script src="https://gist.github.com/groupdocs-comparison-gists/9b23f36cc6434900449e4906bed6d7cc.js"></script>
    



其中 `my-spring-comparer` 是 Heroku 应用程序的名称，`heroku-spring` 是 git 用来识别 heroku 存储库的名称。您可以更改它，但不要忘记新的。

2. 使用下一个命令将应用程序部署到 Heroku 服务器

<script src="https://gist.github.com/groupdocs-comparison-gists/cd1fc18b42f1c00841be0371c538385a.js"></script>
    



这是 Demos/Spring 一个你想要推送的示例的路径。该路径的根目录是示例的 git 项目的根目录。 `heroku-spring` 是上一步中的 heroku 存储库名称，用于识别它。 `master` 是 Heroku 存储库中的一个 git 分支。目前 Heroku 只部署了 `master` 和 `main` 分支。
    



该命令会将 Spring 示例上传到 Heroku 服务器并开始构建它。您将在命令行中看到构建过程的输出。一切都必须顺利完成。如果是这样，只需在您喜欢的浏览器中打开第 2 步中的链接 ([https://my-spring-comparer.herokuapp.com/](https://my-spring-comparer.herokuapp.com/)) 即可查看已上传应用。为了检查应用程序，您可以使用比较 UI 上传一些文件。

您可以在 Heroku [web 界面](https://dashboard.heroku.com/apps) 中管理您的应用程序

### 有用的命令

* 使用 next 命令显示 Heroku CLI 的常用帮助

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* 要显示特定命令的帮助，请在 `help` 词之后输入

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* 要显示特定应用程序的日志，请使用 next 命令（添加 `--tail` 参数以实时查看日志）

<script src="https://gist.github.com/groupdocs-comparison-gists/1fb868756cff79b05bbb951dd620f842.js"></script>

* 可以使用下一个命令访问远程文件系统

<script src="https://gist.github.com/groupdocs-comparison-gists/1b7968ffc4805be2774ef9c33de252a3.js"></script>

不要忘记，当应用程序重新启动时，远程文件系统中的所有更改都将丢失

* 您可以使用下一个命令重新启动应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/be60e3092d9e2515423a621e01a1833a.js"></script>

###更多机会

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 是一个现代、有用且非常强大的解决方案，用于比较不同的文档、文件和图像，而它的示例完全免费使用和打开要修改。您可以更改它们以使用 Heroku 附加组件，例如数据库或文件存储。 Spring 示例具有不同的配置（参见 `configuration.yml`），可通过设置环境变量获得。您可以在 Heroku Web 界面或命令行中执行此操作。此外，Spring 示例实现了使用 Google Drive API 和 Dropbox API 作为文件源进行比较。要了解更多信息，请参阅 [Google Drive API 集成](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) 和 [Dropbox API 集成](/比较/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/) 页面

### 获取免费 API 许可证

比较设置很多，例如【生成摘要页面】(/comparison/java/get-only-summary-page/)、【比较敏感度】(/comparison/java/adjusting-comparison-sensitivity/)等, 仅在获得许可的情况下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

以 Spring Framework 为核心创建的比较示例应用程序只是使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) 比较 Pdf、Word、Excel 文档、PowerPoint 演示文稿、图表的一个示例、CAD 文件、图像等 [支持的文件格式](/comparison/java/supported-document-formats/)。 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上有更多使用 GroupDocs.Comparison 与 Java 和 Kotlin 的示例。要获取更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较 AutoCad 文件](/comparison/java/how-to-compare-autocad-drawings)
* 如何 [depoy Ktor sample](comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) 到 Heroku PaaS 平台
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何 [depoy Dropwizard sample](/comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform) 到 Heroku PaaS 平台

