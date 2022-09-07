---
id: groupdocs-comparison-for-net-20-12-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-12-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 20.12"
weight: 6
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 20.12{{< /alert >}}

## Основные характеристики

Ниже список изменений в выпуске GroupDocs.Comparison для .NET 20.12:
* Улучшена обработка редакций в документах Word.
* Исправлена проблема с дублированием текста в Words
* Исправлена проблема с некорректным отображением таблиц без отображения добавленных или удаленных ячеек
* Исправлена ошибка, из-за которой GroupDocs.Comparison работал правильно в решении GroupDocs.Total.


		

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-2557 | Улучшение обработки изменений в документах Word | Улучшение |
| СРАВНЕНИЕ-2537 | Сравнение файлов DOCX Текст дублируется после сравнения, а не распознается как замененный в выводе | Ошибка |
| СРАВНЕНИЕ-2533 | Проблема сравнения в документах Word с таблицами (Некорректное создание документа с отключенным отображением изменений в таблицах в формате Word) | Ошибка |
| СРАВНЕНИЕ-2536 | Исправить проблему сравнения в комплексном решении GroupDocs | Ошибка |

## Публичный API и обратно несовместимые изменения

1. Проблема с повторным отображением измененного содержимого в документе возникала, когда в сравниваемых документах уже были другие *Ревизии*.

**Редакция** - изменения, полученные при сравнении документов встроенными средствами Word.

Для решения этой проблемы было создано новое свойство *ShowRevisions*, позволяющее отключить отображение этих *Revisions* в результирующем документе. Пример кода для использования нового свойства представлен ниже.

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {ShowRevisions = false};
    comparer.Compare(resultPath, options);
}
```
Подробнее о новом свойстве можно узнать [здесь](https://docs.groupdocs.com/comparison/net/show-revisions/).

2. [Улучшенная функциональность Accept\Reject Revisions для документов Word] (https://docs.groupdocs.com/comparison/net/accept-or-reject-revisions/)


