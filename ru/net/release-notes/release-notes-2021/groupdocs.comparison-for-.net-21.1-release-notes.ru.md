---
id: groupdocs-comparison-for-net-21-1-release-notes
url: comparison/net/groupdocs-comparison-for-net-21-1-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 21.1"
weight: 20
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 21.1{{< /alert >}}

## Основные характеристики

Ниже приведен список наиболее заметных изменений в выпуске GroupDocs.Comparison для .NET 21.1:

* Улучшено отображение элементов с рамкой в формате Pdf
* Улучшено отображение текста в формате Pdf
* Добавлено сравнение типов сносок в формате Word
* Добавлено свойство SourceText в класс ChangeInfo и улучшено свойство TargetText для форматов Cells, Words и Pdf.

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Тип выпуска |
| --- | --- | --- |
| СРАВНЕНИЕ-2585 | Улучшена возможность получения исходного текста для документов Word | Особенность |
| СРАВНЕНИЕ-2586 | Улучшить возможность получения исходного текста для документов PDF | Особенность |
| СРАВНЕНИЕ-2587 | Улучшена возможность получения исходного текста для документов Cells | Особенность |
| СРАВНЕНИЕ-2563 | Сноски не сравниваются | Улучшение |
| СРАВНЕНИЕ-2451 | Проблема сравнения текстовых полей в PDF | Ошибка |
| СРАВНЕНИЕ-2454 | Часть символов не отображается при сравнении файлов PDF | Ошибка |


## Публичный API и обратно несовместимые изменения

1. Сравнение типов сносок относится к сравнению стилей, кроме того, этот тип изменения сложно отобразить в тексте. Поэтому эти изменения отмечаются по принципу пустых строк или рисунков в документе (с помощью комментариев).
Для наглядности сравнения типов сносок вы можете использовать следующий фрагмент кода:

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions()
	{
		DetectStyleChanges = true,
		DetalisationLevel = DetalisationLevel.High
	};
    comparer.Compare(resultPath, options);
}
```

2. Обновлена документация по получению исходного и целевого текстов, которую можно найти [здесь](https://docs.groupdocs.com/comparison/net/get-source-and-target-text-from-files/).

