---
id: groupdocs-comparison-for-java-18-6-release-notes
url: comparison/java/groupdocs-comparison-for-java-18-6-release-notes
title: "GroupDocs.Comparison for Java 18.6 发行说明"
weight: 4
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for Java 18.6 的发行说明{{< /alert >}}

## 主要特点

在此版本的 GroupDocs.Comparsion for Java 中已修复的错误列表下方。最值得注意的是：

* 添加通过Comparison.Imaging比较DICOM文件的能力
* 简化和改进了所有支持格式的公共 API
* 为GroupDocs.Comparison.PDF引入合并单元格表格的吸收过程
* 修复了 GroupDocs.Comparison.PDF 的比较填充表
* 向 GroupDocs.Comparison 公共 API 引入了对格式的多重比较的支持
* 引入了对 CAD 格式的支持
*改进了图像格式的比较
* 简化所有支持格式的 API
* 修复了 GroupDocs.Comparison.PDF 的多列表比较问题
* GroupDocs.Comparison.PDF：修复段落中的文本与表格重叠时的错误
* 引入了对 PNG、BMP 和 PNG 格式的支持
* 在单词比较中添加删除/更改文本的删除选项
* 提高文本和图像格式的比较性能
* 增加了对 ChangeInfo 的支持
* 引入了对电子邮件格式的支持
* 改进了单元格、幻灯片、HTML 格式的比较性能
* 改进了关于所有格式比较结果的摘要页面信息
* 增加了应用或丢弃 Words 格式更改类别的能力
* 引入了对所有格式的样式设置的支持
* 引入所有格式的克隆密码设置
* 为所有格式引入了克隆元数据的设置
* 增加了细胞格式的克隆能力
* 增加对比Note文档
* 改进细胞比较
* 修正了一些比较。幻灯片 iisue
*更新的记录器
* 添加了单元格格式的新功能（数据透视表、页眉和页脚）
*固定摘要页面工作
*作者已添加到所有更改中
* 注释中样式更改的错误已修复
* Note 中的 SaveImages 和 GetImages 方法已修复
* Cell 的 Aligner 得到了改进
* 注释增加了中间段落算法
* 添加了大纲的样式
* AlignWithoutPositioning 算法被添加到 Note
* 注释的摘要页面已修复
* 将 headerFoters 的比较添加到 PDF
* 修复了Note格式的一些特定情况（分词，段落比较）
* 添加中间段落机制以简化比较（用于单词和注释）
*修复了Notes中的样式比较
* PDF结构更新
* 修复了处理 PDF 格式图像的问题

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |问题类型 |
| --- | --- | --- |
|比较网-1156 |通过比较添加比较 DICOM 文档的能力。成像 |新功能 |
|比较网-1163 |应用/放弃 DICOM 格式的更改 |新功能 |
| OMPARISONNET-1165 |将摘要页面添加到图像流 |新功能 |
|比较网-1143 |向 GroupDocs.Comparison 公共 API 添加对格式的多重比较的支持 |新功能 |
|比较网-1172 |为成像添加 UpdateChanges 模型 |新功能 |
|比较网-1175 |添加对比CAD的支持 |新功能 |
|比较网-1217 |添加对 JPG、BMP 和 PNG 格式的支持 |新功能 |
|比较网-1170 | GroupDocs.Comparison.PDF：在构建对象模型之前添加页面上下文的比较|新功能 |
|比较网-1273 | GroupDocs.Comparison.Words：增加对克隆文档元数据设置的支持 |新功能 |
|比较网-1295 |通过 GroupDocs.Comparison 为 .NET 添加对电子邮件格式的支持 |新功能 |
|比较网-1276 | GroupDocs.Comparison 所有格式：在 Change Info 中添加对 Check Box 和 Page 的支持 |新功能 |
|比较网-1272 | GroupDocs.Comparison.Words：添加应用或丢弃更改类别的能力 |新功能 |
|比较网-1274 | GroupDocs.Comparison：所有格式：添加对样式设置的支持：粗体、斜体、下划线和删除线 |新功能 |
|比较网-1332 |为所有格式的克隆密码添加设置 |新功能 |
|比较网-1331 | Groupdocs.Comparison：为克隆元数据添加设置 |新功能 |
|比较网-1339 |添加应用或丢弃更改类别的能力 |新功能 |
|比较网-1407 |将图像坐标添加为样式 |新功能 |
|比较网-1395 |添加段落合并 |新功能 |
|比较网-1387 |为 PDF 添加设置密码到文档 |新功能 |
|比较网-1367 | Compare.Cells：添加支持页眉和页脚|新功能 |
|比较网-1365 |添加对数据透视表的页眉和页脚的支持 |新功能 |
|比较网-1362 |在单元格中添加对数据透视表的支持 |新功能 |
|比较网-1305 |通过 GroupDocs.Comparison 为 .NET 添加对 OneNote 格式的支持 |新功能 |
|比较网-778 |实现合并单元格表格的流程吸收 |改进 |
|比较网-1148 |改进的公共 API |改进 |
|比较网-1161 |添加在 Imaging.Tests 中比较结果和原始文件的功能 |改进 |
|比较网-1157 |在单元格、单词、幻灯片和 PDF 中打开文档时添加密码错误的本地化例外 |改进 |
|比较网-1188 |改进图像格式的比较 |改进 |
|比较网-1182 |跨所有受支持格式的跨格式 API 简化 |改进 |
|比较网-1080 |比较.PDF：改进段落的比较更改检测 |改进 |
|比较网-1254 |在单词比较中删除/更改文本的删除选项 |改进 |
|比较网-1237 | GroupDocs.Comparison.Imaging：提高比较性能 |改进 |
|比较网-1235 | GroupDocs.Comparison.Text：提高比较性能 |改进 |
|比较网-1218 |修复对 PDF 新设置的支持 |改进 |
|比较网-1245 | Compare.Words：用完全不同的段落修复大小写 |改进 |
| OMPARISONNET-1244 |为比较添加样式更改检测。成像（高度，宽度）|改进 |
|比较网-1263 |改进关于所有格式比较结果的摘要页面信息 |改进 |
|比较网-1232 | GroupDocs.Comparison.Slides：改进的比较性能 |改进 |
|比较网-1275 | GroupDocs.Comparison.Words：为 StyleChanged 更改添加 UpdateChanges 支持改进 |
|比较网-1288 | GroupDocs.Comparison.Cells：为组件定义 Cells 坐标 |改进 |
|比较网-1245 | GroupDocs.Comparison.HTML：改进的比较性能 |改进 |
|比较网-1234 | GroupDocs.Comparison.Cell：改进的比较性能 |改进 |
|比较网-1311 | GroupDocs.Comparison.Cells：引入 IComparisonStyle 接口 |改进 |
|比较网-1313 |比较.Cells：添加克隆能力 |改进 |
|比较网-1378 |如果其坐标已被使用，则查找数据透视表的正确位置 |改进 |
|比较网-1372 |细胞比较改进 |改进 |
|比较网-1358 | GroupDocs.Comparison.Slides：在形状上添加对超链接的支持 |改进 |
|比较网-1326 |更新记录器 |改进 |
|比较网-1409 | Pdf 改进：检查比较并将 HeaderFooter 添加到文档 |改进 |
|比较网-1408 | Pdf 改进：更新页面属性 |改进 |
|比较网-1402 |改进比较中评论的比较。单元格 |改进 |
|比较网-1400 |重构设置代码 |改进 |
|比较网-1396 |从 FeelChild 方法中删除空值检查 |改进 |
|比较网-1390 |改进比较。注意 |改进 |
|比较网-1431 |比较.Pfd：使用新内容映射重构文档构建器|改进 |
|比较网-1429 |比较.pdf：实现页面内容图 |改进 |
|比较网-1427 | Pdf 改进：检查和修复列比较 |改进 |
|比较网-1424 |改进风格改变了比较深。注|改进 |
|比较网-1422 |添加 ParagraphMerger 进行比较。注意 |改进 |
|比较网-1420 |更新pdf结构|改进 |
|比较网-1418 |将 IntermediateParagraphComparer 添加到 Words |改进 |
|比较网-1160 | PDF 比较 - 带有表格和页脚行的 PDF 文件生成意外输出 |错误 |
|比较网-1184 | GroupDocs.Comparison.Words：由 Words 引擎比较的带有 html 内容的文本文件 |错误 |
|比较网-1185 | GroupDocs.Comparison.Text：修复使用单词比较器比较 .txt 文件中的 html 代码 |错误 |
|比较网-1200 | GroupDocs.Comparison.PDF：修复段落中的文本与表格重叠时的错误 |错误 |
|比较网-1208 |立面处理图像 |错误 |
|比较网-1256 |新版本 17.4.0 缺少 ChangeInfo 的属性 |错误 |
|比较网-1246 |比较.幻灯片：两个几乎相同的评论被比较为不同 |错误 |
|比较网-1292 |比较.幻灯片：拒绝或接受更改后表格单元格的样式错误|错误 |
|比较网-1300 | Compare.Slides：拒绝删除 SmartNode 后丢失内容 |错误 |
|比较网-1284 | Compare.Words：不同样式的表格比较不正确 |错误 |
|比较网-1314 |比较.Cells：修复在单元格内容未更改时获取样式更改|错误 |
|比较网-1333 |修复当单元格内容未更改时获取样式更改的问题 |错误 |
|比较网-1315 | Compare.Cells：使用超链接改进组件的接受和拒绝|错误 |
|比较网-1370 |许可无效 |错误 |
|比较网-1315 | Compare.Cells：使用超链接改进组件的接受和拒绝|错误 |
|比较网-1376 |摘要页面不适用于 API v 17.7.0 |错误 |
|比较网-1291 |比较。幻灯片：接受\\拒绝错误 |错误 |
|比较网-1410 |修复摘要页面样式 |错误 |
|比较网-1405 |修复深度变化的节点 |错误 |
|比较网-1399 |修复用于比较的 saveImages 和 getImages 方法。注意 |错误 |
|比较网-1394 |具有相同文本的错误划分为不同的段落 |错误 |
|比较网-1392 |轮廓过多的错误 |错误 |
|比较网-1385 |获取更改作者的问题 (Changeinfo) |错误 |
|比较网-1433 | Word中的中间段落问题|错误 |
|比较网-1432 |比较。注意：修复分词的特殊情况 |错误 |
|比较网-1430 |比较。注意：在单词中间换行 |错误 |
|比较网-1428 |修复图像矩形 PDF 中的无限循环 |错误 |
|比较网-1423 |比较。注意插入\\删除文本前的空段落|错误 |
|比较网-1421 |具有相似坐标的表相互重叠 |错误 |
|比较JAVA-419 |对于 RTF 比较，API 会检测样式更改，但不会像 DOCX 那样突出显示它们。 |错误 |
|比较JAVA-418 |特定 PDF 的比较返回 null |错误 |
|比较JAVA-383 | PDF 文档的无效比较 |错误 |
|比较JAVA-380 |将文件与其自身进行比较，结果不佳 |错误 |
|比较JAVA-377 | HTML 比较不起作用 |错误 |
|比较网-1523 | PDF 比较 - 加扰/文本重叠输出 |错误 |
|比较JAVA-226 |比较器不比较任何格式并在 ICompareResult | 返回 null错误 |
|比较JAVA-421 | PDF比较的输出不符合预期，超过第一行的所有文本都丢失了|错误 |
|比较JAVA-420 | PDF比较中未检测到样式更改，并且PDF在多个地方也被截断 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本节列出了 GroupDocs.Comparison for Java 18.6 中引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

没有任何。

