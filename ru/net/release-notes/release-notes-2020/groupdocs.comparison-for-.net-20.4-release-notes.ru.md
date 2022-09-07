---
id: groupdocs-comparison-for-net-20-4-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-4-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 20.4"
weight: 16
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 20.4{{< /alert >}}

## Основные характеристики

Ниже список изменений в выпуске GroupDocs.Comparison для .NET 20.4:

* Добавлена новая функция для отображения только вставленного контента
* Улучшена функция отображения целевого текста для презентаций, электронных таблиц и диаграмм.
* Улучшено использование исключений
* Исправлены проблемы с совместимостью библиотек для электронных таблиц и заметок.
* Исправлено количество исключений при сравнении диаграмм

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-2234 | Реализовать функцию ShowInsertedContent | Особенность |
| СРАВНЕНИЕ-2269 | Улучшить функцию GetTargetText для диаграмм | Улучшение |
| СРАВНЕНИЕ-2242 | Улучшить функцию GetTargetText для слайдов | Улучшение |
| СРАВНЕНИЕ-2241 | Улучшить функцию GetTargetText для ячеек | Улучшение |
| СРАВНЕНИЕ-2271 | Улучшение использования исключений | Улучшение |
| СРАВНЕНИЕ-2272 | Исключение неподдерживаемого формата диаграммы в тестах обновления | Ошибка |
| СРАВНЕНИЕ-2270 | Исключение нулевой ссылки в диаграммах | Ошибка |
| СРАВНЕНИЕ-2267 | Проблема совместимости с библиотекой Cells при обновлении до версии 20.3 | Ошибка |
| СРАВНЕНИЕ-2239 | Проблема совместимости при обновлении библиотеки Note | Ошибка |

## Публичный API и обратно несовместимые изменения

## **Показать вставленный контент**

Начиная с версии 20.4 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет возможность отключить отображение добавленного контента в файле результатов.
  

Чтобы использовать эту функцию, вы должны указать в свойстве *CompareOptions ShowInsertedContent * значение false.


```csharp
CompareOptions options = new CompareOptions();
options.ShowInsertedContent = false;

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetDocumentPath);
     comparer.Compare(File.Create(outputPath), new SaveOptions(), options);
}
```

