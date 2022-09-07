---
id: 比较
url: comparison/java/comparison
title: "比较"
weight: 2
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) 提供了多种方法来自定义更改检测算法逻辑并通过更改 [CompareOptions](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.options/compareoptions) 类属性。
以下是在比较过程中可以自定义的设置列表：

* [CalculateCoordinates](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getCalculateCoordinates()) - 表示是否计算改变组件的坐标；
* [ChangedItemStyle](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getChangedItemStyle()) - 描述更改组件的样式；
* [DeletedItemStyle](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getDeletedItemStyle()) - 描述已删除组件的样式；
* [DetalisationLevel](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getDetalisationLevel()) - 获取设置比较detalisation级别；
* [DetectStyleChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getDetectStyleChanges()) - 表示是否检测样式变化；
* [DiagramMasterSetting](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getDiagramMasterSetting()) - 获取或设置master的路径值或使用没有master路径的比较（此选项仅适用于图表）；
* [GenerateSummaryPage](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getGenerateSummaryPage()) - 指示是否将带有检测到的更改统计信息的摘要页面添加到结果文档中；
* [InsertedItemStyle](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getInsertedItemStyle()) - 描述插入组件的样式；
* [MarkChangedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getMarkChangedContent()) - 指示是否对文字处理中的形状和图像文档中的矩形使用框架;
* [MarkNestedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getMarkNestedContent()) - 指示是否接受插入/删除组件的所有子项的插入/删除样式;
* [OriginalSize](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getOriginalSize()) - 获取或设置比较文档的原始大小；
* [PasswordSaveOption](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getPasswordSaveOption()) - 获取或设置密码保存选项。更多细节 [这里]({{< ref "comparison/java/developer-guide/advanced-usage/saving/set-password-for-resultant-document.md" >}});
* [SensitivityOfComparison](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getSensitivityOfComparison()) - 获取或设置比较敏感度。更多细节 [这里]({{< ref "comparison/java/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}});
* [ShowDeletedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#getShowDeletedContent()) - 指示是否在结果文档中显示已删除的组件；
* [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#isShowInsertedContent()) - 指示是否在结果文档中显示插入的组件；
* [WordsSeparatorChars](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setWordsSeparatorChars(char[])) - 设置分隔符数组以将文本拆分为单词；
* [CompareBookmarks](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#isCompareBookmarks()) - 激活书签比较；
* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#isCompareVariableProperty()) - 激活变量属性的比较；
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#isCompareDocumentProperty()) - 激活构建和自定义属性的比较；
* [ShowRevisions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#isShowRevisions()) - 在结果文档中显示其他修订。

有关所描述选项的更多详细信息，请参阅以下指南：

