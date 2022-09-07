---
id: groupdocs-comparsion-for-net-17-3-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-3-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparsion для .NET 17.3.0"
weight: 9
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 17.3.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть 3 новых функции, 4 улучшения и 1 исправление. Наиболее заметными являются:

* Добавлена возможность сравнения документов DICOM с помощью Comparison.Imaging.
* Упрощенный и улучшенный общедоступный API для всех поддерживаемых форматов.
* Введен процесс поглощения таблиц с объединенными ячейками для GroupDocs.Comparison.PDF
* Исправлено сравнение заполненных таблиц для GroupDocs.Comparison.PDF

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-1156 | Добавить возможность сравнения документов DICOM с помощью Comparison.Imaging | Новая функция |
| СРАВНЕНИЕ-1163 | Применить/Отменить изменения для формата DICOM | Новая функция |
| ОПАРИСОННЕТ-1165 | Добавить сводную страницу в потоки изображений | Новая функция |
| СРАВНЕНИЕ-778 | Реализовать процесс поглощения таблиц с объединенными ячейками | Улучшение |
| СРАВНЕНИЕ-1148 | Улучшенный общедоступный API | Улучшение |
| СРАВНЕНИЕ-1161 | Добавить возможность сравнения результатов и исходных файлов в Imaging.Tests | Улучшение |
| СРАВНЕНИЕ-1157 | Добавить исключения локализации для неправильных паролей при открытии документов в Cells, Words, Slides и PDF | Улучшение |
| СРАВНЕНИЕ-1160 | Сравнение PDF - PDF-файлы с таблицами и строками нижнего колонтитула, создающие неожиданный вывод | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 17.3.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

### Лицензирование по умолчанию

1\. Создайте объект лицензии и используйте метод SetLicense(), который принимает путь к лицензии или потоку лицензии в качестве аргумента.

```csharp
License license = new License();
license.SetLicense("path to license");

//or
License license = new License();
license.SetLicense("license stream");
```

### Ограниченное лицензирование

2\. Создайте измеряемый объект и используйте метод SetMeteredKey()

```csharp
// Set metered key
Metered metered = new Metered();
metered.SetMeteredKey("****", "****");
```

Для проверки текущего количества потребления используйте метод GetConsummentQuantity().

```csharp
// Get consumption quantity from metered
decimal amountBefor = Metered.GetConsumptionQuantity();
// Call comparison
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";
Comparer comparer = new Comparer();
comparer.Compare(sourcePath, targetPath, new ComparisonSettings());
comparer.Compare(sourcePath, targetPath, new ComparisonSettings());
// Get consumption quantity from metered after several calls of comparison
decimal amountAfter = Metered.GetConsumptionQuantity();
```

### Сравните два документа из файлов:

```csharp
string source = "source.docx";
string target = "target.docx";
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, target, new ComparisonSettings());
```

### Сравните два документа из потоков:

```csharp
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
Stream target = Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx");

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, target, new ComparisonSettings());
Compare two documents with passwords from files:
string source = "source.docx";
string target = "target.docx";
string sourcePassword = "password";
string targetPassword = "password";
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, target, targetPassword, new ComparisonSettings());
Compare two documents with passwords from streams:
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
Stream target = Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx");

string sourcePassword = "password";
string targetPassword = "password";

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, target, targetPassword, new ComparisonSettings());
```

