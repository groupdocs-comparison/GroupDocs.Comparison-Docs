---
id: groupdocs-comparison-for-java-21-6-release-notes
url: comparison/java/groupdocs-comparison-for-java-21-6-release-notes
title: "GroupDocs.Comparison for Java 21.6 发行说明"
weight: 20
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for Java 21.6 的发行说明{{< /alert >}}

## 主要特点

以下是 Java 21.6 的 GroupDocs.Comparison 版本中最显着的变化列表：

* 重构单元格的 getDocumentInfo 方法
* 改进了 DocumentTags Word 的比较
* 改进了单元格的工作表渲染
* 修复 getChanges 方法中无效的页面高度和宽度
* 修复了与 PDF 中的表格进行比较的问题
* 添加了合并源代码文件的功能
* 为 SummaryPage 添加了更多选项
* 修复了 word 类型数学公式中样式比较的问题
* 修复了比较受密码保护的 PDF 文档的问题
* 修复了对 SummaryPage 中更改的错误计数
* 修复了 HTML 文档中比较 span 标签的问题
* 修复了 HTML 文档比较问题的数量
* 扩展摘要页面
* 修复了比较复杂 PDF 文档的问题
* 修正了比较未经许可的 PDF
* 修正 Word 文档中超链接比较错误
* 改进了在 Word 文档中比较具有不同大小的几列的表格
* 改进接受\拒绝更改 Words 文档
* 为 applyChanges 方法添加 SaveOriginalState 选项
* 改进的图像输出
* 修复了比较 Words 文档中的表格的问题
* 修复了输出文档中编号列表的问题
* 修复了丢失所有评论的锚点和范围信息时的问题
* 添加了 Word 格式的书签比较
* 添加了 Word 格式的变量和文档属性的比较
* 添加了为文档加载自定义字体的功能
* 改进了 Cells 格式比较后的图像比较和图像定位
* 修正了 Word 格式笔图像的比较
* 修复了特定 Word 文件的比较崩溃问题
* 修复了从文档中获取特殊修订的问题
* 改进 Words 文档中的修订处理
* 修复了 Words 中文本重复的问题
* 修复了表格显示不正确而不显示添加或删除的单元格的问题
* 改进了带有 Pdf 格式边框的元素的显示
* 改进了 Pdf 格式的文本显示
* 增加了Word格式脚注类型的比较
* 为 ChangeInfo 类添加了 SourceText 属性，并改进了 Cells、Words 和 Pdf 格式的 TargetText 属性
* 修复生成 PDF 格式预览后关闭流的问题
* 修复了以图表格式生成预览
* 修复生成 HTML 格式的预览
* 修正使用文件流将比较结果保存为 HTML 格式
* 使用图片和图表改进了 Excel 格式的比较
* 改进了图表、幻灯片、文本和注释格式的 TargetText 属性

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2416 |添加更多 SummaryPage 选项 |特色 |
|比较网-2425 |添加 ExtendedSummaryPage 选项 |特色 |
|比较网-2483 |接受或拒绝单个 Word 文档中的所有更改 |特色 |
|比较网-2427 |为 ApplyChanges 方法添加了 SaveOriginalState 选项 |特色 |
|比较网-2133 | Word 格式的书签比较 |特色 |
|比较网-2145 |能够为文档加载自定义字体 |特色 |
|比较网-2585 |提高Words文档获取源文本的能力|特色 |
|比较网-2586 |提高PDF文档获取源文本的能力|特色 |
|比较网-2587 |提高 Cells 文档获取源文本的能力 |特色 |
|比较网-2134 | Word 格式的变量和文档属性比较 |特色 |
|比较JAVA-822 |实现 ShowInsertedContent 函数 |特色 |
|比较JAVA-882 |演示幻灯片中的评论比较 |改进 |
|比较网-2383 | Comparison.Cells 将空单元格与修改后的样式进行比较 |改进 |
|比较网-2380 |重构单元格的 getDocumentInfo 方法 |改进 |
|比较网-2388 |改进单元格的工作表渲染 |改进 |
|比较网-2384 |改进 DocumentTags Word | 的比较改进 |
|比较网-2458 |改进的图像输出 |改进 |
|比较网-2140 |在单元格格式比较后比较图像及其位置的问题 |改进 |
|比较网-2557 |改进 Words 文档中的修订处理 |改进 |
|比较网-2563 |脚注不比较 |改进 |
|比较网-2595 |提高获取 Diagrams 文档源文本的能力 |改进 |
|比较网-2594 |提高获取 Slides 文档源文本的能力 |改进 |
|比较网-2589 |提高Text文档获取源文本的能力|改进 |
|比较网-2598 |提高Notes文档获取源文本的能力|改进 |
|比较网-2387 | getChanges 方法中的页面高度和宽度无效 |错误 |
|比较网-2385 |与表格工具比较的单元格错误 |错误 |
|比较网-2412 | word中类型数学公式的样式比较不正确|错误 |
|比较网-2421 |比较两个PDF文件，密码错误异常 |错误 |
|比较网-2420 | SummaryPage 中的更改计数不正确 |错误 |
|比较网-2418 | Html 修复 span 标签的比较 |错误 |
|比较网-2351 | HTML 比较问题 |错误 |
|比较网-2422 |在 Word 文档中比较具有不同大小的几列的表格时出现的问题 |错误 |
|比较网-2419 |比较两个 Word 文件不显示已删除的评论 |错误 |
|比较网-2455 | word中超链接的错误比较|错误 |
|比较网-2456 |比较复杂 PDF 文件的问题 |错误 |
|比较网-2457 |没有许可证的简单 PDF 比较不会返回任何结果 |错误 |
|比较网-2487 |输出文档中的编号列表问题 |错误 |
|比较网-2482 |单词比较不显示插入/删除的表 |错误 |
|比较网-2481 |比较结果丢失所有评论的锚点和范围信息 |错误 |
|比较网-2477 |相同的图像在 Word 比较中显示为插入或删除 |错误 |
|比较网-2100 |笔结果比较问题 |错误 |
|比较网-2146 |特定 Word 文件的比较崩溃 |错误 |
|比较网-2151 |获取修订时出错 |错误 |
|比较网-2513 |特定 Word 文件的比较崩溃|错误 |
|比较网-2537 | DOCX 文件的比较 比较后文本是重复的，而不是在输出中被识别为替换 |错误 |
|比较网-2533 | Word 文档与表格的比较问题（不正确的文档创建，禁止在 Word 格式的表格中显示更改）|错误 |
|比较网-2451 | PDF 中的文本框比较问题 |错误 |
|比较网-2454 |比较PDF文件时部分符号不显示|错误 |
|比较网-2592 |无法比较特定的 Excel 工作表 |错误 |
|比较网-2599 |预览生成器关闭 pdf 的流 |错误 |
|比较网-2600 |图表预览不会在形状内插入文本 |错误 |
|比较网-2603 | Excel 文档显示不正确 |错误 |
|比较网-2602 |图表不以 Excel 格式显示 |错误 |
|比较网-2601 | HTML 预览只呈现一张图片 |错误 |
|比较JAVA-870 |目录比较错误结果 |错误 |
|比较JAVA-869 |笔比较结果问题 |错误 |
|比较JAVA-876 |将 Excel 文件与表格工具进行比较的问题 |错误 |
|比较JAVA-928 | PDF 中的文本框比较问题 |错误 |
|比较JAVA-937 | Excel中的图形比较问题|错误 |
|比较JAVA-975 |文档比较在输出中显示没有差异和警告消息 |错误 |
|比较JAVA-978 |具有图像比较输出的预期电子表格 |错误 |
|比较JAVA-977 |查找字符串前后的差异 |错误 |

## 公共 API 和向后不兼容的更改

* [如何合并源代码文件](https://docs.groupdocs.com/comparison/java/how-to-merge-source-code-files/)
* [仅获取摘要页面](https://docs.groupdocs.com/comparison/java/get-only-summary-page/)
* [如何在摘要页面上获取扩展信息](https://docs.groupdocs.com/comparison/java/get-extended-information-on-the-summary-page/)
* [ApplyChanges 方法的 SaveOriginalState 选项](https://docs.groupdocs.com/comparison/java/accept-or-reject-detected-changes/)
* [接受或拒绝修订](https://docs.groupdocs.com/comparison/java/accept-or-reject-revisions/)
* [Word 格式的书签比较](https://docs.groupdocs.com/comparison/java/compare-bookmarks-in-word/)
* [Word 格式的变量和文档属性比较](https://docs.groupdocs.com/comparison/java/compare-of-variables-and-document-properties/)
* [能够加载自定义字体](https://docs.groupdocs.com/comparison/java/load-custom-fonts/)
* [改进了 Words 文档的 Accept\Reject Revisions 功能](https://docs.groupdocs.com/comparison/java/accept-or-reject-revisions/)
* 更新了有关获取源文本和目标文本的文档，可在 [此处](https://docs.groupdocs.com/comparison/java/get-source-and-target-text-from-files/) 找到。

* 当正在比较的文档中已经存在其他 *Revisions* 时，会出现重新显示文档中更改的内容的问题。

**修订** - 使用内置 Word 工具比较文档时收到的更改。

为了解决这个问题，创建了新的 *ShowRevisions* 属性，允许您在生成的文档中禁用这些 *Revisions* 的显示。下面给出了使用新属性的代码示例。
* 了解有关获取源文本和目标文本的更多信息，可在 [此处](https://docs.groupdocs.com/comparison/java/get-source-and-target-text-from-files/) 找到

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    CompareOptions options = new CompareOptions();
    options.setShowRevisions(false);
    final Path resultPath = comparer.compare(RESULT_PATH, options);
}
```
有关新属性的更多信息，请参见 [此处](https://docs.groupdocs.com/comparison/java/show-revisions/)。

* 脚注类型比较是指样式的比较，而且这种变化很难在正文中表现出来。因此，这些变化都是按照文档中的空白行或图片（使用注释）的原则进行标记的。
为了清楚地比较脚注类型，您可以使用以下代码片段：

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    CompareOptions options = new CompareOptions();
    options.setDetectStyleChanges(true);
    options.setDetalisationLevel(DetalisationLevel.High);
    final Path resultPath = comparer.compare(RESULT_PATH, options);
}
```

* 由于某些原因，结果文件扩展名可以更改，因此您应该使用 `compare` 方法的结果而不是 RESULT_PATH 来获取结果数据

```java
try(Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    final Path resultPath = comparer.compare(RESULT_PATH);
    if(resultPath != null) {
        // Use resultPath (if it is not null) to read the file, instead of RESULT_PATH
    }
}
```
