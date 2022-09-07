---
id：groupdocs-comparison 的评估限制和许可
url: comparison/java/evaluation-limitations-and-licensing-of-groupdocs-comparison
title: "许可和评估限制"
weight: 5
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
名称：如何申请比较 API 许可证
        description: "了解如何应用比较 API 许可证以使其不受评估限制"
脚步：
- 名称：创建许可证对象
文本：创建将用于设置许可证的对象
- 名称：申请许可证
文本：调用将设置许可证并传递许可证路径或输入流的特殊方法
---
{{< alert style="info" >}}您可以在没有许可的情况下使用 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)**。用法和功能与许可 API 几乎相同，但在使用非许可 API 时您将面临一些限制。{{< /alert >}}

## 评估限制

您可以轻松下载 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 进行评估。评估下载与购买的下载相同。当您添加几行代码来应用许可时，评估版就会获得许可。在没有许可证的情况下使用 API 时，您将面临以下限制：

* 仅处理结构简单的前 3 个文档页面。
* PDF 文档在任何集合中的元素不应超过四个。
* 试用徽章放置在每页顶部的文档中。

## 许可

许可证文件包含产品名称、许可的开发人员数量、订阅到期日期等详细信息。它包含数字签名，所以不要修改文件。即使无意中在文件中添加了额外的换行符也会使其无效。如果您想避免其评估限制，则需要在使用 GroupDocs.Comparison API 之前设置许可证。可以使用文件路径或流应用许可证。

### 使用许可证文件路径应用许可证

下面给出的代码证明了如何使用文件路径应用许可证。

<script src="https://gist.github.com/groupdocs-comparison-gists/2aa6cce718010e6cf2f4ab7c302eb9ec.js"></script>

### 使用许可证文件流应用许可证

下面给出的代码解释了如何使用流申请许可证。

<script src="https://gist.github.com/groupdocs-comparison-gists/49086ed66a09eef3d6c994f4b9619158.js"></script>

{{< alert style="info" >}}多次调用 License#setLicense 无害，但只会浪费处理器时间。在使用 GroupDocs.Comparison API 比较 Java 平台上的应用程序中的两个或多个文件之前，请在启动代码中调用 License#setLicense。编译后的文件逐行显示内容、段落、字符、样式、形状和位置的差异。
类。{{< /alert >}}

### 设置计量许可证

{{< alert style="info" >}}您还可以将计量许可证设置为许可证文件的替代品。这是一种新的许可机制，将与现有的许可方法一起使用。对于希望根据 API 功能的使用情况进行计费的客户非常有用。有关详细信息，请参阅 [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered) 部分。{{< /alert >}}

创建计量对象并使用方法`setMeteredKey`

<script src="https://gist.github.com/groupdocs-comparison-gists/66fea81ce49f8f21712694c3e84060fb.js"></script>

查看当前消耗量：
1.调用`Metered`类的`getConsumptionQuantity`方法。
2. 它将返回您到目前为止消耗的 API 请求的数量/数量。
3.调用`Metered`类的`getConsumptionCredit`方法。
4. 将返还您目前已消费的积分。

<script src="https://gist.github.com/groupdocs-comparison-gists/0d513af900199bea0cf9ee1a46a61912.js"></script>

