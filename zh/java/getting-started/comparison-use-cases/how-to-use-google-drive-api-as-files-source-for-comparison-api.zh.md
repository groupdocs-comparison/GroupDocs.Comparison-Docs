---
id：如何使用-google-drive-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api
title: "如何使用 Google Drive API 作为文件源来比较文档"
weight: 17
description: "本文介绍了使用 Google Drive API 作为 GroupDocs 比较 API 的文件源的方法"
keywords: "比较文档、Google Drive API、比较来自 Google Drive 的文件、比较工具与 Java 和 Google Drive API"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：PowerPoint、Image 和 AutoCad 比较器
        description: "该产品允许比较 PowerPoint、图像和 AutoCad 文件"
产品代码：比较
产品平台：java
如何：
名称：如何使用 Google Drive API 来发现文件、图像或文档的差异
        description: "了解如何使用 Google Drive API 来发现 Java 或 Kotlin 项目中文件、图像或文档的差异"
脚步：
- 名称：配置 Google API
文本：配置 Google API 所需步骤的说明
- 名称：配置项目以使用 Google Drive API 和比较 API
text: 在项目中使用 Google Drive API 和 Comparison API 所需的所有配置
- 名称：创建 Google Drive API 对象
文本：创建服务对象以使用 Google Drive API
- 名称：使用 Google Drive API 获取文件列表
文本：连接到 Google Drive API 并加载存储在其中的文件列表
- 名称：直接从 Google Drive 比较文档
文本：比较存储在 Google Drive 帐户中的文档
---
如今，云服务非常流行。这意味着很多人使用它们来存储文档、照片和其他文件。在这种情况下，您可能需要机会直接比较 Google Drive 中的文件，而无需下载并保存在本地。您可以轻松地将 [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) 与 Google Drive API 结合使用。

### 配置谷歌API

要使用 Google API，您必须拥有 Google 帐户。这里我们不会描述如何注册它。您可以在 Google 文档页面上找到所需的步骤。不过，以下是在您的项目中使用 Google Drive API 所需的步骤。

#### 创建 Google Cloud Platform 项目并激活 Drive API

1.打开【谷歌云平台仪表盘】(https://console.cloud.google.com/apis/dashboard)
2. 点击“选择项目”打开项目列表

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_1.png)

3.为了创建一个项目，点击`NEW PROJECT`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_2.png)

4. 输入项目名称，点击`Create`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_3.png)

5. 点击`Enable APIs and services`启用Google Drive API

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_4.png)

6.找到`Google Drive API`，选择它并在打开的页面上点击`Enable`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_5.png)

#### 创建同意屏幕

1. 打开【Credentials】(https://console.cloud.google.com/apis/credentials)页面，检查选择的项目是否正确
2. 点击`Create Credentials`并选择`OAuth client ID`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. 单击“配置同意屏幕”按钮
4. 选择“用户类型”并点击“创建”

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_7.png)

5.填写`App信息`点击`保存并继续`
6. 单击“添加或删除范围”以配置凭据范围。

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_8.png)

7. 在“更新选定范围”屏幕上检查所需范围。您可以使用过滤器来搜索范围。选择所有需要的范围后，单击“更新”按钮

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_9.png)

8.点击“保存并继续”进入下一步
9. 使用“添加用户”按钮添加用户，然后单击“保存并继续”
10.点击`Back to dashboard`完成配置

#### 创建 Google Drive API 凭据

1. 打开【Credentials】(https://console.cloud.google.com/apis/credentials)页面，检查选择的项目是否正确
2. 点击`Create Credentials`并选择`OAuth client ID`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. 选择应用类型为“桌面应用”，输入名称并点击“创建”

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_10.png)

4. 现在，复制并保存您的“客户端 ID”、“客户端密码”，当然还有下载并保存 JSON 文件，该文件将用于访问 Google Drive API

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_11.png)

### 配置项目以使用 Google Drive API 和比较 API

要将 Google Drive API 用作比较 API 的文件存储，您需要将一些库和存储库添加到项目中。

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

<script src="https://gist.github.com/groupdocs-comparison-gists/513c0cf2cf6ec736df038122fe7389a3.js"></script>

</details>
<details><summary>摇篮</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7af8c044d34a45f5858667bd3b8a05c8.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/22abc7b8e5548ad0f240b604f7092516.js"></script>

</details>
</blockquote></details>

### 创建 Google Drive API 对象

首先，我们需要 JSON 工厂，它将用于与 Google 服务器通信

<script src="https://gist.github.com/groupdocs-comparison-gists/0853a71cd95b079fe683eac607e7fa3a.js"></script>

其次，我们需要创建传输对象

<script src="https://gist.github.com/groupdocs-comparison-gists/844c3077a831fc8dee4485ef8302c79d.js"></script>

之后，我们必须创建客户端机密对象。这是我们将使用创建 API 凭据后下载的 json 文件的地方

<script src="https://gist.github.com/groupdocs-comparison-gists/139ac242d9a5af46ac70de236cfa9402.js"></script>

下一步是创建将用于授权请求的授权流程。关于选项的一些细节：
* `DriveScopes.DRIVE` - 是在创建 API 凭据时启用的范围
* `"/Path/To/Directory/To/Save/Tokens"` - 需要令牌目录来保存授权令牌。您可以删除此行，但这样 Google API 每次都会请求授权。

<script src="https://gist.github.com/groupdocs-comparison-gists/a4ee3fdba7423db24797967851f16b56.js"></script>

现在我们将请求授权。它将在默认网络浏览器中打开 Google 授权页面，您可以在其中访问应用程序。更多信息可以在谷歌文档页面上找到。

<script src="https://gist.github.com/groupdocs-comparison-gists/cf913a2f12e3f2233b5f4b9e8cc98654.js"></script>

最后，我们构建一个用于访问 Google Drive 文件的对象

<script src="https://gist.github.com/groupdocs-comparison-gists/c767f20a31dede6afd5412013908016d.js"></script>

### 使用 Google Drive API 获取文件列表

要打印 Google Drive 上的文件列表，请执行下一个代码

<script src="https://gist.github.com/groupdocs-comparison-gists/362c635862024863ac606182e3e62a3c.js"></script>

以下是输出示例：

```shell
- 1hRgws-lLWMlloSZioaVpKJGKt687KHL7  GroupDocs_Demo.pdf (51911 bytes)
- 22k0Uyt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 33Kk0yt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 80UMm8vRQ637H7hJHkjHKh7JKJL96tm56  GroupDocs_Demo_Image.png (78398 bytes)
- 1qwRjo4Nu0LKHlLhlLKjlk798761tuFJP  GroupDocs_Demo_Photo.jpg (3186063 bytes)
```

在输出中，每一行都是一个文件。它是 ID、名称和大小。您可以使用此信息向用户显示文件。有很多数据，可以为每个文件获取。更多信息可以在谷歌文档页面上找到。对于下面的代码示例，我们将使用上面的两个 ID。 **请记住**，您的文件会有其他 ID，因此下面的运行代码不要忘记更改 ID。

### 直接从 Google Drive 比较文档

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) 是一个现代、强大且灵活的库，可用于任何 Java、Kotlin 或其他 Java 兼容项目。您可以使用它来比较 Word、Excel、演示文稿文档、照片、图像、图表、代码文件和其他 [支持的文件格式](/comparison/java/supported-document-formats/)。比较库有很多设置，如生成摘要页面，接受/拒绝更改，比较两个以上的文档（多比较），生成文档预览图像，更改比较敏感度和更改突出显示样式。有关设置的更多信息，请参阅 [文档](/comparison/java/getting-started/)。在我们的 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上，您可以找到将比较库与不同框架（如 Spring、Dropwizard、Kotlin Compose Desktop 等）集成的示例.

#### 本地保存结果文档

您可以轻松比较 dwo 文档，这些文档位于您的 Google Drive 本地保存结果文档或将其保存到 Java 流中并随心所欲地使用它。 **请记住** `1ZSDTUZArzuwYab0GUbXEoSX_b9kt2mk0` 和 `1mKk0yt_bBoN9K9mm-3iGXLxfTzkrdw2O` 是在前面的步骤中获得的 ID。对你来说，它们会有所不同。

<script src="https://gist.github.com/groupdocs-comparison-gists/0dd5de335fee2e1f78dc8c4c82299010.js"></script>

在输出控制台中，您将看到结果文档的路径。

#### 将结果文档保存到 Google Drive

您可以在下面看到直接从 Google Drive 比较文档的代码。输出文件将上传到 Google Drive，而不在本地保存任何内容。之后，您可以在网络浏览器中打开 Google Drive 页面并查看结果文档，例如使用 Google Docs。

<script src="https://gist.github.com/groupdocs-comparison-gists/d067df3bf323e06d468952af2b7b335b.js"></script>

在输出控制台中，您将看到上传文档的 ID、名称和大小。

### 获取免费 API 许可证

许多设置，如摘要页面、比较的敏感度等，只有在许可下才能使用。您可以获得 [免费的临时许可证](https://purchase.groupdocs.com/temporary-license) 以便在没有评估限制的情况下使用 API。

＃＃＃ 结论

阅读本文，您了解了使用 Google Drive API 作为 [GroupDocs.Comparison](https://products.groupdocs.com/comparison/) 库的文件存储的方法，该库为您提供了很多机会。您可以在 [GitHub 页面](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) 上找到在 Spring 和 Dropwizard 应用程序中使用 Google Drive API 的示例，您可以修改这些示例并将其用作您自己的应用程序，用于比较照片、代码文件、PowerPoint、Excel、Word 和其他 [支持的文件格式](/comparison/java/supported-document-formats/)。

有关更多详细信息、选项和示例，您可以浏览 [文档](/comparison/java/getting-started/) 和 [GitHub](https://github.com/groupdocs-comparison) 存储库。联系我们 [在论坛上](https://forum.groupdocs.com/) 进行查询。

＃＃＃ 也可以看看

* 如何以最简单的方式[比较文档](/comparison/java/how-to-compare-documents-in-the-easyest-way)
* 如何在 Java 或 Kotlin 中 [比较文件](/comparison/java/how-to-compare-files-in-java-or-kotlin)
* 如何使用 Java 或 Kotlin [比较图像](/comparison/java/how-to-compare-images-using-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较文本、Word 或 PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin)
* 如何在 Java 或 Kotlin 中 [比较两个或多个文件](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin)
* How to [use Dropbox API as files source](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
