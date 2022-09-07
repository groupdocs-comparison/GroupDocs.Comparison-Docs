---
id: groupdocs-comparison-for-net-3-1-0-release-notes
url: comparison/net/groupdocs-comparison-for-net-3-1-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 3.1.0"
weight: 8
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 3.1.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске содержится 13 улучшений и исправлений. Наиболее заметными являются:

* Введена поддержка зашифрованных файлов
* Введено автоматическое определение типов файлов
* Введена улучшенная производительность сравнения слов до 8 раз
* Введено улучшенное качество сравнения Word для текста и таблиц.
* Представлено улучшенное качество сравнения PDF для текста, таблиц и изображений.

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-700 | Расширьте функциональность сравнения PDF, чтобы получить изменения или подтвердить идентичность документов | Новая функция |
| СРАВНЕНИЕ-663 | Добавить поддержку защищенных паролем файлов для Word, Cells, Slides и PDF | Новая функция |
| СРАВНЕНИЕ-605 | Добавить поддержку определения типа файла из потока | Новая функция |
| СРАВНЕНИЕ-638 | Если содержимое слайда уникально, то слайд должен быть помечен как Вставлено или Удалено | Улучшение |
| СРАВНЕНИЕ-722 | Сравнение обновлений отличается в зависимости от улучшения производительности для Word. | Улучшение |
| СРАВНЕНИЕ-684 | Измените разницу в CommonAligner, чтобы улучшить производительность сравнения | Улучшение |
| СРАВНЕНИЕ-664 | Реализовать сравнение Words с выравниванием по идентичным и формированием документа-результата с использованием target-doc и вставкой удаленных компонентов из source-doc | Улучшение |
| СРАВНЕНИЕ-588 | Реализовать локализацию для обработки исключений | Улучшение |
| СРАВНЕНИЕ-683 | Изменить настройки сравнения для поддержки информации о культуре | Улучшение |
| СРАВНЕНИЕ-682 | Добавить сброс позиций потоков в конструкторах документов | Улучшение |
| СРАВНЕНИЕ-681 | Добавить средство проверки результирующего документа после объединения результатов сравнения | Улучшение |
| СРАВНЕНИЕ-719 | Сравнение результатов создания пустой страницы и дополнительных пробелов для DOCX/PDF | Ошибка |
| СРАВНЕНИЕ-697 | Ответ клиента — сравнение вложенных документов занимает от 8 до 13 минут в зависимости от аппаратного обеспечения, а затем заканчивается 0-байтным результатом. | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 3.1.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

### Общие операции с автоматическим определением формата файла
#### Сравнение документов из строк

ПРИМЕЧАНИЕ. Предполагается, что файлы в source.docx, source.xlsx, source.pdf, source.pptx, source.txt находятся в той же папке, что и исполняемая сборка.

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath);
```

#### Сравните документы из строк с путем к результату

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath);
```

#### Сравните документы из строк с путем к результату и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, FileType.Docx);
```

#### Сравните документы из строк с путем к результату и настройками

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, new WordsComparisonSettings());
```

#### Сравните документы из строк с путем к результату и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, new WordsComparisonSettings(), FileType.Docx);
```

#### Сравните документы из строк с путем и типом результата

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words);
```

#### Сравните документы из строк с типом пути результата и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, FileType.Docx);
```

#### Сравнить документы из строк с настройками

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, new WordsComparisonSettings());
```

#### Сравните документы из строк с настройками и типом

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### Сравнить документы из строк с типом

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, ComparisonType.Words);
```

#### Сравните документы из строк с настройками пути к результату и типом

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### Сравните документы из строк с типом настроек пути к результату и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, targetPath, resultPath, ComparisonType.Words, new WordsComparisonSettings(), FileType.Docx);
```

### Общие операции с зашифрованными файлами
#### Сравнивать зашифрованные документы со строками

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword);
```

#### Сравните зашифрованные документы из строк с путем к результату

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath);
```

#### Сравните зашифрованные документы из строк с путем к результату и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, FileType.Docx);
```

#### Сравните зашифрованные документы из строк с путем к результату и настройками

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, new WordsComparisonSettings());
```

#### Сравните зашифрованные документы из строк с настройками пути к результату и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, new WordsComparisonSettings(), FileType.Docx);
```

#### Сравните зашифрованные документы из строк с путем и типом результата

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words);
```

#### Сравните зашифрованные документы из строк с типом пути результата и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, FileType.Docx);
```

#### Сравните зашифрованные документы из строк с настройками

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, new WordsComparisonSettings());
```

#### Сравнить зашифрованные документы из строк с настройками и типом

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, ComparisonType.Words, new WordsComparisonSettings());
```

#### Сравните зашифрованные документы из строк с типом

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, ComparisonType.Words);
```

#### Сравните зашифрованные документы из строк с настройками пути к результату и типом

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, new WordsComparisonSettings());
```

#### Сравните зашифрованные документы из строк с типом настроек пути результата и целевым расширением

```csharp
string sourcePath = @"./data/source.docx";
string targetPath = @"./data/target.docx";

string sourcePassword = "pass";
string targetPassword = "pass";

Comparison comparison = new Comparison();
Stream result = comparison.Compare(sourcePath, sourcePassword, targetPath, targetPassword, resultPath, ComparisonType.Words, new WordsComparisonSettings(), FileType.Docx);
```

