---
id: groupdocs-comparison-for-net-20-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-20-1-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 20.1"
weight: 20
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 20.1{{< /alert >}}{{< alert style="danger" >}}В этой версии мы удалить Legacy API GroupDocs.Comparison. Итак, начиная с версии 20.1 GroupDocs.Comparison.Legacy. больше не существует{{< /alert >}}

## Основные характеристики

Ниже приведен список наиболее заметных изменений в выпуске GroupDocs.Comparison для .NET 20.1:

* Удален устаревший API
* Реализовано сравнение более чем 2 PDF-документов
* Реализовано сравнение более 2-х документов Diagrams
* Улучшено сравнение таблиц в PDF
* Исправлена ошибка при сравнении двух одинаковых документов Word

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-2104 | Реализовать мультикомпаратор для диаграммы | Особенность |
| СРАВНЕНИЕ-2105 | Внедрение мультикомпаратора для PDF | Особенность |
| СРАВНЕНИЕ-2133 | Улучшение сравнения таблиц в PDF | Улучшение |
| СРАВНЕНИЕ-2148 | Произошла ошибка при сравнении двух идентичных документов Word | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 20.1. Он включает не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

* **Множественное сравнение документов диаграмм**
У вас есть возможность сравнить несколько документов целевой диаграммы (vsdx).
    




```csharp
строка sourcePath = "source.vsdx";
строка target1Path = "target1.vsdx";
строка target2Path = "target2.vsdx";
строка target3Path = "target3.vsdx";
строка resultPath = "result.vsdx";
     








Компаратор компаратор = новый компаратор (исходный путь);
компаратор.Добавить(target1Path);
компаратор.Добавить(target2Path);
компаратор.Добавить(target3Path);
     








Comparer.Compare(File.Create(resultPath), новые SaveOptions(), новые CompareOptions());
```
    




* **Множественное сравнение для документов PDF**
    




У вас есть возможность сравнивать более одного целевого PDF-документа
    




```csharp
строка sourcePath = "source.pdf";
строка target1Path = "target1.pdf";
строка target2Path = "target2.pdf";
строка target3Path = "target3.pdf";
строка resultPath = "result.pdf";
     








Компаратор компаратор = новый компаратор (исходный путь);
компаратор.Добавить(target1Path);
компаратор.Добавить(target2Path);
компаратор.Добавить(target3Path);
     








Comparer.Compare(File.Create(resultPath), новые SaveOptions(), новые CompareOptions());
```

