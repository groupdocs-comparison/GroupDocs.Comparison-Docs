---
id: groupdocs-comparison-for-java-20-11-release-notes
url: comparison/java/groupdocs-comparison-for-java-20-11-release-notes
title: "GroupDocs.Comparison for Java 20.11 发行说明"
weight: 1
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for Java 20.11 的发行说明{{< /alert >}}

## 主要特点

在 GroupDocs.Comparison for Java 版本中最显着的变化列表下方：

* 增加了比较最流行的脚本和编程语言文件的能力
* 包括所有支持的文件 fromats
* 添加了只显示插入内容的新功能
* 添加页面预览尺寸
* 实现了比较两个以上电子表格文档的能力
* 实现了比较两个以上 Note 文档的能力
*改进了PDF更改坐标的计算
* 提高了文本文档多次比较的性能
* 改进了用于显示演示文稿、电子表格、图表 PDF、注释和文本的目标文本的功能
* 改进异常使用
* 通过代码重构优化功能
* 修复了演示文稿（幻灯片）文档的元素移动变化检测
* 修正在比较源代码文件时创建输出 HTML 文件
* 修复了比较图表文档时的异常
* 修复了电子表格和笔记的库兼容性问题
*修复了比较图表时的异常数量
* 修复了在生成受密码保护的 PDF 文件预览期间使用无效密码消息进行的异常处理
* 修复了笔记库版本的问题
* 修复了比较结果页面上的意外边框。
* 修正 PDF 比较中两行之间的空白
* 修正 Word 文档与表格比较时出现的错误
* 修复了 Excel 文件表/页面的意外大小。
*修复了SpreadSheet比较结果中比较元素的位置不正确
* 修复了将 Word 文档与表格单元格中的复选框和表单域进行比较的问题

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-2188 |实现 Groovy 文件比较 |特色 |
|比较网-2187 |实现 JSON 文件比较 |特色 |
|比较网-2186 |实现比较 ActionScipt 文件 |特色 |
|比较网-2185 |实现 Perl 文件比较 |特色 |
|比较网-2184 |实现比较目标 C/C++ 文件 |特色 |
|比较网-2180 |实现比较 Ruby 文件 |特色 |
|比较网-2179 |实现 Shell/batch 脚本、Log、Diff、Config、LESS 文件比较 |特色 |
|比较网-2178 |实现比较PHP文件|特色 |
|比较网-2177 |实现比较 SQL 文件 |特色 |
|比较网-2176 |实现比较基于 C 的文件 |特色 |
|比较网-2175 |实现比较 Scala 文件 |特色 |
|比较网-2174 |实现比较 Javascript 文件 |特色 |
|比较网-2173 |实现比较汇编文件 |特色 |
|比较网-2172 |实现比较 Python 文件 |特色 |
|比较网-2171 |实现比较Java文件|特色 |
|比较网-2169 |实现比较 CSharp 文件 |特色 |
|比较网-2165 |为单元实现多比较器 |特色 |
|比较网-2103 |为 Note | 实现多比较器特色 |
|比较网-2234 |实现 ShowInsertedContent 函数 |特色 |
|比较网-2183 |改进PDF更改坐标的计算|改进 |
|比较网-2168 |更新 getSupportedFileTypes 方法，使其包含文档中所有支持的格式 |改进 |
|比较网-2214 |提高 TXT multiComparer 的性能 |改进 |
|比较网-2269 |改进图表的 getTargetText 函数 |改进 |
|比较网-2242 |改进幻灯片的 getTargetText 函数 |改进 |
|比较网-2241 |改进单元格的 getTargetText 函数 |改进 |
|比较网-2245 |改进 PDF 的 getTargetText 函数 |改进 |
|比较网-2244 |改进 Notes 的 getTargetText 函数 |改进 |
|比较网-2243 |改进文本的 getTargetText 函数 |改进 |
|比较网-2271 |改进异常使用 |改进 |
|比较网-2273 |页面预览尺寸 |改进 |
|比较网-2181 |比较PPT/PPTX文档与元素移动变化检测|错误 |
|比较网-2097 | PDF 比较，输出文档标题失真 |错误 |
|比较网-2235 | TextComparerResult 不会为编程语言文件创建 .html 文件 |错误 |
|比较网-2209 |比较两个 vsdx 文件抛出异常 |错误 |
|比较网-2208 |图表文字换行问题 |错误 |
|比较网-2316 |生成受密码保护的 PDF 文件的预览时出现密码无效消息的异常 |错误 |
|比较网-2320 |对比结果页面出现意外边框 |错误 |
|比较网-2295 | PDF比较中两行之间的空白|错误 |
|比较网-2322 | Excel 文件工作表/页面的意外大小 |错误 |
|比较网-2350 | Comparison.Cells：结果中比较元素的位置不正确 |错误 |
|比较网-2349 |将 Word 文档与表格单元格中的复选框和表单域进行比较 |错误 |
|比较JAVA-374 |多线程比较返回 null |错误 |
|比较JAVA-375 | pdf 的比较结果错误 |错误 |
|比较JAVA-866 |文件比对试题 |错误 |
|比较JAVA-867 |表不能转换为段落 |错误 |
|比较JAVA-872 |在同一行中未检测到字体大小差异 |错误 |
|比较JAVA-894 |使用比较和转换 API 时的许可问题 |错误 |
|比较JAVA-896 |特定的 XLS 文件比较问题 |错误 |
|比较JAVA-1009 | Spring 应用程序中的许可证问题 |错误 |
|比较JAVA-1010 |比较两个 html 文件时抛出异常 |错误 |
|比较JAVA-1031 |没有足够的空间放置所有组件 |错误 |


## 公共 API 和向后不兼容的更改

从版本 20.11 开始 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 允许获取结果文档中特定更改的目标文本，这适用于 **Word** 文档。

要使用此功能，您应该调用 *getChanges().get(...).getTargetText()* getter

```java
try (Comparer comparer = new Comparer(sourceDocumentPath)) {
     comparer.add(targetDocumentPath);
     comparer.compare(outputPath);
     ChangeInfo[] changes = comparer.getChanges();
     for (ChangeInfo change : changes) {
         String targetText = change.getTargetText();
         System.out.println(targetText);
     }
}
```

从版本 20.11 开始，**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 提供了禁用在结果文件中显示添加内容的功能。
  


要使用此功能，您应该使用 *compareOptions.setShowInsertedContent(false)*


```java
CompareOptions compareOptions = new CompareOptions();
compareOptions.setShowInsertedContent(false);

try (Comparer comparer = new Comparer(sourceDocumentPath)) {
     comparer.add(targetDocumentPath);
     comparer.compare(outputPath, new SaveOptions(), compareOptions);
}
```

从版本 20.11 开始 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** 提供了使用自定义字体设置文件夹路径的功能。

  


要使用此功能，您应该使用 *FontsHelper.setFonts(...);*



```java
FontsHelper.setFonts(Arrays.asList("path1", "path2", "path3"));
```
