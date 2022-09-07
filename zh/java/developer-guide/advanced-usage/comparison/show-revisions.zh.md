---
id: 显示修订
url: comparison/java/show-revisions
title: "显示修订"
weight: 12
description: "本文介绍如何在 GroupDocs.Comparison for Java 中自定义结果文档中的修订显示。"
keywords: "ShowRevisions, 修订"
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
名称：如何禁用在结果文档中显示修订
        description: "了解如何禁用在结果文档中显示修订"
脚步：
- 名称：创建“比较器”对象
文本：创建“比较器”类的对象，将源文档作为构造函数参数传递
- 名称：添加一个或多个目标文档
text: 使用 'add' 方法添加一个或多个文档进行比较
- 名称：设置比较选项对象
文本：创建“CompareOptions”类的对象并使用其方法“setShowRevisions(false)”禁用显示修订
- 名称：运行比较过程
文本：调用“比较”方法运行比较过程，将比较选项作为第二个参数传递
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** 提供了比较和自定义生成文档中修订显示的能力。

**修订** - 使用内置 Word 工具比较文档时收到的更改。

默认情况下，修订的显示是*启用的*。以下是关闭修订显示的步骤：

* 使用源文件路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文件路径或流；
* 实例化 [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) 对象并设置 [ShowRevisions](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setShowRevisions(boolean)) 属性为 *false*；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) 方法并通过 [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) 上一步的对象。

## 禁用修订显示的示例代码块

---

<script src="https://gist.github.com/groupdocs-comparison-gists/e43eb36dafa0ef2d0690fe5d2ab38460.js"></script>

## 启用修订显示的结果示例

---

|关闭状态 |开放状态 |
|:------------------------------------------------ -------------------:|:---------------------------- --------------------------------------:|
| ![](比较/java/images/show-revisions-true-close-revisions.png) | ![](比较/java/images/show-revisions-true-open-revisions.png) |

## 禁用修订显示的结果示例

---

|禁用显示修订 |
|:------------------------------------------------ ----:|
| ![](比较/java/images/show-revisions-false.png) |

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
