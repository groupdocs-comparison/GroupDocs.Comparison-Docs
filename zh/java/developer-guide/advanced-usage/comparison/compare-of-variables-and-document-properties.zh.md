---
id：比较变量和文档属性
url: comparison/java/compare-of-variables-and-document-properties
title: "比较变量和文档属性"
weight: 11
description: "本文介绍如何在 GroupDocs.Comparison for Java 中激活文档属性的比较。"
keywords: "变量属性、内置属性、自定义属性、比较文档属性、CompareVariableProperty、CompareDocumentProperty"
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
名称：如何在摘要页面上获取扩展信息
        description: "了解如何在摘要页面上获取更多信息"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：设置比较选项对象
文本：创建“CompareOptions”类的对象并使用其方法“setCompareVariableProperty(true)”和“setCompareDocumentProperty(true)”来启用适当的设置
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程，将比较选项作为第二个参数传递
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 允许您比较 WORD 文档的各种属性，例如 *Variable*、*Built* 和 *Custom* 属性。

CompareOptions 类的以下字段用于启用文档属性的比较功能：

* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)) - 激活*variable*属性的比较；
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareDocumentProperty(boolean)) - 激活 *built* 和 *custom* 属性的比较。

以下是激活比较文档属性的步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象并设置 [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)) 属性为 *true* ([CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions# setCompareDocumentProperty(boolean)) 为 *true* *built* 和 *custom* 属性);
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) 上一步的对象。

## 用于激活比较变量、内置和自定义属性的示例代码块

---

<script src="https://gist.github.com/groupdocs-comparison-gists/eb7a2b4514a63bf8846a4520787f4fc5.js"></script>

## 比较属性的结果

---

比较属性的结果显示在单独的页面 - *属性摘要页面*上。

![](comparison/java/images/properties-summary-page.png)

## 更多资源

---
### GitHub 示例
您可以轻松运行上面的代码，并在我们的 GitHub 示例中查看该功能的实际效果：

* [GroupDocs.Comparison for Java 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison for .NET 示例、插件和展示](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Java App Dropwizard UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Java Spring UI 示例文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
* [.NET MVC UI 示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [.NET App WebForms UI 现代示例的文档比较](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    


### 免费在线应用
除了功能齐全的 Java 库，我们还提供简单但功能强大的免费应用程序。
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
