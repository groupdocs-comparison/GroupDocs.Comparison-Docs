---
id: groupdocs-comparison-for-java-16-11-0-заметки о выпуске
url: comparison/java/groupdocs-comparison-for-java-16-11-0-release-notes
title: "Примечания к выпуску GroupDocs.Comparison для Java 16.11.0"
weight: 1
description: ""
ключевые слова:
productName: GroupDocs.Comparison для Java
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для Java 16.11.0{{< /alert >}}

## Основные характеристики

* Улучшено сравнение таблиц для Comparison.Words
* Улучшено сравнение таблиц для Comparison.PDF
* Улучшена производительность Comparison.Cells
* Улучшено сравнение списка содержимого для Comparison.Words.
* Введена поддержка сравнения форм для Comparison.Words
* Введена поддержка многоязычных документов для Comparison.Words
* Добавлена поддержка объектов WordArt для Comparison.Words.
* Введена поддержка сравнения комментариев для Comparison.Words
* Введен новый поглотитель абзацев для Comparison.PDF
* Представлен новый поглотитель таблиц для Comparison.PDF
* Добавлена поддержка множественного сравнения для Comparison.Words.
* Введена поддержка применения/отмены для множественного сравнения для Comparison.Words.
* Представлены поглотители текста верхнего и нижнего колонтитула для Comparison.PDF.
* Улучшен поглотитель абзацев для Comparison.PDF
* Добавлена поддержка новых компонентов в Comparison.Slides: комментарии, диаграммы
* Добавлена поддержка водяных знаков в Comparison.PDF.
* Добавлена поддержка новых компонентов в Comparison.PDF: медиаобъекты, позиционирование изображений
* Улучшен ComparisonParagraphAbsorber для кейсов с таблицами
* Добавлена поддержка новых компонентов в Comparison.Slides: объекты со скриптами VBA, обнаружение изменений стиля, обнаружение рамок изображений
* Исправлены проблемы с Comparison.Words с вложенными абзацами
* Исправлены проблемы с Comparison.Cells со структурой таблицы
* Улучшен ComparisonParagraphAbsorber для кейсов с таблицами

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-792 | GroupDocs.Comparison.Words: Добавить сравнение номеров страниц | Новая функция |
| СРАВНЕНИЕ-818 | GroupDocs.Comparison.Words: Добавлена поддержка форм групп | Новая функция |
| СРАВНЕНИЕ-856 | GroupDocs.Comparison.Words: сравнение комментариев | Новая функция |
| СРАВНЕНИЕ-857 | GroupDocs.Comparison.Words: сравнение объектов WordArt | Новая функция |
| СРАВНЕНИЕ-858 | GroupDocs.Comparison.Words: сравнение таблицы в таблице | Новая функция |
| СРАВНЕНИЕ-854 | GroupDocs.Comparison.Words: сравнение форм | Новая функция |
| СРАВНЕНИЕ-855 | GroupDocs.Comparison.Words: сравнение мультиязычности | Новая функция |
| СРАВНЕНИЕ-669 | GroupDocs.Comparison.PDF: объектная модель Paragraph | Новая функция |
| СРАВНЕНИЕ-853 | GroupDocs.Comparison.Words: сравнение объектов с помощью скриптов VBA | Новая функция |
| СРАВНЕНИЕ-738 | GroupDocs.Comparison.PDF: реализация поглотителя абзацев для основных случаев | Новая функция |
| СРАВНЕНИЕ-877 | GroupDocs.Comparison.Words: добавлена возможность составления нескольких списков результатов из списков результатов каждого документа | Новая функция |
| СРАВНЕНИЕ-876 | GroupDocs.Comparison.Words: поддержка сравнения нескольких документов с отслеживанием изменений | Новая функция |
| СРАВНЕНИЕ-909 | GroupDocs.Comparison.PDF: Добавлена поддержка поглощения нижнего колонтитула страницы | Новая функция |
| СРАВНЕНИЕ-910 | GroupDocs.Comparison.PDF: Добавлена поддержка поглощения Верхнего колонтитула | Новая функция |
| СРАВНЕНИЕ-880 | GroupDocs.Comparison.Words: добавлена поддержка применения/отмены изменений для нескольких списков изменений результатов | Новая функция |
| СРАВНЕНИЕ-970 | GroupDocs.Comparison.PDF: добавлена поддержка новых компонентов: медиаобъектов, позиционирования изображений | Новая функция |
| СРАВНЕНИЕ-961 | GroupDocs.Comparison.PDF: добавлена поддержка сравнения водяных знаков | Новая функция |
| СРАВНЕНИЕ-962 | GroupDocs.Comparison.Slides: Добавлена поддержка сравнения графиков | Новая функция |
| СРАВНЕНИЕ-965 | GroupDocs.Comparison.Slides: добавлена поддержка сравнения комментариев | Новая функция |
| СРАВНЕНИЕ-1009 | GroupDocs.Comparison.Slides: добавлена поддержка сравнения объектов с помощью скриптов VBA | Новая функция |
| СРАВНЕНИЕ-1013 | GroupDocs.Comparison.Slides: добавлена поддержка обнаружения изменений стиля | Новая функция |
| СРАВНЕНИЕ-1026 | GroupDocs.Comparison.Slides: добавлена поддержка обнаружения рамок изображений | Новая функция |
| СРАВНЕНИЕ-782 | GroupDocs.Comparison.Words: Улучшено сравнение таблиц. Некоторые таблицы различаются по двум ячейкам, но алгоритм не определяет таблицы как похожие | Улучшение |
| СРАВНЕНИЕ-783 | GroupDocs.Comparison.Words: Улучшено сравнение списка содержимого | Улучшение |
| СРАВНЕНИЕ-817 | GroupDocs.Comparison.Cells: Повышение производительности ячеек | Улучшение |
| СРАВНЕНИЕ-687 | GroupDocs.Comparison.PDF: Улучшение работы с таблицами | Улучшение |
| СРАВНЕНИЕ-864 | GroupDocs.Comparison.PDF: реализация поглощения таблиц для простых случаев | Улучшение |
| СРАВНЕНИЕ-776 | GroupDocs.Comparison.PDF: Реализовать функцию CleanOperatorsList | Улучшение |
| СРАВНЕНИЕ-880 | GroupDocs.Comparison.Words: Повышение производительности обработки документов | Улучшение |
| СРАВНЕНИЕ-886 | GroupDocs.Comparison.PDF: разделяйте текст на абзацы, проверяя, содержатся ли фрагменты текста в разных родительских объектах | Улучшение |
| СРАВНЕНИЕ-904 | GroupDocs.Comparison.PDF: улучшенный поглотитель абзацев сравнения для случаев с обычным текстом | Улучшение |
| СРАВНЕНИЕ-873 | GroupDocs.Comparison.PDF: улучшена поддержка сравнения текста для всех форматов Adobe Acrobat | Улучшение |
| СРАВНЕНИЕ-949 | GroupDocs.Comparison.PDF: улучшенные таблицы сравнения | Улучшение |
| СРАВНЕНИЕ-903 | GroupDocs.Comparison.PDF: улучшить ComparisonParagraphAbsorber для кейсов с таблицами | Улучшение |
| СРАВНЕНИЕ-982 | GroupDocs.Comparison.PDF: улучшенный конструктор документов и сопоставление страниц | Улучшение |
| СРАВНЕНИЕ-904 | GroupDocs.Comparison.PDF:Проверка и улучшение ComparisonParagraphAbsorber для случаев с простым текстом | Улучшение |
| СРАВНЕНИЕ-1015 | GroupDocs.Comparison.Slides: улучшите производительность сравнения | Улучшение |
| СРАВНЕНИЕ-1012 | GroupDocs.Comparison.Slides: расширение движка для поддержки всех типов изображений | Улучшение |
| СРАВНЕНИЕ-957 | Кросс-форматный движок: Случай сравнения таблиц с разными результатами для всех форматов | Улучшение |
| СРАВНЕНИЕ-970 | GroupDocs.Comparison.PDF:Добавить поддержку новых компонентов в новое ядро | Улучшение |
| СРАВНЕНИЕ-698 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда после сравнения не открывался документ с таблицами | Ошибка |
| СРАВНЕНИЕ-727 | GroupDocs.Comparison.Words: Файлы с нулевым выводом (изменения не обнаружены) только для вложенных файлов | Ошибка |
| СРАВНЕНИЕ-736 | GroupDocs.Comparison.PDF: Некоторые таблицы различаются по двум ячейкам, но алгоритм не определил таблицы как похожие | Ошибка |
| СРАВНЕНИЕ-795 | GroupDocs.Comparison.Words: Целевой файл является модификацией исходного файла, но определяется как другой | Ошибка |
| СРАВНЕНИЕ-850 | GroupDocs.Comparison.Words:Не удается открыть файл результатов: графические объекты | Ошибка |
| СРАВНЕНИЕ-851 | GroupDocs.Comparison.Words:Не отображаются некоторые изображения (или графические объекты) | Ошибка |
| СРАВНЕНИЕ-888 | Результат сравнения: System.ArgumentException: Недопустимое имя шрифта | Ошибка |
| СРАВНЕНИЕ-883 | TablesAligner для Pdf: исправлена функция GetText класса ComparisonCell | Ошибка |
| СРАВНЕНИЕ-968 | GroupDocs.Comparison.Words: Идентичный текст из соседних абзацев определяется как удаленный и вставленный | Ошибка |
| СРАВНЕНИЕ-964 | GroupDocs.Comparison.Slides: Файлы не открываются после сравнения | Ошибка |
| СРАВНЕНИЕ-966 | GroupDocs.Comparison.Cells: Если содержимое строки уникально, тогда строка должна быть помечена как Вставленная или Удаленная | Ошибка |
| СРАВНЕНИЕ-967 | GroupDocs.Comparison.Cells: Структура таблицы результатов не соответствует структуре первичной таблицы | Ошибка |
| СРАВНЕНИЕ-946 | GroupDocs.Comparison.Words: Исключение: newChild был создан из документа, отличного от того, который создал этот узел. | Ошибка |
| СРАВНЕНИЕ-107 | Сравнение PDF-документов не приводит ни к ошибкам, ни к выходному PDF-файлу с помощью Gradle | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для Java 16.11.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

### MultiCompareWith: поддержка сравнения нескольких документов с отслеживанием изменений

### Сравнить документы Word — сравнить исходный документ с двумя целевыми документами.

```java
// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new ArrayList<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);

// Add target documents in list
ListOfTargetDocuments.add(target1);
ListOfTargetDocuments.add(target2);

// Call method MultiCompareWith.
IWordsCompareResult result = source.multiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

### Сравните исходный документ с тремя целевыми документами.

```java
// Create list of targets documents
List<IComparisonDocument> ListOfTargetDocuments = new ArrayList<IComparisonDocument>();

// Open documents
ComparisonDocument source = new ComparisonDocument(sourcePath);
ComparisonDocument target1 = new ComparisonDocument(target1Path);
ComparisonDocument target2 = new ComparisonDocument(target2Path);
ComparisonDocument target3 = new ComparisonDocument(target3Path);

// Add target documents in list
ListOfTargetDocuments.add(target1);
ListOfTargetDocuments.add(target2);
ListOfTargetDocuments.add(target3);

// Call method MultiCompareWith.
IWordsCompareResult result = source.multiCompareWith(ListOfTargetDocuments, new WordsComparisonSettings());

```

