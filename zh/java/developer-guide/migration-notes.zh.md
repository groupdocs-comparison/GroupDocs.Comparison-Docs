---
id: 迁移笔记
url: comparison/java/migration-notes
title: "迁移说明"
weight: 3
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
## 为什么要迁移？

以下是使用 **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** 自 20.4 版以来提供的新更新 API 的主要原因：

* **Comparer** 类作为**单一入口点**引入，用于比较任何受支持文件格式的文档与各种选项以及接受/拒绝在结果文档中发现差异的能力。
* 文档**比较选项**适用于所有文档类型。现在选项仅与比较类型相关，而不是使用与文档相关的选项。
* 整体文档相关类统一为通用。
* 产品架构从头开始重新设计，以简化传递选项和类以操作比较。
* 简化了文档信息和预览生成程序。
    


## 如何迁移？

以下是如何将文档与新旧 API 进行比较的简要比较。

**旧的编码风格**

<script src="https://gist.github.com/groupdocs-comparison-gists/e2edd2208e2c0cec2a3807160d850c0e.js"></script>

**新的编码风格**

<script src="https://gist.github.com/groupdocs-comparison-gists/2d026c76b30856c2e86c0a27df28b236.js"></script>
