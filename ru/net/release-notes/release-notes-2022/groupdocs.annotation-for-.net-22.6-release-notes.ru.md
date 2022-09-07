---
id: groupdocs-comparison-for-net-22-6-release-notes
url: comparison/net/groupdocs-comparison-for-net-22-6-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 22.6"
weight: 17
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 22.6{{< /alert >}}

## Основные характеристики

Ниже приведен список наиболее заметных изменений в выпуске GroupDocs.Comparison для .NET 22.6:

* Исправлена проблема, когда после преобразования из SVG в изображение оставался ненужный файл PNG
* Измененный альтернативный заголовок не считается изменением стиля в слайдах.
* Добавлена поддержка .NET Framework 4.0, .NET Standard 2.1 и .NET 6.0.


## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-3056 | После конвертации из SVG в изображение остался ненужный файл PNG | Ошибка |
| СРАВНЕНИЕ-3053 | Измененный альтернативный заголовок не считается изменением стиля в слайдах | Ошибка |


## Публичный API и обратно несовместимые изменения
Начиная с этой версии для GroupDocs.Comparison добавлена поддержка .NET Framework 4.0, .NET Standard 2.1 и .NET 6.0. Вместо этого поддержка .NET Framework 2.0 была прекращена.

Current release has a known issue: Comparing of PDF does not work when use libary in .NET 6.0 project. This will be hotfixed ASAP
