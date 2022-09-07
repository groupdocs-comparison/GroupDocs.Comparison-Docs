---
id: how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
title: "如何将 Ktor 比较示例部署到 Heroku PaaS 平台"
weight: 20
description: "本文介绍了将我们的 Ktor 比较示例部署到 Heroku PaaS 平台的方式"
keywords: "Ktor 框架，比较文档，与 Kotlin、Paas、Heroku 比较文件"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：Pdf、Word、Excel 比较器
        description: "该产品允许比较 Pdf、Word、Excel、PowerPoint、代码、图像、AutoCad 和更多文档"
产品代码：比较
产品平台：java
如何：
名称：如何将 Ktor 项目部署到 Heroku
        description: "了解如何将比较 Ktor 示例项目部署到 Heroku"
脚步：
- 名称：系统要求
text: 将应用程序部署到 Heroku 需要哪些工具
- 名称：从 GitHub 获取示例应用程序
文本：下载预配置的示例应用程序以进行部署
- 名称：要部署到 Heroku 的项目中的关键点
text: 开始部署之前在项目中配置的主要内容
- 名称：创建 Heroku 应用程序
文本：在 Heroku 帐户中创建应用程序，将在其中部署示例
- 名称：将示例应用程序部署到 Heroku
文本：运行命令以部署示例应用程序并检查一切是否正常
---
Platform as a service (PaaS) is very popular solution to deploy web applications and websites. Luckily, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) can easily be integrated with them. In the article is described how you can deploy comparison example, that is written with Ktor Framework to one of the most popular PaaS platform - Heroku. The comparison example is free to use and is available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor) page.


### System requirements


To deploy the sample to Heroku server you need next applications to be installed


1. `Heroku CLI` - to get access to your account (of course, you need an account)

2. `Git` - to load the sample application and to deploy it to Heroku server


### Getting sample application from GitHub


1. Go to [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) with samples of [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/)

2. Click green button `Code` on the right top of the page and copy HTTPS repository link

3. Open Windows Command Line or Linux terminal and run next command


```外壳

git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

示例应用程序已从 GitHub 下载到您的本地目录。不要关闭命令行

###项目中要部署到Heroku的关键点

1. `build.gradle.kts` 中增加了特殊的 gradle 任务。 Heroku 需要构建示例的可执行文件

<script src="https://gist.github.com/groupdocs-comparison-gists/9420eee014f7f425a6f53cc8405fb21d.js"></script>

2. 使用来自 `PORT` 环境变量的端口（文件 `application.conf`）。这很重要，因为 Heroku 可以在每次应用启动时更改端口

<script src="https://gist.github.com/groupdocs-comparison-gists/c3e61833f1878eccfd5c7bb4830f62e5.js"></script>

3. 创建文件 `Procfile` 是为了告诉 Heroku 如何运行应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/585de64fb7b5d3b0f8af68871f39161d.js"></script>

4. 创建文件 `system.properties` 以指定我们的应用程序需要的 Java 版本

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### 创建 Heroku 应用程序

1.在命令行中运行下一个命令

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

它将打开 Heroku 网页，您应该在其中登录以授予命令行工具访问您帐户的权限

2. 创建运行下一个命令的应用程序：

<script src="https://gist.github.com/groupdocs-comparison-gists/960345297cd9dd3cf427939d500a753b.js"></script>

其中 `my-comparison-app-name` 是应用程序的名称。您可以使用任何名称，但它必须是唯一的。该命令的结果将是一个用于访问您的新应用程序的 Web url 和一个指向 heroku git 存储库的链接：

```外壳

https://my-comparison-app-name.herokuapp.com/ | https://git.heroku.com/my-comparison-app-name.git
```

### 将示例应用程序部署到 Heroku

1. 添加 heroku git 存储库链接作为远程到运行下一个命令的示例应用程序存储库：

<script src="https://gist.github.com/groupdocs-comparison-gists/bc2086fe645337ae3e27fa9778766208.js"></script>
    



其中 `my-comparison-app-name` 是应用程序名称，`heroku` 只是 git 用来识别 heroku git 存储库的名称。您可以更改它，但不要忘记新的。

2. 将应用推送到 Heroku 服务器

<script src="https://gist.github.com/groupdocs-comparison-gists/11a09f4de71024831f9f931bd8e9621f.js"></script>
    



这里是 `Demos/Ktor` 一个你想要推送的示例的路径。该路径的根目录是示例的 git 项目的根目录。 `heroku` 是上一步的名称，用于标识 heroku git 存储库。 `master` 是 Heroku git 存储库中的一个 git 分支。 Heroku 仅部署 `master` 和 `main` 分支。
    



作为该命令的结果，示例将被上传到 Heroku 服务器并运行示例的构建。您将在命令行中看到构建的输出。一切都必须顺利完成。如果是这样，只需在浏览器中打开第 2 步中的链接 ([https://my-comparison-app-name.herokuapp.com/](https://my-comparison-app-name.herokuapp.com/))请参阅上传的应用程序。要检查应用程序，您可以使用比较 UI 上传一些文件。

您可以在 Heroku [web 界面](https://dashboard.heroku.com/apps) 中管理您的应用程序

### 有用的命令

* 要显示常用帮助，请使用下一个命令

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* 要显示特定命令的帮助，请在 `help` 词之后输入

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* 要显示日志，请使用下一个命令（添加 `--tail` 参数以实时显示日志）

<script src="https://gist.github.com/groupdocs-comparison-gists/8214014faef1b27e8e2279405b43093e.js"></script>

* 要访问远程文件系统，您可以使用下一个命令

<script src="https://gist.github.com/groupdocs-comparison-gists/5c46e7a117ec410deabd4e5d7a4abb60.js"></script>

请记住，当应用程序重新启动时，远程文件系统中的所有更改都将丢失

* 要重新启动应用程序，请使用下一个命令

<script src="https://gist.github.com/groupdocs-comparison-gists/fecb1c7111e46cc1d3c4cd8d912becd3.js"></script>

###更多机会

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) 是一个非常强大和现代的解决方案，用于比较不同的文件、文档和图像，而它的示例完全免费并且可以修改。您可以更改它们以使用 Heroku 附加组件，例如数据库或文件存储。 Ktor 示例有不同的配置（参见 `comparer.conf`），可通过设置环境变量获得。您可以在 Heroku Web 界面或命令行中执行此操作。

### 获取免费 API 许可证

比较设置很多，例如【生成摘要页面】(/comparison/java/get-only-summary-page/)、【比较敏感度】(/comparison/java/adjusting-comparison-sensitivity/)等, 仅在获得许可的情况下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 的 Ktor 示例应用程序只是使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) 的示例之一) 用于比较 Pdf、Word、Excel 文档、PowerPoint 演示文稿、图表、CAD 文件、图像等等 [支持的文件格式](/comparison/java/supported-document-formats/)。 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上有更多使用 GroupDocs.Comparison 与 Java 和 Kotlin 的示例。要获取更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较 AutoCad 文件](/comparison/java/how-to-compare-autocad-drawings)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何[部署 Spring 比较示例](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) 到 Heroku PaaS 平台
* 如何使用 Ktor Framework [使用比较工具](/comparison/java/how-to-use-ktor-comparison-sample)

