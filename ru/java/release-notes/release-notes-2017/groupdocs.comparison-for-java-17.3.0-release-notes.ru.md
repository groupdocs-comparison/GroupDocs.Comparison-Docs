---
id: groupdocs-comparison-for-java-17-3-0-release-notes
url: comparison/java/groupdocs-comparison-for-java-17-3-0-release-notes
title: "Примечания к выпуску GroupDocs.Comparison для Java 17.3.0"
weight: 2
description: ""
ключевые слова:
productName: GroupDocs.Comparison для Java
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для Java 17.3.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть улучшения и исправления. Наиболее заметными являются:

* Введена поддержка Shapes в Comparison.Cells
* Добавлена поддержка текстовых водяных знаков в Comparison.PDF.
* Улучшено выравнивание слайдов для более точного определения изменений в GroupDocs.Comparison.Slides.
* Улучшена объектная модель GroupDocs.Comparison.PDF и эффективность сравнения
* Введена поддержка поддержки изменений Apply/Discard в Comparison.Cells.
* Введена поддержка поддержки изменений Apply/Discard в Comparison.PDF.
* Введена поддержка водяных знаков, гиперссылок, комментариев, текстовых полей, фигур в Comparison.Cells
* Улучшена эффективность сравнения GroupDocs.Comparison.PDF
* Добавлена поддержка Imaging DjVu
* Введена поддержка текстового шрифта в водяных знаках в Comparison.PDF.
* Введена поддержка изображений, диаграмм, Smart Art, элементов управления VBA, формул в Comparison.Cells.
* Улучшена эффективность сравнения GroupDocs.Comparison.PDF
* Добавлена возможность сравнения документов DICOM с помощью Comparison.Imaging.
* Упрощенный и улучшенный общедоступный API для всех поддерживаемых форматов.
* Введен процесс поглощения таблиц с объединенными ячейками для GroupDocs.Comparison.PDF
* Исправлено сравнение заполненных таблиц для GroupDocs.Comparison.PDF

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-1034 | GroupDocs.Comparison.Cells: добавлена поддержка фигур | Новая функция |
| СРАВНЕНИЕ-1011 | GroupDocs.Comparison.PDF: добавить поддержку стилей в текстовые водяные знаки | Новая функция |
| СРАВНЕНИЕ-1053 | GroupDocs.Comparison.PDF: Добавлена поддержка изменений «Применить/Отменить» | Новая функция |
| СРАВНЕНИЕ-975 | GroupDocs.Comparison.PDF: Добавлена поддержка водяных знаков | Новая функция |
| СРАВНЕНИЕ-1065 | GroupDocs.Comparison.Cells: добавлена поддержка гиперссылок | Новая функция |
| СРАВНЕНИЕ-1069 | GroupDocs.Comparison.Cells: добавлена поддержка комментариев | Новая функция |
| СРАВНЕНИЕ-1072 | GroupDocs.Comparison.Cells: добавлена поддержка текстового поля | Новая функция |
| СРАВНЕНИЕ-1063 | GroupDocs.Comparison.Cells: Добавлена поддержка изменений Apply/Discard | Новая функция |
| СРАВНЕНИЕ-1073 | GroupDocs.Comparison.Cells: добавлена поддержка фигур | Новая функция |
| СРАВНЕНИЕ-1123 | Интеграция лимитного лицензирования | Новая функция |
| СРАВНЕНИЕ-1122 | GroupDocs.Comparison.PDF: добавлена поддержка сравнения шрифтов текста в водяных знаках | Новая функция |
| СРАВНЕНИЕ-1068 | GroupDocs.Comparison.Cells: Добавлена поддержка формул | Новая функция |
| СРАВНЕНИЕ-1065 | GroupDocs.Comparison.Cells: Добавлена поддержка изображений | Новая функция |
| СРАВНЕНИЕ-1070 | GroupDocs.Comparison.Cells: Добавлена поддержка Chart | Новая функция |
| СРАВНЕНИЕ-1066 | GroupDocs.Comparison.Cells: Добавлена поддержка Smart Art | Новая функция |
| СРАВНЕНИЕ-1067 | GroupDocs.Comparison.Cells: добавлена поддержка элементов управления VBA | Новая функция |
| СРАВНЕНИЕ-1108 | Добавить поддержку формата mobi | Новая функция |
| СРАВНЕНИЕ-1156 | Добавить возможность сравнения документов DICOM с помощью Comparison.Imaging | Новая функция |
| СРАВНЕНИЕ-1163 | Применить/Отменить изменения для формата DICOM | Новая функция |
| ОПАРИСОННЕТ-1165 | Добавить сводную страницу в потоки изображений | Новая функция |
| СРАВНЕНИЕ-1014 | GroupDocs.Comparison.Slides: улучшенное выравнивание слайдов для более точного обнаружения изменений | Улучшение |
| СРАВНЕНИЕ-1029 | GroupDocs.Comparison.PDF: Удаление текстовых артефактов из документов перед поглощением абзаца | Улучшение |
| СРАВНЕНИЕ-1048 | GroupDocs.Comparison.PDF: Уточните набор координат для компонентов | Улучшение |
| СРАВНЕНИЕ-1047 | GroupDocs.Comparison.PDF: Улучшить набор HorizontalAlignment | Улучшение |
| СРАВНЕНИЕ-1075 | GroupDocs.Comparison.Cells: Добавить границы для удаленных и вставленных ячеек и Диапазон ячеек | Улучшение |
| СРАВНЕНИЕ-679 | Исправлена проблема с перемещением измененной таблицы на новую страницу без удаления предыдущей версии добавленной таблицы | Улучшение |
| СРАВНЕНИЕ-1055 | Улучшение Обрезать абзацы по страницам после некоторых изменений в поглощающих абзацах | Улучшение |
| СРАВНЕНИЕ-1080 | GroupDocs.Comparison.PDF: улучшено обнаружение изменений при сравнении для абзацев | Улучшение |
| СРАВНЕНИЕ-1056 | Улучшение качества сравнения GroupDocs.Comparison.PDF изображений в шапке, футере, установка координат компонентов и абзацев по страницам | Улучшение |
| СРАВНЕНИЕ-1112 | Добавить поддержку Imaging DjVu | Улучшение |
| СРАВНЕНИЕ-1080 | GroupDocs.Comparison.PDF: улучшено обнаружение изменений при сравнении для абзацев | Улучшение |
| СРАВНЕНИЕ-778 | Реализовать процесс поглощения таблиц с объединенными ячейками | Улучшение |
| СРАВНЕНИЕ-1148 | Улучшенный общедоступный API | Улучшение |
| СРАВНЕНИЕ-1161 | Добавить возможность сравнения результатов и исходных файлов в Imaging.Tests | Улучшение |
| СРАВНЕНИЕ-1157 | Добавить исключения локализации для неправильных паролей при открытии документов в Cells, Words, Slides и PDF | Улучшение |
| СРАВНЕНИЕ-953 | Ошибка компиляции в документе сравнения для VB.NET | Ошибка |
| СРАВНЕНИЕ-946 | Исключение: newChild был создан из документа, отличного от того, который создал этот узел. | Ошибка |
| СРАВНЕНИЕ-1074 | GroupDocs.Comparison: PDF: Установить изменение типа абзаца после разрыва страницы | Ошибка |
| СРАВНЕНИЕ-1077 | Comparison.Cells: Исправлен внешний вид ячеек после критического обновления для компаратора Aligner и построителя документов | Ошибка |
| СРАВНЕНИЕ-1129 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда некоторые строки удалялись или вставлялись туда, где их быть не должно | Ошибка |
| СРАВНЕНИЕ-1130 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда первая строка абзаца не имела отступа, но должна была | Ошибка |
| СРАВНЕНИЕ-1131 | GroupDocs.Comparison.PDF: Исправить ошибку, когда компонент меняет свою страницу, но не меняет свою позицию, но должен быть | Ошибка |
| СРАВНЕНИЕ-1128 | GroupDocs.Comparison.PDF: исправлена ошибка, когда первая строка абзаца использовалась как не строка абзаца | Ошибка |
| СРАВНЕНИЕ-1132 | GroupDocs.Comparison.PDF: Исправить ошибку, когда текст из таблиц используется дважды с простыми абзацами | Ошибка |
| СРАВНЕНИЕ-1160 | Сравнение PDF - PDF-файлы с таблицами и строками нижнего колонтитула, создающие неожиданный вывод | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для Java 17.3.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

### Обновлен способ использования настроек сравнения для следующих производных объектов:

* Настройки сравнения слов
* Настройки сравнения PDF
* Настройки сравнения ячеек
* Настройки сравнения слайдов
* Настройки сравнения текста

#### Характеристики

| Имя | Описание |
| --- | --- |
| **Показать удаленное содержимое** | Показывает или скрывает удаленный контент сравнения |
| **Создать сводную страницу** | Включает или отключает возможность создания итоговой страницы для результирующего документа |
| **Обнаружение изменения стиля** | Получает или задает возможность обнаружения изменений стиля для подкомпонентов документов |
| **Обнаружение перемещенного содержимого** | Получает или задает возможность обнаружения перемещения содержимого |
| **Стиль вставленных элементов** | Получает или задает стиль для вставленных компонентов |
| **StyleChangedItemsStyle** | Получает или задает стиль для компонента, который изменил стиль |
| **Стиль удаленных элементов** | Получает или задает стиль для удаленных компонентов |
| **WordsSeparatorChars** | Получает или задает список символов, который анализирует текстовое содержимое на текстовый фрагмент при сравнении |
| **Глубина сравнения** | Получает или задает глубину сравнения (символы или текстовые фрагменты) |
| **ExceptionSilentMode** | Получает или задает беззвучный режим для приложения |
| **КомпарерСплиттер** | Получает или задает разделитель регулярных выражений, который анализирует текстовое содержимое на фрагмент текста при сравнении |

#### Настройка стиля

| Имя | Описание |
| --- | --- |
| **Изображение диаграммы** | Получает или задает значение, сохраняет диаграммы как изображение. |

## Настройки сравнения слов

### Характеристики

| Имя | Описание |
| --- | --- |
| **Обработать гиперссылки как текст** | Получает или задает значение, указывающее, обрабатываются ли гиперссылки как текст |

### Работа с настройками

Чтобы начать работу с настройками Comparison, вам необходимо создать новый экземпляр ComparisonSettings для нужного формата файла. Например



```java
CellsComparisonSettings settings = new CellsComparisonSettings()

//Or 

WordsComparisonSettings settings = new WordsComparisonSettings()
```

Вы можете создать объект ComparisonSettings для каждого типа сравнения, поддерживаемого библиотекой GroupDocs.Comparison.

После создания нового экземпляра ComparisonSettings вы можете изменить свойства настроек. Например:



```java
settings.setShowDeletedContent(false);
settings.setGenerateSummaryPage(true);
```

Пользователь также может изменить параметры, специфичные для определенного формата. Например:



```java
WordsComparisonSettings settings = new WordsComparisonSettings()
settings.setProcessHyperLinksAsAText(true);
```

## **Обновлен API Open Document для работы с форматом .opt**

### Открыть документ Words из InputStream

ПРИМЕЧАНИЕ. Предположим, что файлы в source.docx, source.xlsx, source.pdf, source.pptx, source.txt находятся в папке ресурсов.



```java
// Enter document path
String sourcePath = "./source.docx";

// Create stream of document
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonDocument.
ComparisonDocument document = new ComparisonDocument(sourceStream);
 
```

### Открыть документ Words из файла



```java
// Enter document path
String sourcePath = "./source.docx";

// Open ComparisonDocument.
ComparisonDocument document = new ComparisonDocument(sourcePath);
```

## **Открыть **книгу****

### Открыть книгу из InputStream



```java
// Enter workbook path
String sourcePath = "./source.xlsx";

// Create stream of workbook
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonWorkbook.
ComparisonWorkbook workbook = new ComparisonWorkbook(sourceStream); 
```

### Открыть книгу из файла



```java
// Enter workbook path
String sourcePath = "./source.xlsx";

// Open ComparisonWorkbook.
ComparisonWorkbook workbook = new ComparisonWorkbook(sourcePath);

```

## **Открыть **PDF-документ****

### Открыть документ PDF из InputStream



```java
// Enter document path
String sourcePath = "./source.pdf";

// Create stream of document
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonDocument.
ComparisonPdfDocument document = new ComparisonPdfDocument(sourceStream);


```

### Открыть документ PDF из файла



```java
// Enter document path
String sourcePath = "./source.pdf";

// Open ComparisonDocument.
ComparisonPdfDocument document = new ComparisonPdfDocument(sourcePath);

```

## **Открыть **Презентацию****

### Открыть презентацию из InputStream



```java
// Enter presentation path
String sourcePath = "./source.pptx";

// Create stream of presentation
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonPresentation.
ComparisonPresentation presentation = new ComparisonPresentation(sourceStream);

```

### Открыть презентацию из файла



```java
// Enter presentation path
String sourcePath = "./source.pptx";

// Open ComparisonPresentation.
ComparisonPresentation presentation = new ComparisonPresentation(sourcePath);


```

## **Открыть **Текстовый файл****

### Открыть текстовый файл из InputStream



```java
// Enter textFile path
String sourcePath = "./source.txt";

// Create stream of document
FileInputStream sourceStream = new FileInputStream(sourcePath);

// Open ComparisonTextFile.
ComparisonTextFile textFile = new ComparisonTextFile(sourceStream);


```

### Открыть текстовый файл из файла



```java
// Enter document path
String sourcePath = "./source.txt";

// Open ComparisonTextFile.
ComparisonTextFile textFile = new ComparisonTextFile(sourcePath);
 
```

## **Открыть **файл HTML****

### Открыть HTML-файл из InputStream



```java
// Enter document path
String sourcePath = "./source.html";
InputStream sourceStream = this.getClass().getClassLoader().getResourceAsStream(sourcePath);

// Open ComparisonTextFile.
IComprisonHtmlDocument htmlFile = new ComparisonHtmlDocument(sourceStream);

```

### Открыть HTML-файл из файла



```java
// Enter document path
String sourcePath = "./source.html";

// Open ComparisonTextFile.
IComparisonHtmlDocument htmlFile = new ComparisonHtmlDocument(sourcePath);

```

## Обновлен API презентаций для работы с форматом .opt.

### Сравнение двух презентаций из потоков с сохранением в файл и настройками

ПРИМЕЧАНИЕ. Предполагается, что файлы в source.docx, source.xlsx, source.pdf, source.pptx, source.txt находятся в папке ресурсов с примерами.



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

### Сравните две презентации из потоков с настройками



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

### Сравнение двух презентаций из потоков с сохранением в файл



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

### Сравните две презентации из потоков



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

### Сравнение двух презентаций из файлов с сохранением в файл и настройками



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";
String resultPath = "./result.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, resultPath, ComparisonType.Slides, new SlidesComparisonSettings());

```

### Сравните две презентации из файлов с настройками



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, ComparisonType.Slides, new SlidesComparisonSettings());

```

### **Сравнить две презентации из файлов с сохранением в файл**



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";
String resultPath = "./result.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, resultPath, ComparisonType.Slides);

```

### Сравните две презентации из файлов



```java
// Enter presentations paths
String sourcePath = "./source.pptx";
String targetPath = "./target.pptx";

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
Comparison comparison = new Comparison();
InputStream result = comparison.compare(sourcePath, targetPath, ComparisonType.Slides);
```

## Обновлен API сохранения презентации как изображения для работы с форматом .opt.

### **Сохранить презентацию как изображение**

Чтобы начать работу с сохранением изображений для компонента Slides, вам необходимо добавить библиотеку GroupDocs.Comparison и добавить следующие импорты в ваш код.

```java
import com.groupdocs.comparison.slides.*;
import com.groupdocs.comparison.slides.contracts.*;
import com.groupdocs.comparison.slides.contracts.comparison.*;
import com.groupdocs.comparison.slides.contracts.enums.*;
import com.groupdocs.comparison.common.images.*;

```

После этого вам нужно указать путь к документу, который вы хотите сохранить как изображение. Самый простой способ сделать это просто поместить документ в выходную папку вашего рабочего проекта.

### **Сохранить презентацию в изображение через папку изображений**

saveAsImages (String imagePath, настройки ComparsionSlidesImageSettings)

| Параметр | Описание |
| --- | --- |
| Строка путь к изображению | Путь к папке для сохранения изображений |
| Настройки ComparsionSlidesImageSettings | Настройки сохранения изображений |



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

### **Сохранить презентацию в изображение через поток**

saveAsImages(ArrayList<ByteArrayOutputStream> imageStream, настройки ComparsionSlidesImageSettings)

| Имя | Описание |
| --- | --- |
| ArrayList<ByteArrayOutputStream> поток изображений | Потоки изображений – где каждый поток из списка содержит одну страницу из документа |
| Настройки ComparsionSlidesImageSettings | Настройки сохранения изображений |



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

### **Сохранить слайд из презентации в изображение через папку с изображениями**

saveSlideAsImage (String imagePath, настройки ComparsionSlidesImageSettings, int slideIndex )

| Имя | Описание |
| --- | --- |
| Строка путь к изображению | Путь к папке для сохранения изображений |
| Настройки ComparsionSlidesImageSettings | Настройки сохранения изображений |
| интервал слайдиндекс | Индекс слайда |



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

### Сохранить слайд презентации в изображение через поток

saveSlideAsImage (ArrayList<ByteArrayOutputStream> imageStream, настройки ComparsionSlidesImageSettings, int slideIndex )

| Имя | Описание |
| --- | --- |
| ArrayList<ByteArrayOutputStream> поток изображений | Потоки изображений – где каждый поток из списка содержит одну страницу из документа |
| Настройки ComparsionSlidesImageSettings | Настройки сохранения изображений |
| интервал слайдиндекс | Индекс слайда |



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

## Лицензирование по счетчику

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

## Расширенный общедоступный API для поддержки форматов изображений

### **Сравнить с потоком**

Сравните два документа Imaging(DjVu) из потоков с сохранением результатов в файл



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

  


### Сравнить из файла

Сравните два документа Imaging (DjVu) из пути к файлу с сохранением результатов в файл



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

### Сравнить из файла с настройками документа

Сравните два документа Imaging(DjVu) из файла с сохранением результатов в файл с настройками документа



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

