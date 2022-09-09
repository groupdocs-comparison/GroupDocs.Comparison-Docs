---
id：如何以最简单的方式比较文档
url: comparison/java/how-to-compare-documents-in-the-easiest-way
title: "如何以最简单的方式比较文档"
weight: 16
description: "这篇文章是关于使用 GroupDocs.Comparison API 比较文档的最简单方法"
keywords: "比较文档、Spring 比较 API、Dropwizard 比较 API、Docker 比较工具"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：差异检查器
        description: "该产品允许检查文件的差异"
产品代码：比较
产品平台：java
如何：
名称：如何检查两个文件是否相同
        description: "了解如何在 Java 或 Kotlin 项目中使用差异检查器"
脚步：
- 名称：加载源文档
文本：创建一个比较器类的实例，将源文档作为构造函数参数传递
- 名称：加载目标文档
文本：添加一个或多个目标文档以将它们与源文档进行比较
- 名称：比较源文档和目标文档
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
有时需要尽可能快地比较两个 Pdf、Word 或 Excel 文档，而无需安装大量软件。如果您安装了 Docker，最简单的方法是将其与 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 一起使用

### 各种 GroupDocs.Comparison 示例

为了向我们的客户提供更多便利，我们发布了不同配置的比较样本。您可以选择最适合您需求的。要找到所有这些并获取最新版本，请访问我们的 [Docker Hub 页面](https://hub.docker.com/r/groupdocs/comparison)

这里只是一些配置：

1.`groupdocs/比较：<VERSION> -java-openjdk8-bullseye-spring` - 基于 OpenJDK 8 和 Debian Bullseye
2.`groupdocs/比较：<VERSION> -java-openjdk11-bullseye-spring` - 基于 OpenJDK 11 和 Debian Bullseye
3.`groupdocs/比较：<VERSION> -java-openjdk18-bullseye-spring` - 基于 OpenJDK 18 和 Debian Bullseye
4.`groupdocs/比较：<VERSION> -java-openjdk8-bullseye-dropwizard` - 基于 OpenJDK 8 和 Debian Bullseye
5.`groupdocs/比较：<VERSION> -java-openjdk11-bullseye-dropwizard` - 基于 OpenJDK 11 和 Debian Bullseye
6. `groupdocs/比较：<VERSION> -java-openjdk18-bullseye-dropwizard` - 基于 OpenJDK 18 和 Debian Bullseye

哪里`<VERSION> ` 应替换为您要使用的比较版本。

注意：我们将在不久的将来添加新配置。其中一些已经在工作中，例如，使用 Ktor 和 Micronaut。随意在 [Docker Hub 页面](https://hub.docker.com/r/groupdocs/comparison) 上检查实际配置

＃＃＃ 系统要求

使用 GroupDocs.Comparer API 没有任何要求。您只需要安装 Docker、Web 浏览器和 Internet 连接。

### 使用 Docker 运行 GroupDocs.Comparer

#### 使用命令行运行

运行 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 应用程序的最简单方法是使用命令行。此外，使用此命令，您可以在任何操作系统上运行应用程序，如 Windows、Linux 或 Mac。

这是运行比较器的命令：

<script src="https://gist.github.com/groupdocs-comparison-gists/4958fa72f02e5d83324fc63b326e0609.js"></script>

就这些。等待 Docker 下载并运行应用程序。要访问比较器界面，请在喜欢的浏览器中打开 [http://localhost:8080/comparison/](http://localhost:8080/comparison/)

![](/comparison/java/images/how-to-compare-documents-in-the-easiest-way.png)

使用 UI，您可以选择 [支持的文件格式](/comparison/java/supported-document-formats/) 列表中的任意两个文档并进行比较。可以从本地 PC 以及通过 URL 上传文档。默认情况下有两个可用的小示例文档，您可以使用它们来检查一切是否正常。通过终端访问容器，可以通过路径`/home/groupdocs/app/`找到应用文件。还有默认的“DocumentSamples”和“Licenses”目录。

#### 使用 Portainer 运行

Portainer 是一个为 Docker 提供基于 Web 的 UI 的平台。您可以在 Portainer 官方网站上阅读如何安装它。

要运行 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) 应用程序，请执行以下步骤：

1.打开Portainer界面
2.点击屏幕左侧的`Containers`
3. 点击“添加容器”按钮
4. 过去 `groupdocs/comparison:22.3-java-openjdk8-bullseye-spring` 到 `Image` 字段（实际版本以及您可以在我们的 [Docker Hub 页面] 上找到的其他可用配置（https://hub.docker .com/r/groupdocs/comparison/tags))
5、找到“手动发布网口”，点击旁边的“发布新网口”
6. 在“host”文本字段中输入“8080”，在“container”文本字段中输入“8080”（“host”是您将用于在网络浏览器中访问比较器的端口。您可以将“80”作为主机端口，这样，应用程序将在 Web 浏览器中可用，而无需输入任何端口 - [http://localhost/comparison/](http://localhost/comparison/))
7. 点击按钮`部署容器`
8. 等待大约一分钟，它正在部署
9. 要访问比较器界面，请在喜欢的 Web 浏览器中打开 [http://localhost:8080/comparison/](http://localhost:8080/comparison/)

#### 使用 Docker 桌面管理比较器

目前没有办法使用 Docker Desktop 部署容器。尽管如此，您仍然可以管理已经运行的容器。例如运行、停止、重启、显示日志、访问容器终端等。

### GroupDocs.Comparer 配置

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 提供了很多选项来配置比较过程。生成摘要页面，配置结果文档的样式（文本和突出显示颜色，字体粗细，下划线等），获取每个更改的文本及其在文档中的坐标，配置比较的敏感性，接受/拒绝更改等等]（https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/）。至于我们的 [Docker Hub 页面](https://hub.docker.com/r/groupdocs/comparison/) 上提供的示例应用程序，只有最少的选项可以让您有机会熟悉基本的比较功能.所有这些示例都是免费的，可在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上找到。随意修改和使用它们。

不过，您可以更改一些选项来配置使用 Docker 运行它的比较示例。您可以使用一些预定义的环境变量。例如，如果您想禁用上传，请在运行容器的命令中传递环境变量“UPLOAD_ON”，其值为“false”。这样，命令将如下所示：

<script src="https://gist.github.com/groupdocs-comparison-gists/8120ee53c065f2732ded283a427bf87d.js"></script>

还有下一个预定义的变量：
* `LIC_PATH` - 带有许可证文件的目录路径
* `FILES_DIR` - 上传文件的目录路径
* `RESULT_DIR` - 结果文件所在目录的路径
* `DOWNLOAD_ON` - 在比较应用程序 UI 中启用/禁用下载按钮
* `UPLOAD_ON` - 启用/禁用上传文件_（上传按钮位于打开文档对话框的左侧）_
* `BROWSE_ON` - 启用/禁用文档浏览对话框
* `PRINT_ON` - 启用/禁用按钮以打印文档
* `RIGHTCLICK_ON` - 启用/禁用鼠标右键
* `HOST_ADDRESS` - 服务器实例的主机名或 ip

_注意：请记住，`LIC_PATH`、`FILES_DIR` 和 `RESULT_DIR` 路径指向**内部** Docker 容器_的文件夹

#### 在运行之间保持数据

您可能需要在应用程序运行之间保存文件。为此，您应该使用 Docker 的卷，例如：添加参数 `-v groupdocs_comparison_volume:/home/groupdocs/app/MyDocumentSamples` 以创建新卷并将 `/home/groupdocs/app/MyDocumentSamples` 作为环境变量的值传递`FILES_DIR`。这样命令将如下所示：

<script src="https://gist.github.com/groupdocs-comparison-gists/e492c0c7d27267ff506ecd3eaffcd4de.js"></script>

* 参数 `-v groupdocs_comparison_volume:/home/groupdocs/app/MyDocumentSamples` 配置 Docker 以创建名为 `groupdocs_comparison_volume` 的新卷，并将其绑定到容器中作为目录 `/home/groupdocs/app/MyDocumentSamples`。这样，对容器内的“MyDocumentSamples”的任何访问实际上都会在卷内进行更改。停止使用选项 `--rm` 运行的容器或手动删除其中的容器、卷和文件将不会被删除。运行附加卷的新容器很容易再次访问文件。
以下是有关该命令的一些详细信息：
* 选项 `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` 将比较应用程序配置为使用 Docker 容器内的 `/home/groupdocs/app/MyDocumentSamples` 目录作为存储文件的文件夹。可以改成其他路径，物理上这个目录在Docker镜像中是不存在的

_注意：`groupdocs_comparison_volume` 只是卷的名称。它可用于删除卷。你可以很容易地改变它。_

### 获取免费 API 许可证

您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

本文描述了使用 Docker 运行 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/) 示例的最简单方法。我们的 [Docker Hub 页面](https://hub.docker.com/r/groupdocs/comparison/tags) 提供了不同配置的比较应用程序，以便您选择最适合您需求的应用程序。所有这些示例都可以在 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上找到，因此您可以修改并使用它们作为您自己的应用程序的核心来比较照片，代码文件、PowerPoint、Excel、Word 和其他 [支持的文件格式](/comparison/java/supported-document-formats/)。现在可以很容易地构建您自己的比较器应用程序或使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) 的现有 Java 应用程序中的比较功能。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* 如何使用 Compose Desktop [比较任何文件](/comparison/java/how-to-compare-any-files-using-compose-desktop)
* How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container
