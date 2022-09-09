---
id：如何比较合同草稿和法律文件
url: comparison/java/how-to-compare-contracts-drafts-and-legal-documents
title: "如何比较合同草稿和法律文件"
weight: 2
description: "本文介绍如何使用 Microsoft Word blacklining 功能和 GroupDocs.Comparison API 比较合同、草稿和法律文件。"
keywords: "比较合同，比较草稿，比较黑线，比较红线"
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：比较合同
        description: "该产品允许比较合同交易"
产品代码：比较
产品平台：java
如何：
名称：如何比较 Java 或 Kotlin 中的合约
        description: "了解如何比较 Java 或 Kotlin 项目中的合约"
脚步：
- 名称：加载源合约
文本：创建一个比较器类的实例，将源合同作为构造函数参数传递
- 名称：加载目标合约
文本：添加一个或多个目标合同以将它们与源合同进行比较
- 名称：比较源合同和目标合同
text: 运行比较过程传递路径，比较结果将被保存在哪里
---
普通员工经常需要比较同一文档的两个版本。例如，在收到已签署的协议版本后，重要的是要确保交易对手没有做出影响交易条款的重大变更。并且在公司内部下一轮批准文件草案时，您只需查看更改的部分，以免浪费时间重新阅读全文。

“**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)**”解决方案自动比较两个版本并生成报告，方便可视化差异。结果，用于比较文档的人工成本降低了，并且由于人为因素而导致错误的可能性降低了。

## 如何比较 Microsoft Word 文档


由于创建了一个文本文件，我们必须对其进行多次更改。值得注意的是，该文件的某些非最终版本可能会得到相关人员的同意。经他人同意的最终文本文件可能与先前同意的原始版本有很大不同。而且这样的情况每天都可以重复。要部分自动化比较文件的过程，您可以使用 Microsoft Word 资源

* 首先，打开 Microsoft Word。转到“**评论**”选项卡，在“**比较**”部分中，单击“**比较**”。
* “**版本比较**”弹出窗口出现在您面前，您现在需要加载两种类型的文档：原始文件和修改后的文件。

![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents.png)

* 选择文本文档的两个版本后，单击 **OK**
    ![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents_1.png)


* 比较结果将在新窗口中打开，如下所示：

![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents_2.png)

* 在带有数字“1”的高亮方块中，将出现所有已删除和插入的单词。在右侧，带有数字“2”的区域显示正在比较的文档与文本中的存在以及已删除并在其位置插入的单词。
编号为“3”的工作区向我们展示了源文档（在进行更改之前），而编号为“4”的空间向我们展示了已更改的文档以及所做的更改。
编号为“5”的剩余工作字段是一组工具，用于编辑正在开发的文档的最终版本。
* 通过第一次按“**Accept**”/“**Reject**”，您选择您接受或拒绝的单词，第二次单击，您将更改为建议的选项之一。
* 红色划掉的单词被标记为删除，而红色下划线的单词将被替换。


## 如何使用 GroupDocs.Comparison 比较合同

有时 Microsoft Word 比较功能可能不足以满足您的要求 - 例如，您需要自己的方式来实现比较逻辑，或者您正在开发自己的应用程序。 [**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) 提供了以编程方式比较文档并管理在广泛[支持的文件格式]的代码中发现的差异的可能性（{{<参考“比较/java/getting-started/supported-document-formats.md”>}}）。下面是一个如何使用 GroupDocs.Comparsion API 比较两个合约的示例。通常您只需按照以下步骤操作：

* 使用源文档路径或流实例化 [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) 对象；
* 调用[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) 方法并指定目标文档路径或流；
* 调用 [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) 方法。

假设您有两份 DOCX 格式的合同在不同年份签订（例如，2018 年和 2019 年）。现在您将比较一段时间后条件的变化情况。

|源文件 - 2018 年签订的合同 |目标文件- 2019年签订合同 |
|------------------------------------------------- --------------------------------------|------------ -------------------------------------------------- --------------------------------------------------|
| ![](比较/java/images/how-to-compare-contracts-drafts-and-legal-documents_3.png) | ![](比较/java/images/how-to-compare-contracts-drafts-and-legal-documents_4.png) |

这是用于比较两个合约的代码。

<script src="https://gist.github.com/groupdocs-comparison-gists/2fe078a7c1db4dd932ee0ab907d71732.js"></script>

结果，我们得到一个 DOCX 文件，其中删除的元素标记为<font color="red">**red**</font> ，添加的 - 标记为<font color="blue">**blue**</font> ，修改的 - 标记为<font color="green">**green**</font> 。

![](/comparison/java/images/how-to-compare-contracts-drafts-and-legal-documents_5.png)

## 更多资源
### 高级用法主题
要了解更多关于文档比较功能的信息，请参阅[高级用法部分]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}})。

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
欢迎您免费在线比较您的 DOC 或 DOCX、XLS 或 XLSX、PPT 或 PPTX、PDF、EML、EMLX、MSG 和其他文档**[GroupDocs 比较应用程序](https://products.groupdocs.app/比较）**。

