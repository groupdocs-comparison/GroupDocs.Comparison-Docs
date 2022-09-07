---
id: 安装
url: comparison/java/installation
title: "安装"
weight: 4
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文档比较工具
        description: "该产品允许比较 Pdf、Word、Excel、PowerPoint、AutoCad、图像、代码和更多文件格式。比较 API 还支持接受或拒绝更改、提取文档信息和生成比较报告"
产品代码：比较
产品平台：java
如何：
名称：如何安装比较 API
        description: "了解如何将 GroupDocs.Comparison 安装到 Java 或 Kotlin 项目中"
脚步：
- 名称：指定 GroupDocs 存储库
text: 将 GroupDocs Maven 存储库添加到项目中
- 名称：定义比较依赖
text: 添加比较依赖，以便项目下载需要的库
---
＃＃＃ 操作系统

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 可以在任何安装了 Java JDK 的操作系统上执行。

* Windows 桌面和服务器
* Linux
* 苹果系统

### 支持的运行时

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 支持 Java 运行时版本 8 及更高版本（也支持 Kotlin）。
（_Java 7 已**已弃用**（因为下一个版本将不再支持 Java 7）_）

### 开发环境

* NetBeans
* 智能思想
* 日食

## 使用 Maven 从 GroupDocs 存储库安装

GroupDocs 在 [GroupDocs Repository](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo) 上托管所有 Java API。您可以直接在 Maven 项目中轻松使用 [GroupDocs.Comparison for Java](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-comparison) API配置简单。

### 指定 GroupDocs 存储库

首先，您需要在 Maven `pom.xml` 中指定 GroupDocs 存储库配置/位置，如下所示：

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

### 定义比较依赖

然后在您的 `pom.xml` 中定义 **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** API 依赖项，如下所示：

_最新版本的比较 API 可以[在这里找到](https://repository.groupdocs.com/comparison/)_

<details open><summary>添加 GroupDocs.Comparison 依赖</summary><blockquote>
<details open><summary>马文</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f4d8f0b56d1dfa24dea18c68cd9d8001.js"></script>

</details>
<details><summary>摇篮</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b760d58061daa45d9b211e2701aa52b5.js"></script>

</details>
<details><summary>科特林</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

</details>
</blockquote></details>

执行上述步骤后，Java 依赖的 GroupDocs.Comparison 最终将添加到您的 Maven 项目中。

