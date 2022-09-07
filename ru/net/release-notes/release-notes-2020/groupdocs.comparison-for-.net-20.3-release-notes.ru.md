---
id: groupdocs-comparison-for-net-20-3-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-3-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 20.3"
weight: 18
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 20.3{{< /alert >}}

## Основные характеристики

Ниже список изменений в выпуске GroupDocs.Comparison для .NET 20.3:

* Улучшена производительность множественного сравнения текстовых документов
* Исправлено создание выходного файла HTML при сравнении файлов исходного кода
* Исправлено исключение при сравнении документов Diagrams
* Исправлена ошибка System.StackOverflownException при сравнении PDF с изображениями .NET.

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-2214 | Повышение производительности для TXT MultiComparer | Улучшение |
| СРАВНЕНИЕ-2235 | TextComparerResult не создает файл .html для файлов языков программирования | Ошибка |
| СРАВНЕНИЕ-2211 | System.StackOverflownException при сравнении PDF с изображениями .NET | Ошибка |
| СРАВНЕНИЕ-2209 | Сравнение двух файлов vsdx вызывает исключение | Ошибка |
| СРАВНЕНИЕ-2208 | Диаграмма проблема разрыва текстовой строки | Ошибка |

## Публичный API и обратно несовместимые изменения

**Получение целевого текста из документов Word**

Начиная с версии 20.3 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет получить целевой текст конкретных изменений в документе Result, что работает для документов **Word**.

Чтобы использовать эту функцию, вы должны указать в свойстве *GetChanges TargetText*

```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetDocumentPath);
     comparer.Compare(outputPath);
     ChangeInfo[] changes = comparer.GetChanges();
     foreach (var change in changes)
     {
         var targetText = change.TargetText;
         Console.WriteLine(targetText);
     }
}
```

