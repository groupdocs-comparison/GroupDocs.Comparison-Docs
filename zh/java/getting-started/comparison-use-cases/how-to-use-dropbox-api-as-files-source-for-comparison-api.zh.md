---
id：如何使用-dropbox-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api
title: "如何使用 Dropbox API 作为比较 API 的文件源"
weight: 18
description: "本文介绍了使用 Dropbox API 作为 GroupDocs 比较 API 的文件源的方法"
keywords: "比较文档、Dropbox API、比较来自 Dropbox 的文件、Java 比较工具和 Dropbox API"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：Pdf、Excel 和 Word 比较器
        description: "该产品允许使用 DropBox API 比较 Pdf、Excel 和 Word 文档"
产品代码：比较
产品平台：java
如何：
名称：如何使用 DropBox API 来发现文档的差异
        description: "了解如何使用 DropBox API 发现 Java 或 Kotlin 项目中的文档差异"
脚步：
- 名称：配置 Dropbox API
文本：配置 Dropbox API 所需步骤的说明
- 名称：配置项目以使用 Dropbox API 和比较 API
text: 在项目中使用 Dropbox API 和比较 API 所需的所有配置
- 名称：创建 Dropbox API 对象
文本：创建客户端对象以使用 Dropbox API
- 名称：使用 Dropbox API 获取文件列表
text: 连接到 Dropbox API 并加载存储在其中的文件列表
- 名称：直接从 Dropbox 比较文档
text：比较存储在 Dropbox 帐户中的文档
---
如今，云服务非常受欢迎。因此，很多人将它们用作照片、图像、文档和其他文件的存储空间。这样，您可能需要机会直接从 Dropbox 比较文档，而无需下载并保存在本地。您可以使用 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) 和 Dropbox API 轻松完成。

### 配置 Dropbox API

准备使用 Dropbox API，您必须拥有 Dropbox 帐户。注册一个非常容易。您可以在 Dropbox 文档页面上找到所需的步骤。不过，以下是您在使用 Dropbox API 之前需要执行的步骤。

#### 创建 Dropbox 应用程序

1.打开【Dropbox App Console】(https://www.dropbox.com/developers/apps)
2.点击`Create app`创建新应用

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_1.png)

3. 选择`Scoped access API`

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_2.png)

4.然后选择`App folder`（你可以选择`Full dropbox`让app访问你所有的文件）

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_3.png)

5.最后输入app名称，点击`Create app`

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_4.png)

#### 更新 Dropbox API 设置

1.首先，打开“权限”选项卡并选择下一个权限

1.files.metadata.write
2.files.metadata.read
3.files.content.write
4.files.content.read
   

**不要忘记**点击“提交”按钮保存更改

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_5.png)

2. 保存更改后返回“设置”选项卡并单击“生成”按钮生成访问令牌

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_6.png)

**请记住**在任何权限更改后您必须生成新令牌，旧令牌**不会**根据权限更改自动更新

4. 其实就是这样。令牌是您访问 Dropbox 文件所需的唯一东西。将令牌保存在某处，我们稍后将使用它。

### 配置项目以使用 Dropbox API 和比较 API

要使用 Dropbox API 作为文件存储来比较文档，您需要在项目中添加一些库和存储库。

<details open><summary>连接 GroupDocs 存储库</summary><blockquote>
<details open><summary>马文</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>摇篮</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

<details open><summary>图书馆</summary><blockquote>
<details open><summary>马文</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6dbf6684650c250c88ae1a583454a99e.js"></script>

</details>
<details><summary>摇篮</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/391a5a558c5a2a38d5d5da9349c8a1d5.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/092c23f2daabd4a481d47d686a36deeb.js"></script>

</details>
</blockquote></details>

### 创建 Dropbox API 对象

实际上，开始使用 Dropbox API 非常容易

<script src="https://gist.github.com/groupdocs-comparison-gists/71e514fc974faa424f41cc1626501a88.js"></script>

在哪里：
1. `mycompany/best-comparison-app` - 只是您将在 Dropbox 网站日志中看到的标识符
2. `YOUR ACCESS TOKEN` - 这里应该是之前生成的访问令牌

### 使用 Dropbox API 获取文件列表

要打印 Dropbox 应用程序目录中的文件列表，请运行下一个代码（不要忘记通过 Dropbox 网页上传一些文件，因为默认情况下应用程序目录是空的）

<script src="https://gist.github.com/groupdocs-comparison-gists/6f450d94c73366d1b9bd54d8275763a9.js"></script>

以下是输出示例：

```shell
- /target.pdf  target.pdf (390069 bytes)
- /source.pdf  source.pdf (767524 bytes)
```

在输出中，每一行都是一个文件。它是路径、名称和大小。您可以使用此信息来显示文件列表。每个文件都可以获得更多数据。更多信息可以在 Dropbox 文档页面上找到。 **请记住**，上面的代码只是示例。有一个分页，应该处理它以获取所有文件。

### 直接从 Dropbox 比较文档

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) 是一个灵活、强大且现代的库，您可以在任何 Java、Kotlin 或其他 Java 兼容项目中使用它来比较 Word、Excel 、PowerPoint 文档、照片、图像、图表、代码文件等 [支持的文件格式](/comparison/java/supported-document-formats/)。比较 API 包含许多灵活的设置，例如：接受/拒绝更改、生成摘要页面、生成文档预览图像、比较两个以上的文档（多重比较）、更改比较敏感度和更改突出显示样式。在 [文档](/comparison/java/getting-started/) 中阅读有关设置的更多信息。在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上，您可以找到在不同框架下使用比较库的不同示例，如 Dropwizard、Spring、Kotlin Compose Desktop 等上。

#### 将结果文档保存在本地磁盘上

很容易比较来自 Dropbox 上的 dwo 文档，将结果文档保存在本地磁盘上或将其写入 Java 输出流以在您想要的任何地方使用它。

<script src="https://gist.github.com/groupdocs-comparison-gists/3a031da813381a949f5b9fed868fb9ec.js"></script>

在输出控制台中，您将看到结果文档的路径。

#### 将结果文档保存到 Dropbox

您可以在下面看到，如何直接从 Dropbox 比较文档与将结果文档上传到 Dropbox 而不将其保存在本地。之后，您可以在网络浏览器中打开 Dropbox 并找到结果文档。

<script src="https://gist.github.com/groupdocs-comparison-gists/8c95ba602a127dee49d98bb0f756f987.js"></script>

在输出控制台中，您将看到上传文档的路径。

### 获取免费 API 许可证

大多数设置，例如生成摘要页面、比较敏感度等，仅在许可下可用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

本文展示了使用 Dropbox API 作为 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) 库的文档源的方法，您可以在自己的项目中使用该库。 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上有在 Spring 和 Dropwizard 应用程序中使用 Dropbox API 的示例。它们可用于修改和用作您自己的应用程序的核心，用于比较照片、Excel、Word、代码文件、PowerPoint 演示文稿和其他 [支持的文件格式](/comparison/java/supported-document-formats/)。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何使用 Ktor Framework [使用比较工具](/comparison/java/how-to-use-ktor-comparison-sample)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* How to [use Google Drive API as files source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
