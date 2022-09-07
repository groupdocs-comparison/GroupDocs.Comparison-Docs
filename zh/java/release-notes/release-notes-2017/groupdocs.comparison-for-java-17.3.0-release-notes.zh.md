---
id: groupdocs-comparison-for-java-17-3-0-release-notes
url: comparison/java/groupdocs-comparison-for-java-17-3-0-release-notes
title: "Java 17.3.0 发行说明的 GroupDocs.Comparison"
weight: 2
description: ""
关键词：
产品名称：Java 的 GroupDocs.Comparison
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for Java 17.3.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有改进和修复。最值得注意的是：

* 在Comparison.Cells 中引入了对形状的支持
*在Comparison.PDF中引入了对文本水印的支持
* 改进了幻灯片的对齐方式，以便在 GroupDocs.Comparison.Slides 中进行更精确的更改检测
* 改进 GroupDocs.Comparison.PDF 对象模型和比较效率
* 引入了对 Compare.Cells 中应用/放弃更改的支持的支持
* 引入了对 Compare.PDF 中应用/放弃更改的支持的支持
* 在 Comparison.Cells 中引入了对水印、超链接、评论、文本框、形状的支持
* 提高 GroupDocs.Comparison.PDF 比较效率
* 添加对 Imaging DjVu 的支持
*在Comparison.PDF中引入了对水印中文本字体的支持
* 引入了对图像、图表、智能艺术、VBA 控件、Comparison.Cells 中的公式的支持
* 提高 GroupDocs.Comparison.PDF 比较效率
* 添加通过Comparison.Imaging比较DICOM文件的能力
* 简化和改进了所有支持格式的公共 API
* 为GroupDocs.Comparison.PDF引入合并单元格表格的吸收过程
* 修复了 GroupDocs.Comparison.PDF 的比较填充表

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-1034 | GroupDocs.Comparison.Cells：添加对 Shapes 的支持 |新功能 |
|比较网-1011 | GroupDocs.Comparison.PDF：为文本水印添加样式支持 |新功能 |
|比较网-1053 | GroupDocs.Comparison.PDF：添加对应用/放弃更改的支持 |新功能 |
|比较网-975 | GroupDocs.Comparison.PDF：添加对水印的支持 |新功能 |
|比较网-1065 | GroupDocs.Comparison.Cells：添加对超链接的支持 |新功能 |
|比较网-1069 | GroupDocs.Comparison.Cells：添加对评论的支持 |新功能 |
|比较网-1072 | GroupDocs.Comparison.Cells：添加对文本框的支持 |新功能 |
|比较网-1063 | GroupDocs.Comparison.Cells：添加对应用/放弃更改的支持 |新功能 |
|比较网-1073 | GroupDocs.Comparison.Cells：添加对形状的支持 |新功能 |
|比较网-1123 |集成计量许可 |新功能 |
|比较网-1122 | GroupDocs.Comparison.PDF：添加支持比较水印中的文本字体|新功能 |
|比较网-1068 | GroupDocs.Comparison.Cells：添加对公式的支持 |新功能 |
|比较网-1065 | GroupDocs.Comparison.Cells：添加对图像的支持 |新功能 |
|比较网-1070 | GroupDocs.Comparison.Cells：添加对图表的支持 |新功能 |
|比较网-1066 | GroupDocs.Comparison.Cells：添加对 Smart Art 的支持新功能 |
|比较网-1067 | GroupDocs.Comparison.Cells：添加对 VBA 控件的支持 |新功能 |
|比较网-1108 |添加对mobi格式的支持|新功能 |
|比较网-1156 |通过比较添加比较 DICOM 文档的能力。成像 |新功能 |
|比较网-1163 |应用/放弃 DICOM 格式的更改 |新功能 |
| OMPARISONNET-1165 |将摘要页面添加到图像流 |新功能 |
|比较网-1014 | GroupDocs.Comparison.Slides：改进幻灯片的对齐方式以实现更精确的更改检测 |改进 |
|比较网-1029 | GroupDocs.Comparison.PDF：在段落吸收之前从文档中删除文本伪影|改进 |
|比较网-1048 | GroupDocs.Comparison.PDF：改进组件的设置坐标|改进 |
|比较网-1047 | GroupDocs.Comparison.PDF：改进设置 HorizontalAlignment |改进 |
|比较网-1075 | GroupDocs.Comparison.Cells：为已删除和插入的单元格和单元格范围添加边框 |改进 |
|比较网-679 |修复修改后的表移动到新页面时不删除之前版本添加表的问题 |改进 |
|比较网-1055 |在吸收段落发生一些变化后改进逐页修剪|改进 |
|比较网-1080 | GroupDocs.Comparison.PDF：改进段落的比较更改检测 |改进 |
|比较网-1056 |提高页眉、页脚中图像的 GroupDocs.Comparison.PDF 比较质量，按页设置组件和段落的坐标 |改进 |
|比较网-1112 |添加对 Imaging DjVu 的支持 |改进 |
|比较网-1080 | GroupDocs.Comparison.PDF：改进段落的比较更改检测 |改进 |
|比较网-778 |实现合并单元格表格的流程吸收 |改进 |
|比较网-1148 |改进的公共 API |改进 |
|比较网-1161 |添加在 Imaging.Tests 中比较结果和原始文件的功能 |改进 |
|比较网-1157 |在单元格、单词、幻灯片和 PDF 中打开文档时添加密码错误的本地化例外 |改进 |
|比较网-953 | VB.NET 比较文档的编译错误错误 |
|比较网-946 |例外：newChild 是从与创建此节点的文档不同的文档创建的。 |错误 |
|比较网-1074 | GroupDocs.Comparison：PDF：设置分页后段落运行的类型更改 |错误 |
|比较网-1077 | Compare.Cells：在 Aligner 比较器和文档生成器的关键更新后修复单元格外观 |错误 |
|比较网-1129 | GroupDocs.Comparison.PDF：修复某些行被删除或插入不应该出现的错误 |错误 |
|比较网-1130 | GroupDocs.Comparison.PDF：当段落的第一行没有缩进但应该有 | 时修复错误错误 |
|比较网-1131 | GroupDocs.Comparison.PDF：修复组件更改其页面但不更改其位置但应该是的错误 |错误 |
|比较网-1128 | GroupDocs.Comparison.PDF：修复段落第一行用作非段落行时的错误 |错误 |
|比较网-1132 | GroupDocs.Comparison.PDF：修复表格中的文本在简单段落中使用两次时的错误 |错误 |
|比较网-1160 | PDF 比较 - 带有表格和页脚行的 PDF 文件生成意外输出 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了 GroupDocs.Comparison for Java 17.3.0 中引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

### 更新了对以下派生对象使用比较设置的方法：

* WordsComparisonSettings
* Pdf比较设置
* 细胞比较设置
* 幻灯片比较设置
* 文本比较设置

＃＃＃＃ 特性

|姓名 |说明 |
| --- | --- |
| **显示已删除内容** |显示或隐藏已删除的比较内容 |
| **生成摘要页** |启用或禁用为结果文档生成摘要页面的能力 |
| **风格变化检测** |获取或设置检测文档子组件样式更改的能力 |
| **移动内容检测** |获取或设置检测内容移动的能力 |
| **InsertedItemsStyle** |获取或设置插入组件的样式 |
| **StyleChangedItemsStyle** |获取或设置更改样式的组件的样式 |
| **已删除项目样式** |获取或设置已删除组件的样式 |
| **WordsSeparatorChars** |获取或设置在比较时将文本内容解析为文本片段的字符列表 |
| **比较深度** |获取或设置比较深度（字符或文本片段） |
| **异常静音模式** |获取或设置应用程序的静默模式 |
| **ComparerSplitter** |获取或设置在比较时将文本内容解析为文本片段的正则表达式拆分器 |

#### 样式设置

|姓名 |说明 |
| --- | --- |
| **图表图像** |获取或设置一个值，将图表保存为图像。 |

## 单词比较设置

＃＃＃ 特性

|姓名 |说明 |
| --- | --- |
| **ProcessHyperLinksAsAText** |获取或设置一个值，该值指示超链接是否作为文本进行 |

### 使用设置

要开始使用比较设置，您必须为必要的文件格式创建一个新的比较设置实例。例如



```java
CellsComparisonSettings settings = new CellsComparisonSettings()

//Or 

WordsComparisonSettings settings = new WordsComparisonSettings()
```

您可以为 GroupDocs.Comparison 库支持的每种比较类型创建一个 ComparisonSettings 对象

创建 ComparisonSettings 的新实例后，您可以更改设置属性。例如：



```java
settings.setShowDeletedContent(false);
settings.setGenerateSummaryPage(true);
```

用户还可以更改特定格式的参数。例如：



```java
WordsComparisonSettings settings = new WordsComparisonSettings()
settings.setProcessHyperLinksAsAText(true);
```

## **更新了 Open Document API 以使用 .opt 格式**

### 从 InputStream 打开 word 文档

注意：假设 source.docx、source.xlsx、source.pdf、source.pptx、source.txt 中有文件在资源文件夹中。



```java
// Enter document path
String sourcePath = "./source.docx";

// Create stream of document
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonDocument.
ComparisonDocument document = new ComparisonDocument(sourceStream);
 
```

### 从文件中打开words文档



```java
// Enter document path
String sourcePath = "./source.docx";

// Open ComparisonDocument.
ComparisonDocument document = new ComparisonDocument(sourcePath);
```

## **打开**工作簿****

### 从 InputStream 打开工作簿



```java
// Enter workbook path
String sourcePath = "./source.xlsx";

// Create stream of workbook
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonWorkbook.
ComparisonWorkbook workbook = new ComparisonWorkbook(sourceStream); 
```

### 从文件打开工作簿



```java
// Enter workbook path
String sourcePath = "./source.xlsx";

// Open ComparisonWorkbook.
ComparisonWorkbook workbook = new ComparisonWorkbook(sourcePath);

```

## **打开**PDF文档****

### 从 InputStream 打开 PDF 文档



```java
// Enter document path
String sourcePath = "./source.pdf";

// Create stream of document
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonDocument.
ComparisonPdfDocument document = new ComparisonPdfDocument(sourceStream);


```

### 从文件中打开 PDF 文档



```java
// Enter document path
String sourcePath = "./source.pdf";

// Open ComparisonDocument.
ComparisonPdfDocument document = new ComparisonPdfDocument(sourcePath);

```

## **打开**演示文稿****

### 从 InputStream 打开演示文稿



```java
// Enter presentation path
String sourcePath = "./source.pptx";

// Create stream of presentation
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonPresentation.
ComparisonPresentation presentation = new ComparisonPresentation(sourceStream);

```

### 从文件中打开演示文稿



```java
// Enter presentation path
String sourcePath = "./source.pptx";

// Open ComparisonPresentation.
ComparisonPresentation presentation = new ComparisonPresentation(sourcePath);


```

## **打开**文本文件****

### 从 InputStream 打开文本文件



```java
// Enter textFile path
String sourcePath = "./source.txt";

// Create stream of document
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonTextFile.
ComparisonTextFile textFile = new ComparisonTextFile(sourceStream);


```

### 从文件中打开文本文件



```java
// Enter document path
String sourcePath = "./source.txt";

// Open ComparisonTextFile.
ComparisonTextFile textFile = new ComparisonTextFile(sourcePath);
 
```

## **打开 HTML **文件****

### 从 InputStream 打开 HTML 文件



```java
// Enter document path
String sourcePath = "./source.html";
InputStream sourceStream = this.getClass().getClassLoader().getResourceAsStream(sourcePath);

// Open ComparisonTextFile.
IComprisonHtmlDocument htmlFile = new ComparisonHtmlDocument(sourceStream);

```

### 从文件中打开 HTML 文件



```java
// Enter document path
String sourcePath = "./source.html";

// Open ComparisonTextFile.
IComparisonHtmlDocument htmlFile = new ComparisonHtmlDocument(sourcePath);

```

## 更新了 Presentation API 以使用 .opt 格式

### 比较流中的两个演示文稿并保存到文件和设置

注意：假设source.docx、source.xlsx、source.pdf、source.pptx、source.txt中有文件在samples的resources文件夹中。



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";
String resultPath = "./result.pptx";
        

// Create stream of document
InputStream sourceStream = new FileInputStream(sourcePath);
InputStream targetStream = new FileInputStream(targetPath);

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourceStream, targetStream, resultPath, ComparisonType.Slides, new SlidesComparisonSettings());

```

### 将流中的两个演示文稿与设置进行比较



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";

// Create two streams of presentations

InputStream sourceStream = new FileInputStream(sourcePath);
InputStream targetStream = new FileInputStream(targetPath);

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourceStream, targetStream, ComparisonType.Slides, new SlidesComparisonSettings());

```

### 比较流中的两个演示文稿并保存到文件



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";
String resultPath = "./result.pptx";

// Create two streams of presentations
InputStream sourceStream = new FileInputStream(sourcePath);
InputStream targetStream = new FileInputStream(targetPath);

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourceStream, targetStream, resultPath, ComparisonType.Slides);

```

### 比较流中的两个演示文稿



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";

// Create two streams of presentations
InputStream sourceStream = new FileInputStream(sourcePath);
InputStream targetStream = new FileInputStream(targetPath);

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourceStream, targetStream, ComparisonType.Slides);

```

### 比较文件中的两个演示文稿并保存到文件和设置



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";
String resultPath = "./result.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, resultPath, ComparisonType.Slides, new SlidesComparisonSettings());

```

### 将文件中的两个演示文稿与设置进行比较



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, ComparisonType.Slides, new SlidesComparisonSettings());

```

### **比较文件中的两个演示文稿并保存到文件**



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";
String resultPath = "./result.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, resultPath, ComparisonType.Slides);

```

### 比较文件中的两个演示文稿



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, ComparisonType.Slides);
```

## 更新了将演示文稿另存为图像 API 以使用 .opt 格式

### **将演示文稿另存为图像**

要开始为幻灯片组件保存图像，您必须添加 GroupDocs.Comparison 库并将以下导入添加到您的代码中

```java
import com.groupdocs.comparison.slides.*;
import com.groupdocs.comparison.slides.contracts.*;
import com.groupdocs.comparison.slides.contracts.comparison.*;
import com.groupdocs.comparison.slides.contracts.enums.*;
import com.groupdocs.comparison.common.images.*;

```

之后，您必须指定要保存为图像的文档的路径。最简单的方法就是将文档放到工作项目的输出文件夹中

### **通过图像文件夹将演示文稿保存到图像**

saveAsImages(String imagePath, ComparsionSlidesImageSettings 设置)

|参数 |说明 |
| --- | --- |
|字符串图像路径 |保存图像的文件夹路径 |
| ComparsionSlidesImageSettings 设置 |图片保存设置 |



```java
//path to file
String filePath = "./presentation.xlsx";

//path to image folder
String imageFolderPath = "./FolderForImage/";

//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentation(filePath);

//Set settings
ComparisonSlidesImageSettings settings = new ComparisonSlidesImageSettings();

//Save as Image
presentation.saveAsImages(imageFolderPath, settings);
```

### **通过流将演示文稿保存到图像**

saveAsImages（数组列表<ByteArrayOutputStream>imageStream、ComparsionSlidesImageSettings 设置）

|姓名 |说明 |
| --- | --- |
|数组列表<ByteArrayOutputStream>图像流 |图像流——列表中的每个流都包含文档中的单个页面 |
| ComparsionSlidesImageSettings 设置 |图片保存设置 |



```java
//path to file
String filePath = "./presentation.xlsx";

//stream
ArrayList<ByteArrayOutputStream> imageStream = new ArrayList<ByteArrayOutputStream>();

//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentation(filePath);

//Set settings
ComparisonSlidesImageSettings settings = new ComparisonSlidesImageSettings();

//Save as Image
presentation.saveAsImages(imageStream, settings);

```

### **通过图像文件夹将幻灯片从演示文稿保存到图像**

saveSlideAsImage (String imagePath, ComparsionSlidesImageSettings 设置, int slideIndex )

|姓名 |说明 |
| --- | --- |
|字符串图像路径 |保存图像的文件夹路径 |
| ComparsionSlidesImageSettings 设置 |图片保存设置 |
|整数幻灯片索引 |幻灯片索引 |



```java
//path to file
String filePath = "./presentation.xlsx";

//path to image folder
String imageFolderPath = "./FolderForImage/";

//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentation(filePath);

//Set settings
ComparisonSlidesImageSettings settings = new ComparisonSlidesImageSettings();

//Save slide as Image
presentation.saveSlideAsImage(imageFolderPath, settings, slideIndex);

```

### 通过流将演示文稿的幻灯片保存到图像

saveSlideAsImage (ArrayList<ByteArrayOutputStream> imageStream, ComparsionSlidesImageSettings 设置, int slideIndex )

|姓名 |说明 |
| --- | --- |
|数组列表<ByteArrayOutputStream>图像流 |图像流——列表中的每个流都包含文档中的单个页面 |
| ComparsionSlidesImageSettings 设置 |图片保存设置 |
|整数幻灯片索引 |幻灯片索引 |



```java
//path to file
String filePath = "./presentation.xlsx";

//Stream
ArrayList<ByteArrayOutputStream> imageStream = new ArrayList<ByteArrayOutputStream>();

//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentation(filePath);

//Set settings
ComparisonSlidesImageSettings settings = new ComparisonSlidesImageSettings();

//Save slide as Image
presentation.saveSlideAsImage(imageStream, settings, slideIndex);

```

## 计量许可

```java
// Create new instance of GroupDocs.Comparison.Metered classs
Metered metered = new Metered();
 
// Set public and private key to metered instance
metered.setMeteredKey("***", "***");
 
// Get metered value before usage of the comparison
BigDecimal amountBefore = Metered.getConsumptionQuantity();
 
System.out.println("Amount consumed  before: " + amountBefore);
 
// compare files
String sourcePath = "./data/source.docx";
String targetPath = "./data/target.docx";
 
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath);
 
// Get metered value after usage of the comparison
BigDecimal amountAfter = Metered.getConsumptionQuantity();
 
System.out.println("Amount consumed  after: " + amountAfter);
```

## 扩展公共 API 以支持图像格式

### **从流中比较**

比较流中的两个 Imaging(DjVu) 文档并将结果保存到文件中



```java
// Create two streams of documents
InputStream sourceStream = new FileInputStream(sourcePath);
InputStream targetStream = new FileInputStream(targetPath);

ComparisonDjvuImage sourceImage = new ComparisonDjvuImage(sourceStream);
ComparisonDjvuImage targetImage = new ComparisonDjvuImage(targetStream);

ImagingComparisonSettings settings = new ImagingComparisonSettings();

//Compare
IImageCompareResult cr = sourceImage.compareWith(targetImage, settings);
IPdfDocument resultPdf = cr.getPdfDocument();

//save results into a file
resultPdf.save(resultPath);
sourceStream.close();
targetStream.close();
```

  


### 从文件比较

比较文件路径中的两个 Imaging(DjVu) 文档并将结果保存到文件中



```java
//Open files 
ComparisonDjvuImage sourceImage = new ComparisonDjvuImage(sourcePath);
ComparisonDjvuImage targetImage = new ComparisonDjvuImage(targetPath);
ImagingComparisonSettings settings = new ImagingComparisonSettings();

//Compare
IImageCompareResult cr = sourceImage.compareWith(targetImage, settings);
IPdfDocument resultPdf = cr.getPdfDocument();

//save results into a file
resultPdf.save(resultPath);
```

### 从文件与文档设置进行比较

比较文件中的两个 Imaging(DjVu) 文档，并将结果保存到具有文档设置的文件中



```java
//Open files
ComparisonDjvuImage sourceImage = new ComparisonDjvuImage(sourcePath);
ComparisonDjvuImage targetImage = new ComparisonDjvuImage(targetPath);

//Create instance of setting
ImagingComparisonSettings settings = new ImagingComparisonSettings();

//Accuracy by X coordinate
settings.setAccuracyX(200);

//Accuracy by Y coordinate
settings.setAccuracyY(200);

//filling density color changed objects
settings.setSaprayFulness(10);

//Fill color for rectangles
settings.setRectangleColor(Color.RED);

//Compare
IImageCompareResult cr = sourceImage.compareWith(targetImage,settings);
IPdfDocument resultPdf = cr.getPdfDocument();

//save results into a file
resultPdf.save(resultPath);
```

