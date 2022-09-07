---
id: groupdocs-comparison-for-net-3-5-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-5-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 3.5.0"
weight: 4
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 3.5.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть 9 улучшений и исправлений. Наиболее заметными являются:

* Добавлена поддержка множественного сравнения для Comparison.Words.
* Введена поддержка применения/отмены для множественного сравнения для Comparison.Words.
* Представлены поглотители текста верхнего и нижнего колонтитула для Comparison.PDF.
* Улучшен поглотитель абзацев для Comparison.PDF

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-877 | GroupDocs.Comparison.Words: добавлена возможность составления нескольких списков результатов из списков результатов каждого документа | Новая функция |
| СРАВНЕНИЕ-876 | GroupDocs.Comparison.Words: поддержка сравнения нескольких документов с отслеживанием изменений | Новая функция |
| СРАВНЕНИЕ-909 | GroupDocs.Comparison.PDF: Добавлена поддержка поглощения нижнего колонтитула страницы | Новая функция |
| СРАВНЕНИЕ-910 | GroupDocs.Comparison.PDF: Добавлена поддержка поглощения Верхнего колонтитула | Новая функция |
| СРАВНЕНИЕ-880 | GroupDocs.Comparison.Words: добавлена поддержка применения/отмены изменений для нескольких списков изменений результатов | Новая функция |
| СРАВНЕНИЕ-880 | GroupDocs.Comparison.Words: Повышение производительности обработки документов | Улучшение |
| СРАВНЕНИЕ-886 | GroupDocs.Comparison.PDF: разделяйте текст на абзацы, проверяя, содержатся ли фрагменты текста в разных родительских объектах | Улучшение |
| СРАВНЕНИЕ-904 | GroupDocs.Comparison.PDF: улучшенный поглотитель абзацев сравнения для случаев с обычным текстом | Улучшение |
| СРАВНЕНИЕ-873 | GroupDocs.Comparison.PDF: улучшена поддержка сравнения текста для всех форматов Adobe Acrobat | Улучшение |

  


## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 3.5.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

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

