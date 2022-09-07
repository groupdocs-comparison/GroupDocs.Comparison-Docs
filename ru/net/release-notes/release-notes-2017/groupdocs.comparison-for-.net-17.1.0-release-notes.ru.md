---
id: groupdocs-comparison-for-net-17-1-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-17-1-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 17.1.0"
weight: 11
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 17.1.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть 7 новых функций и 7 улучшений и исправлений. Наиболее заметными являются:

* Введена поддержка поддержки изменений Apply/Discard в Comparison.Cells.
* Введена поддержка поддержки изменений Apply/Discard в Comparison.PDF.
* Введена поддержка водяных знаков, гиперссылок, комментариев, текстовых полей, фигур в Comparison.Cells
* Улучшена эффективность сравнения GroupDocs.Comparison.PDF

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-1053 | GroupDocs.Comparison.PDF: Добавлена поддержка изменений «Применить/Отменить» | Новая функция |
| СРАВНЕНИЕ-975 | GroupDocs.Comparison.PDF: Добавлена поддержка водяных знаков | Новая функция |
| СРАВНЕНИЕ-1065 | GroupDocs.Comparison.Cells: добавлена поддержка гиперссылок | Новая функция |
| СРАВНЕНИЕ-1069 | GroupDocs.Comparison.Cells: добавлена поддержка комментариев | Новая функция |
| СРАВНЕНИЕ-1072 | GroupDocs.Comparison.Cells: добавлена поддержка текстового поля | Новая функция |
| СРАВНЕНИЕ-1063 | GroupDocs.Comparison.Cells: Добавлена поддержка изменений Apply/Discard | Новая функция |
| СРАВНЕНИЕ-1073 | GroupDocs.Comparison.Cells: добавлена поддержка фигур | Новая функция |
| СРАВНЕНИЕ-1075 | GroupDocs.Comparison.Cells: Добавить границы для удаленных и вставленных ячеек и Диапазон ячеек | Улучшение |
| СРАВНЕНИЕ-679 | Исправлена проблема с перемещением измененной таблицы на новую страницу без удаления предыдущей версии добавленной таблицы | Улучшение |
| СРАВНЕНИЕ-1055 | Улучшение Обрезать абзацы по страницам после некоторых изменений в поглощающих абзацах | Улучшение |
| СРАВНЕНИЕ-1080 | GroupDocs.Comparison.PDF: улучшено обнаружение изменений при сравнении для абзацев | Улучшение |
| СРАВНЕНИЕ-1056 | Улучшение качества сравнения GroupDocs.Comparison.PDF изображений в шапке, футере, установка координат компонентов и абзацев по страницам | Улучшение |
| СРАВНЕНИЕ-1074 | GroupDocs.Comparison: PDF: Установить изменение типа абзаца после разрыва страницы | Ошибка |
| СРАВНЕНИЕ-1077 | Comparison.Cells: Исправлен внешний вид ячеек после критического обновления для компаратора Aligner и построителя документов | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 17.1.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

#### Сравните форматы файлов электронных таблиц с настройками

Обновлен способ использования настроек сравнения для форматов файлов электронных таблиц.



```csharp
// Enter presentations paths
string sourcePath = "./source.otp";
string targetPath = "./target.otp";

// Create two streams of presentations

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
CellsComparisonSettings settings = new CellsComparisonSettings();
settings.ShowDeletedContent = false;
settings.GenerateSummaryPage = true;

Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### Сравните форматы файлов Word с настройками

Обновлен способ использования настроек сравнения для форматов файлов Word.



```csharp
// Enter Words document paths
string sourcePath = "./source.odt";
string targetPath = "./target.odt";

// Create two streams of Words docuemnt

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
WordsComparisonSettings settings = new WordsComparisonSettings();
Settings.ProcessHyperLinksAsAText = true;

Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### Пример сравнения форматов файлов Open Documents



```csharp
// Enter presentations paths
string sourcePath = "./source.otp";
string targetPath = "./target.otp";

// Create two streams of presentations

Stream sourceStream = File.Open(sourcePath, FileMode.Open, FileAccess.Read);
Stream targetStream = File.Open(targetPath, FileMode.Open, FileAccess.Read)

// Create instance of *GroupDocs.Comparison.Comparison* and call method *Compare*.
GroupDocs.Comparison.Comparison comparison = new GroupDocs.Comparison.Comparison();
Stream result = comparison.Compare(sourceStream, targetStream, settings);


```

#### COMPARISONNET-1080 Сравните два абзаца с помощью метода CompareWith.



```csharp
// Creating Paragraphs
ComparisonParagraphBase sourceParagraph = new ComparisonParagraph();
sourceParagraph.Text = "This is source Paragraph.";
 
ComparisonParagraphBase targetParagraph = new ComparisonParagraph();
targetParagraph.Text = "This is target Paragraph.";
 
// Creating settings for comparison of Paragraphs
SlidesComparisonSettings settings = new SlidesComparisonSettings();
// Comparing Paragraphs
ISlidesCompareResult compareResult = sourceParagraph.CompareWith(targetParagraph, settings);


```

#### Сохранить презентацию в изображение через папку изображения



```csharp
/using GroupDocs.Comparison.Slides;
using GroupDocs.Comparison.Slides.Contracts;
using GroupDocs.Comparison.Slides.Contracts.Comparison;
using GroupDocs.Comparison.Slides.Contracts.Enums;
using GroupDocs.Comparison.Common.Images;

//path to file
string filePath = "./presentation.pptx";
  
//path to image folder
string imageFolderPath = "./FolderForImage/";
  
//Open  document
ComparisonPresentationBase presentation = new ComparisonPresentationBase(filePath);
  
//Set settings
var settings = new ComparsionSlidesImageSettings();
  
//Save as Image
presentation.SaveAsImages(imageFolderPath, settings);



```

