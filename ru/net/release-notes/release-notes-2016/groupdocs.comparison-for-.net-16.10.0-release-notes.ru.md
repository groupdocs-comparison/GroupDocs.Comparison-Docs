---
id: groupdocs-comparison-for-net-16-10-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-16-10-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 16.10.0"
weight: 3
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 16.10.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть 10 улучшений и исправлений. Наиболее заметными являются:

* Добавлена поддержка новых компонентов в Comparison.Slides: комментарии, диаграммы
* Добавлена поддержка водяных знаков в Comparison.PDF.
* Добавлена поддержка новых компонентов в Comparison.PDF: медиаобъекты, позиционирование изображений
* Улучшен ComparisonParagraphAbsorber для кейсов с таблицами

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-970 | GroupDocs.Comparison.PDF: добавлена поддержка новых компонентов: медиаобъектов, позиционирования изображений | Новая функция |
| СРАВНЕНИЕ-961 | GroupDocs.Comparison.PDF: добавлена поддержка сравнения водяных знаков | Новая функция |
| СРАВНЕНИЕ-962 | GroupDocs.Comparison.Slides: Добавлена поддержка сравнения графиков | Новая функция |
| СРАВНЕНИЕ-965 | GroupDocs.Comparison.Slides: добавлена поддержка сравнения комментариев | Новая функция |
| СРАВНЕНИЕ-949 | GroupDocs.Comparison.PDF: улучшенные таблицы сравнения | Улучшение |
| СРАВНЕНИЕ-903 | GroupDocs.Comparison.PDF: улучшить ComparisonParagraphAbsorber для кейсов с таблицами | Улучшение |
| СРАВНЕНИЕ-982 | GroupDocs.Comparison.PDF: улучшенный конструктор документов и сопоставление страниц | Улучшение |
| СРАВНЕНИЕ-904 | GroupDocs.Comparison.PDF:Проверка и улучшение ComparisonParagraphAbsorber для случаев с простым текстом | Улучшение |
| СРАВНЕНИЕ-968 | GroupDocs.Comparison.Words: Идентичный текст из соседних абзацев определяется как удаленный и вставленный | Ошибка |
| СРАВНЕНИЕ-964 | GroupDocs.Comparison.Slides: Файлы не открываются после сравнения | Ошибка |

  


## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 16.10.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

#### Сравните слова документов

Сравните исходный документ с двумя целевыми документами методом MultiCompareWith.



```csharp
// Enter documents paths
string sourcePath = @"Groupdocs.Comparison.Samples.data.Words.source.docx";
string target1Path = @"Groupdocs.Comparison.Samples.data.Words.target1.docx";
string target2Path = @"Groupdocs.Comparison.Samples.data.Words.target2.docx";

// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new List<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);

// Add target documents in list
ListOfTargetDocuments.Add(target1);
ListOfTargetDocuments.Add(target2);

// Call method MultiCompareWith.
IWordsCompareResult result = source.MultiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

#### Сравните исходный документ с тремя целевыми документами методом MultiCompareWith.



```csharp
 // Enter documents paths
string sourcePath = @"Groupdocs.Comparison.Samples.data.Words.source.docx";
string target1Path = @"Groupdocs.Comparison.Samples.data.Words.target1.docx";
string target2Path = @"Groupdocs.Comparison.Samples.data.Words.target2.docx";
string target3Path = @"Groupdocs.Comparison.Samples.data.Words.target3.docx";

// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new List<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);
ComparisonDocument target3 = new ComparisonDocument(target3Path);

// Add target documents in list
ListOfTargetDocuments.Add(target1);
ListOfTargetDocuments.Add(target2);
ListOfTargetDocuments.Add(target3);

// Call method MultiCompareWith.
IWordsCompareResult result = source.MultiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

