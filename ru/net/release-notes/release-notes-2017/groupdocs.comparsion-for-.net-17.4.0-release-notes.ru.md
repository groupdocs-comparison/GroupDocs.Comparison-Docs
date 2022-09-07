---
id: groupdocs-comparsion-for-net-17-4-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-4-0-release-notes
title: "Заметки о выпуске GroupDocs.Comparsion для .NET 17.4.0"
weight: 8
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparsion для .NET 17.4.0{{< /alert >}}

## Основные характеристики

В этом регулярном ежемесячном выпуске есть 3 новых функции, 3 улучшения и 4 исправления. Наиболее заметными являются:

* Добавлена поддержка множественного сравнения форматов с общедоступным API GroupDocs.Comparison.
* Введена поддержка форматов САПР
* Улучшено сравнение форматов изображений
* Упрощение API для всех поддерживаемых форматов
* Исправлено сравнение многоколоночных таблиц для GroupDocs.Comparison.PDF
* GroupDocs.Comparison.PDF: Исправлена ошибка, когда текст из абзацев накладывался на таблицы

## Полный список проблем, охватывающих все изменения в этой версии

| Ключ | Резюме | Категория |
| --- | --- | --- |
| СРАВНЕНИЕ-1143 | Добавить поддержку множественного сравнения форматов в общедоступный API GroupDocs.Comparison | Новая функция |
| СРАВНЕНИЕ-1172 | Добавить модель UpdateChanges для обработки изображений | Новая функция |
| СРАВНЕНИЕ-1175 | Добавить поддержку сравнения CAD | Новая функция |
| СРАВНЕНИЕ-1188 | Улучшение сравнения форматов изображений | Улучшение |
| СРАВНЕНИЕ-1182 | Упрощение межформатного API для всех поддерживаемых форматов | Улучшение |
| СРАВНЕНИЕ-1080 | Comparison.PDF: улучшено обнаружение изменений при сравнении для абзацев | Улучшение |
| СРАВНЕНИЕ-1184 | GroupDocs.Comparison.Words: текстовые файлы с содержимым html, сравниваемые движком Words | Ошибка |
| СРАВНЕНИЕ-1185 | GroupDocs.Comparison.Text: исправлено сравнение HTML-кода в файлах .txt с помощью средства сравнения слов | Ошибка |
| СРАВНЕНИЕ-1200 | GroupDocs.Comparison.PDF: Исправлена ошибка, когда текст из абзацев накладывался на таблицы | Ошибка |
| СРАВНЕНИЕ-1208 | Расположенные изображения на фасаде | Ошибка |

## Публичный API и обратно несовместимые изменения

{{< alert style="info" >}}В этом разделе перечислены изменения общедоступного API, внесенные в GroupDocs.Comparison для .NET 17.4.0. Он включает в себя не только новые и устаревшие общедоступные методы, но и описание любых изменений в поведении за кулисами в GroupDocs.Comparison, которые могут повлиять на существующий код. Любое введенное поведение, которое можно рассматривать как регрессию и изменение существующего поведения, особенно важно и задокументировано здесь.{{< /alert >}}

### Сравните более двух документов из файлов:

```csharp
string source = "source.docx";
List<string> targets = new List<string>
{
	"target.docx",
	"target1.docx",
	"target2.docx"
};
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, targets, new ComparisonSettings());

```

### Сравните более двух документов из потоков:

```csharp
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
List<Stream> targets = new List<Stream>
{
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target1.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target2.docx")
}; 
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, targets, new ComparisonSettings());



```

### Сравните более двух документов с паролями от файлов:

```csharp
string source = "source.docx";
List<string> targets = new List<string>
{
	"target.docx",
	"target1.docx",
	"target2.docx"
};
string sourcePassword = "password";
List<string> targetPasswords = new List<string>
{
	"password",
	"password",
	"password"
};
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, targets, targetPasswords, new ComparisonSettings());
```

### Сравните более двух документов с паролями из потоков:

```csharp
Stream sourceStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
List<Stream> targets = new List<Stream>
{
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target1.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target2.docx")
}; 

string sourcePassword = "password";
List<string> targetPasswords = new List<string>
{
	"password",
	"password",
	"password"
};

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, targets, targetPasswords, new ComparisonSettings());
```

