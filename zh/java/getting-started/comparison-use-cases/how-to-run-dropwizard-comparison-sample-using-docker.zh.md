---
id：如何运行-dropwizard-comparison-sample-using-docker
url: comparison/java/how-to-run-dropwizard-comparison-sample-using-docker
title: "如何使用 Docker 运行 Dropwizard 比较示例"
weight: 13
description: "这篇文章是关于使用 Docker 运行 Dropwizard 比较示例以获得快速的即用型应用程序来比较文件"
keywords: "比较照片、Dropwizard 比较工具、Dropwizard 和 Docker、比较 API"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：AutoCAD、PowerPoint、Word 比较器
        description: "该产品允许比较 AutoCad、PowerPoint、Word 和更多类型的文件"
产品代码：比较
产品平台：java
如何：
名称：如何在 Docker 容器中运行 Dropwizard 项目
        description: "了解如何在 Docker 容器中运行和配置 Dropwizard 项目"
脚步：
- 名称：Dropwizard 比较应用程序
文本：什么是 Dropwizard 比较示例应用程序以及为什么需要它
- 名称：系统要求
text：在 Docker 容器中运行应用程序需要哪些工具和文件
- 名称：启动 Dropwizard 比较示例
文本：使用 Docker 配置、构建和运行比较示例应用程序
- 名称：配置比较 API
text：配置应用程序以根据您的需要对其进行自定义
---

阅读本文，您将了解如何使用 Docker 只需几个命令即可运行 [Dropwizard 比较示例](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Dropwizard)。完成此操作后，您将拥有 Web 应用程序来比较任何文档并突出显示已识别的差异

### Dropwizard 比较应用程序

Dropwizard 比较示例是一个示例应用程序，它是使用 Dropwizard 框架创建的，以熟悉 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 功能。尽管它只是一个示例，但该应用程序功能齐全，可用于比较任何[支持的文件格式](/comparison/java/supported-document-formats/)。此外，由于应用程序的源可用 [在 GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Dropwizard)，您可以以任何方式轻松添加所需的更改应用程序或添加一些功能。

＃＃＃ 系统要求

要使用 Docker 运行示例，您需要安装 Docker 本身并下载比较应用程序：
1. 到官方 Docker 页面，根据操作系统下载安装程序
2. 按照官方 Docker 页面的说明安装 Docker
3. 打开HitHub页面，使用【比较应用】（https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java）下载源码：
1.点击页面右上角的绿色按钮“代码”
2. 点击“下载 ZIP”链接
3.下载完成后，解压到你喜欢的任意目录

### 启动 Dropwizard 比较示例

为了启动示例，您首先需要构建 Docker 映像。它必须只执行一次，之后您可以随时使用该映像运行 Docker 容器

#### 配置比较应用程序

比较应用程序有很多选项需要配置。其中一些可以在每次运行期间进行更改，而另一些只能在创建 Docker 映像之前进行更改（实际上，您可以自己更新 sample 以在创建 Docker 映像后使任何选项可配置）。
要更改应用程序配置，您只需编辑 `configuration.yml` 文件

#### 构建示例的 Docker 映像

如果希望默认情况下将任何文件放在比较应用程序中，请按照以下步骤操作：

1. 转到示例文件夹中的`\Demos\Dropwizard\`
2. 将文件放入`DocumentSamples`目录

_注意：当然你可以使用它的接口运行应用程序后上传文件_

设置 GroupDocs 许可证：

1. 转到示例文件夹中的`\Demos\Dropwizard\`
2. 将许可证文件放入“Licenses”目录

为示例创建 Docker 映像：

1. 转到示例文件夹中的`\Demos\Dropwizard\`
2.在这个目录下打开控制台
3.运行next命令构建镜像

<script src="https://gist.github.com/groupdocs-comparison-gists/2e53fb1ea7e4ed42c7762466f19e7264.js"></script>

实际上就是这样。镜像被构建并添加到 Docker 的镜像列表中。

_注意：命令中的`groupdocs_comparison_dropwizard_sample`只是将要创建的图像的名称。您可以使用任何您想要的名称，但不要忘记它，因为它将用于运行应用程序_

#### 使用预构建映像运行应用程序

要运行比较 Dropwizard 应用程序，您应该遵循以下步骤：

1. 转到示例文件夹中的`\Demos\Dropwizard\`
2.在这个目录下打开控制台
3. 运行下一个命令以运行带有比较应用程序的容器

<script src="https://gist.github.com/groupdocs-comparison-gists/ab9927537387e9f562e3f25146e730d1.js"></script>
   

之后，只需在您喜欢的浏览器中打开链接 [http://localhost:8080/comparison](http://localhost:8080/comparison) 即可查看比较应用程序

![](/comparison/java/images/how-to-run-dropwizard-comparison-sample-using-docker.png)

关于命令的一些细节：
* `my-comparer` 是 Docker 容器的名称，您可以使用它来停止应用程序。它可以更改为任何其他名称
* `8080:8080` 表示应用程序正在使用 Docker 容器内的端口 `8080`，Docker 将其连接到容器外的端口 `8080`，以便您可以使用它在浏览器中访问应用程序
* flag `--rm` 表示容器停止后会被Docker自动删除。可以省略该标志以在容器停止后保留容器
* `groupdocs_comparison_dropwizard_sample` 是我们创建的图像的名称

要停止容器，只需运行命令 `docker stop my-comparer`

### 配置比较 API

为了配置应用程序，您可以使用一些预定义的环境变量。例如，如果您想禁用下载结果文档的可能性，只需使用启动容器的命令传递值为 `false` 的环境变量 `DOWNLOAD_ON`。这样，命令将如下所示：

<script src="https://gist.github.com/groupdocs-comparison-gists/db2f770f4e36f9c56478366f13d0e4c1.js"></script>

还有下一个预定义的变量：
* `LIC_PATH` - 带有许可证文件的目录路径
* `DOWNLOAD_ON` - 在比较应用程序 UI 中启用/禁用结果文件下载按钮
* `UPLOAD_ON` - 启用/禁用按钮上传可用于比较的文件_（按钮在打开文档对话框的左侧）_
* `PRINT_ON` - 启用/禁用按钮以打印文档
* `FILES_DIR` - 用于存储上传文件的目录路径
* `RESULT_DIR` - 用于保存比较文档结果文件的目录路径

_注意：请记住，`LIC_PATH`、`FILES_DIR` 和 `RESULT_DIR` 路径指向**内部** Docker 容器_的文件夹

#### 在运行之间保持数据

通常需要在应用程序运行之间保留文件。为此，您需要使用 Docker 的卷。例如，您可以添加参数 `-v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples` 以及传递环境变量 `FILES_DIR` 以创建新卷并将其作为包含文件的目录传递。这样命令就像：

<script src="https://gist.github.com/groupdocs-comparison-gists/ea0d5fb6d7dfb582df75a2985caa6e08.js"></script>

关于命令的一些细节：
* 选项 `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` 将比较应用程序配置为使用 Docker 容器内的目录 `/home/groupdocs/app/MyDocumentSamples` 作为文件夹来保存文件。您可以将路径更改为任何其他，物理上该目录在 Docker 映像中不存在
* 选项 `-v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples` 表示 Docker 创建名为 `groupdocs_comparison_dropwizard_volume` 的新卷，并将其作为目录 `/home/groupdocs/app/MyDocumentSamples` 映射到容器中。这样，容器内对“MyDocumentSamples”的任何访问实际上都会在卷内进行更改。因此，停止使用选项 `--rm` 运行的容器或手动删除容器不会对其中的卷和文件产生任何影响。您可以通过将卷附加到新容器来轻松运行新容器，并且文件将再次可用。
_注意：`groupdocs_comparison_dropwizard_volume` 只是可以使用的卷的名称，例如，用于删除卷。你可以根据你的口味改变它:)_

### 将比较示例与 Docker 一起使用的优点

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 是一个现代库，有很多 [支持的文件格式](/comparison/java/supported-document-formats/)，可用于比较文件，预览更改，接受或拒绝它们，提取源/目标和结果文本，生成文件预览，生成摘要页面和 [更多](https://docs.groupdocs.com/comparison/java/groupdocs-comparison -概述/）。同时，Docker 是一种现代技术，它让您有机会构建和/或运行应用程序，而无需安装所需的环境。连接到 Dropwizard 比较应用程序，您不需要安装和配置 Java、Maven 和其他东西。

### 获取免费 API 许可证

您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

阅读本文，我们学习了如何运行 [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) Dropwizard 示例，该示例可用作用于比较照片、Word、Excel 的令人难以置信的应用程序的核心, PowerPoint 和其他文档。结果文档上有突出显示的更改。现在，您可以使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) 构建自己的比较器应用程序或在 Java 应用程序中使用这些功能。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何使用 Compose Desktop [比较任何文件](/comparison/java/how-to-compare-any-files-using-compose-desktop)
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container
