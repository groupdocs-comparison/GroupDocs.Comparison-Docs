---
id: groupdocs-comparsion-for-net-17-2-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-2-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparsion для .NET 17.2.0"
weight: 10
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 17.2.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть 8 новых функций, 2 улучшения и 5 исправлений. Наиболее заметными являются:

* Добавлена поддержка Imaging DjVu
* Введена поддержка текстового шрифта в водяных знаках в Comparison.PDF.
* Введена поддержка изображений, диаграмм, Smart Art, элементов управления VBA, формул в Comparison.Cells.
* Улучшена эффективность сравнения GroupDocs.Comparison.PDF

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-1123 | Интеграция лимитного лицензирования | Новая функция |
| СРАВНЕНИЕ-1122 | GroupDocs.Comparison.PDF: добавлена поддержка сравнения шрифтов текста в водяных знаках | Новая функция |
| СРАВНЕНИЕ-1068 | GroupDocs.Comparison.Cells: Добавлена поддержка формул | Новая функция |
| СРАВНЕНИЕ-1065 | GroupDocs.Comparison.Cells: Добавлена поддержка изображений | Новая функция |
| СРАВНЕНИЕ-1070 | GroupDocs.Comparison.Cells: Добавлена поддержка Chart | Новая функция |
| СРАВНЕНИЕ-1066 | GroupDocs.Comparison.Cells: Добавлена поддержка Smart Art | Новая функция |
| СРАВНЕНИЕ-1067 | GroupDocs.Comparison.Cells: добавлена поддержка элементов управления VBA | Новая функция |
| СРАВНЕНИЕ-1108 | Добавить поддержку формата mobi | Новая функция |
| СРАВНЕНИЕ-1112 | Добавить поддержку Imaging DjVu | Улучшение |
| СРАВНЕНИЕ-1080 | GroupDocs.Comparison.PDF: улучшено обнаружение изменений при сравнении для абзацев | Улучшение |
| СРАВНЕНИЕ-1129 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда некоторые строки удалялись или вставлялись туда, где их быть не должно | Ошибка |
| СРАВНЕНИЕ-1130 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда первая строка абзаца не имела отступа, но должна была | Ошибка |
| СРАВНЕНИЕ-1131 | GroupDocs.Comparison.PDF: Исправить ошибку, когда компонент меняет свою страницу, но не меняет свою позицию, но должен быть | Ошибка |
| СРАВНЕНИЕ-1128 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда первая строка абзаца использовалась как не строка абзаца | Ошибка |
| СРАВНЕНИЕ-1132 | GroupDocs.Comparison.PDF: Исправить ошибку, когда текст из таблиц используется дважды с простыми абзацами | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 17.2.0. Он включает не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

### Лицензирование по счетчику



```csharp
// Create new instance of GroupDocs.Comparison.Metered classs
GroupDocs.Comparison.Metered metered = new GroupDocs.Comparison.Metered();
 
// Set public and private key to metered instance
metered.SetMeteredKey("***", "***");
 
// Get metered value before usage of the comparison
decimal amountBefore = GroupDocs.Comparison.Metered.GetConsumptionQuantity();
 
Console.WriteLine("Amount consumed  before: " + amountBefore);
 
// compare files
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";
 
GroupDocs.Comparison comparison = new GroupDocs.Comparison();
Stream result = comparison.Compare(sourcePath, targetPath);
 
// Get metered value after usage of the comparison
decimal amountAfter = GroupDocs.Comparison.GetConsumptionQuantity();

Console.WriteLine("Amount consumed  after: " + amountAfter);
```

