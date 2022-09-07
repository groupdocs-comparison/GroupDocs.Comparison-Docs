---
id: groupdocs-comparison-for-net-18-8-release-notes
url: comparison/net/groupdocs-comparison-for-net-18-8-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 18.8"
weight: 4
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску для GroupDocs.Comparison для .NET 18.8{{< /alert >}}

## Основные характеристики

Ниже приведен список наиболее заметных изменений в выпуске GroupDocs.Comparison для .NET 18.8:

* Реализованы новые настройки выделения текста для ряда форматов сравнения (Html, Slides, Notes, Pdf, Words)
* Улучшить отображение PDF
* Улучшена поддержка сравнения разных форматов с изображением
* Исправлено количество проблем при сравнении отдельных PDF-документов

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-1637 | Реализовать новую настройку для выделения текста Comparison.Html | Новая функция |
| СРАВНЕНИЕ-1636 | Реализовать новую настройку для выделения текста Comparison.Slides | Новая функция |
| СРАВНЕНИЕ-1635 | Реализовать новую настройку для выделения текста Comparison.Notes | Новая функция |
| СРАВНЕНИЕ-1634 | Реализовать новую настройку для выделения текста Comparison.Pdf | Новая функция |
| СРАВНЕНИЕ-1633 | Реализовать новую настройку для выделения текста Comparison.Words | Новая функция |
| СРАВНЕНИЕ-1644 | Улучшение картографа PDF | Улучшение |
| СРАВНЕНИЕ-1640 | Улучшена поддержка сравнения различных форматов с изображением | Улучшение |
| СРАВНЕНИЕ-1620 | Вывод PDF с графиками отличается от ожидаемого | Ошибка |
| СРАВНЕНИЕ-1619 | Вывод PDF с изображениями не соответствует ожиданиям | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 18.8. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

1. Настройка стилей вставленных, удаленных и измененных элементов, используемых для установки цвета шрифта, цвета выделения, стилей (жирный, курсив, подчеркнутый, зачеркнутый) и тегов для отмеченных изменений в результирующем документе:
    



```csharp
settings.InsertedItemsStyle.FontColor = System.Drawing.Color.Brown;
settings.InsertedItemsStyle.HighlightColor = System.Drawing.Color.Red;
settings.InsertedItemsStyle.BeginSeparatorString = "<inserted> ";
settings.InsertedItemsStyle.EndSeparatorString = "</inserted> ";
```
    



```csharp
settings.DeletedItemsStyle.FontColor = System.Drawing.Color.Aquamarine;
settings.DeletedItemsStyle.HighlightColor = System.Drawing.Color.Blue;
settings.DeletedItemsStyle.BeginSeparatorString = "<deleted> ";
settings.DeletedItemsStyle.EndSeparatorString = "</deleted> ";
```
    



```csharp
settings.StyleChangedItemsStyle.FontColor = System.Drawing.Color.Aqua;
settings.StyleChangedItemsStyle.HighlightColor = System.Drawing.Color.Green;
settings.StyleChangedItemsStyle.BeginSeparatorString = " <style>";
settings.StyleChangedItemsStyle.EndSeparatorString = "</style> ";
```

