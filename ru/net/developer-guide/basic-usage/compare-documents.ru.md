---
id: сравнить документы
url: comparison/net/compare-documents
title: "Сравните документы"
weight: 3
description: "В этой статье показано, как сравнивать документы Word, Excel, PowerPoint, Outlook, OneNote, PDF, Image, HTML, AutoCAD, Visio, OpenDocument, OneNote с помощью GroupDocs.Comparison для .NET."
keywords: "Сравните документы, сравнение документов в C#"
productName: GroupDocs.Comparison для .NET
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Сравнение документов
    description: "Сравнивайте документы изначально с высокой производительностью, используя язык C# и GroupDocs.Comparison для .NET."
код продукта: сравнение
продуктПлатформа: чистая
показатьВидео: Правда
как:
название: Как сравнивать документы в .NET
    description: "Узнайте, как сравнивать документы в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу.
---
## Функции сравнения файлов

Алгоритмы обнаружения изменений, используемые **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)**, позволяют обнаруживать изменения в различных частях и блоках документа:

* Текстовые блоки - абзацы, слова и символы;
* Столы;
* Картинки;
* Формы и т.д.
    


Для лучшего визуального разделения обнаруженных изменений добавленные, измененные или удаленные части документа выделены разными цветами:

* Добавлено — <font color="blue">**синий**</font>
* Изменено — <font color="green">**зеленый**</font>
* Стиль – <font color="green">**зеленый**</font>
* Удалено — <font color="red">**красный**</font>

Цветовая схема изменения стиля может быть настроена при необходимости, измененные текстовые блоки могут быть отмечены различным форматированием - курсивом, полужирным, подчеркнутым, зачеркнутым и т. д.

Вот простые шаги для сравнения двух документов:
* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Добавить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа.
* Вызовите метод [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index).

Следующий фрагмент кода демонстрирует простейший случай сравнения документов с помощью пары строк кода.

## Сравните документы из локального файла

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	comparer.Compare("result.docx");
}
```

## Сравните документы из потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	comparer.Compare(File.Create("result.docx"));
}
```

## Дополнительные ресурсы
### Темы для продвинутого использования
Чтобы узнать больше о функциях сравнения документов, обратитесь к [разделу расширенного использования]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    


### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой .NET мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с бесплатным онлайн-приложением для сравнения GroupDocs (https://products.groupdocs.app/comparison). ).

