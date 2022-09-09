---
id: 如何运行-spring-comparison-sample-using-docker
url: comparison/java/how-to-run-spring-comparison-sample-using-docker
title: "如何使用 Docker 运行 Spring 比较示例"
weight: 14
description: "这篇文章是关于使用 Docker 运行 Spring 比较示例以获得快速的即用型应用程序来比较文件"
keywords: "比较照片、Spring 比较工具、Spring 和 Docker、比较 API"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：图像、PowerPoint 和 AutoCAD 比较器
        description: "该产品允许比较图像、PowerPoint、AutoCad 和更多类型的文件"
产品代码：比较
产品平台：java
如何：
名称：如何在 Docker 容器中运行 Spring 项目
        description: "了解如何在 Docker 容器中运行和配置 Spring 项目"
脚步：
- 名称：弹簧比较应用程序
文本：什么是 Spring 比较示例应用程序以及为什么需要它
- 名称：系统要求
text：在 Docker 容器中运行应用程序需要哪些工具和文件
- 名称：启动 Spring 比较示例
文本：使用 Docker 配置、构建和运行比较示例应用程序
- 名称：配置比较 API
text：配置应用程序以根据您的需要对其进行自定义
---

您只需几个命令即可将 [Spring 比较示例](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Spring) 作为 Docker 容器运行。阅读本文后，您将拥有可以比较任何文档并突出显示差异的 Web 应用程序

### Spring 比较应用

Spring 比较示例是一个应用程序，它是使用 Spring Framework 和 [GroupDocs.Comparison API for Java](https://products.groupdocs.com/comparison/java) 功能创建的。它只是一个示例，但它仍然功能齐全，可用于比较任何[支持的文件格式](/comparison/java/supported-document-formats/)。此外，应用程序的源代码在 [GitHub 上] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Spring) 可用，因此您可以轻松添加一些功能或以任何您想要的方式更改应用程序。

＃＃＃ 系统要求

要将示例作为 Docker 容器运行，您需要安装 Docker 本身并下载比较应用程序：
1. 到官方 Docker 页面，根据你的操作系统下载安装程序
2. 使用 Docker 官方页面上的说明安装 Docker
3、打开【比较应用】（https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java）GitHub页面，下载示例源：
1.点击页面右上角的绿色按钮“代码”
2. 点击“下载 ZIP”链接
3.下载后，解压到你喜欢的任意目录

### 启动 Spring 比较示例

为了启动示例，首先构建 Docker 映像。它必须只做一次。构建完成后，您可以随时使用该镜像运行 Docker 容器

#### 比较应用程序的配置

在比较应用程序中有很多选项需要配置。其中一些可以在运行 Docker 容器时进行更改，而另一些则只能在创建 Docker 映像之前进行更改（实际上，您可以更新 sample 以使任何选项在创建 Docker 映像后可配置，这并不难）。
要更改应用程序的配置，您需要编辑 `configuration.yml` 文件。所有选项都在其中注释。

#### 构建示例的 Docker 映像

设置 GroupDocs 许可证：

1. 转到示例文件夹中的`\Demos\Spring\`
2. 将许可证文件放入“Licenses”目录

如果希望任何文件默认位于比较应用程序中，请执行以下步骤：

1. 转到示例文件夹中的`\Demos\Spring\`
2. 将文件放入`DocumentSamples`目录

_注意：当然您可以在使用比较 UI 运行应用程序后上传文件_

要为示例构建 Docker 映像并将其安装到本地 Docker 实例，请执行以下操作：

1. 转到示例文件夹中的`\Demos\Spring\`
2.在该目录下打开控制台窗口
3.运行next命令构建镜像

<script src="https://gist.github.com/groupdocs-comparison-gists/9ba24482d5625a6ba08c13045f7c115e.js"></script>

实际上就是这样。镜像已经构建并添加到本地 Docker 的镜像列表中。

_注意：上面命令中的`groupdocs_comparison_spring_sample`只是将要构建的图像的名称。你可以随心所欲地改变它，但不要忘记它，因为它将用于运行应用程序_

#### 使用预构建映像运行应用程序

要运行具有预构建 Docker 映像的比较 Spring 应用程序，请遵循以下步骤：

1. 转到示例文件夹中的`\Demos\Spring\`
2.在该目录下打开控制台窗口
3. 运行下一条命令创建镜像容器并运行应用程序

<script src="https://gist.github.com/groupdocs-comparison-gists/2b74fad512ad1f6155ad70eb4958d10e.js"></script>
   

之后，只需在任何 Web 浏览器中打开链接 [http://localhost:8080/comparison](http://localhost:8080/comparison) 即可查看比较应用程序

![](/comparison/java/images/how-to-run-spring-comparison-sample-using-docker.png)

关于命令的一些细节：
* `my-comparer` 是 Docker 容器的名称，可用于停止 docker 容器与应用程序。可以根据需要更改
* `8080:8080` 表示 Docker 容器内的应用程序正在使用端口 `8080` 并且 Docker 将其绑定到容器外的端口 `8080`，这要归功于您可以使用它在 Web 浏览器中访问应用程序
* 标志 `--rm` 表示 Docker 容器在停止后应该自动删除。如果需要在容器停止后保留该标志，则可以省略该标志
* `groupdocs_comparison_spring_sample` 是我们之前构建的图像的名称

要停止容器，只需在命令行中运行命令 `docker stop my-comparer`

### 配置比较 API

为了有机会配置应用程序，可以使用一些预定义的环境变量。例如，如果要隐藏下载按钮，只需在运行容器的命令中传递值为 `false` 的环境变量 `DOWNLOAD_ON`。这样，命令将如下所示：

<script src="https://gist.github.com/groupdocs-comparison-gists/136b93614d02f6c4d779620b83b89f98.js"></script>

还有下一个预定义的变量：
* `LIC_PATH` - 带有许可证文件的目录路径
* `DOWNLOAD_ON` - 在比较应用程序 UI 中启用/禁用下载按钮
* `UPLOAD_ON` - 启用/禁用按钮上传文件_（按钮在打开文档对话框的左侧）_
* `PRINT_ON` - 启用/禁用按钮以打印文档
* `BROWSE_ON` - 启用/禁用文档浏览对话框
* `FILES_DIR` - 上传文件的目录路径
* `RESULT_DIR` - 结果文件所在目录的路径
* `HOST_ADDRESS` - 服务器实例的主机名或 ip

_注意：请记住，`LIC_PATH`、`FILES_DIR` 和 `RESULT_DIR` 路径指向**内部** Docker 容器_的文件夹

#### 在运行之间保持数据

通常要求在应用程序运行之间保留文件。为此，您只需要使用 Docker 的卷。这是一个示例：添加参数 `-v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples` 以及传递环境变量 `FILES_DIR` 以创建新卷并将其作为包含文件的目录传递。这样命令就像：

<script src="https://gist.github.com/groupdocs-comparison-gists/6c2bae3b6197d6ea3aa78b6b8646e278.js"></script>

以下是有关该命令的一些详细信息：
* 选项 `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` 将比较应用程序配置为使用 Docker 容器内的目录 `/home/groupdocs/app/MyDocumentSamples` 作为文件夹来保存文件。可以改成其他路径，物理上这个目录在Docker镜像中是不存在的
* 选项 `-v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples` 配置 Docker 以创建名为 `groupdocs_comparison_spring_volume` 的新卷，并将其作为目录 `/home/groupdocs/app/MyDocumentSamples` 绑定到容器中，以便任何访问容器内的“MyDocumentSamples”实际上会在卷内进行更改。之后，停止使用选项 `--rm` 运行的容器，或者在手动删除容器的情况下，不会删除其中的卷和文件。运行附加卷的新容器很容易，因此文件将再次可用。

_注意：`groupdocs_comparison_spring_volume` 只是卷的名称。它可用于删除卷。您可以根据自己的喜好更改名称:)_

### 在 Docker 容器中使用比较示例的共同优势

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 是一种现代解决方案，用于比较大量 [支持的文件格式](/comparison/java/supported-document-formats/)。它将帮助您比较文件、提取源/目标和结果文本、预览更改、接受或拒绝它们、生成摘要、生成文件页面的预览以及 [更多](https://docs.groupdocs.com/comparison/ java/groupdocs-comparison-overview/)。同时，Docker 是一种现代软件，它让您有机会在没有安装环境的情况下构建和/或运行应用程序，这是它所必需的。至于 Spring 比较应用，你不需要安装和配置 Java、Maven 和其他 Java 的东西。

### 获取免费 API 许可证

您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

通过本文，您了解了如何运行 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) Spring 示例。它可以作为一个神话般的应用程序的核心，用于比较照片、代码文件、Word、Excel、PowerPoint 和其他文档。结果文档上突出显示了更改。现在，通过使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java)，可以轻松构建自己的比较器应用程序或在 Java 应用程序中使用比较功能。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何使用 Compose Desktop [比较任何文件](/comparison/java/how-to-compare-any-files-using-compose-desktop)
* How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container
