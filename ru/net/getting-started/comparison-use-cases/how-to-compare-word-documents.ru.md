---
id: как сравнить документы Word
url: comparison/net/how-to-compare-word-documents
title: "Как сравнить документы Word"
weight: 1
description: "Прочтите эту статью и узнайте, как использовать GroupDocs.Comparison для .NET для поиска различий в файлах Word. Также в этой статье вы можете найти вариант использования этого продукта в своем производстве."
keywords: "Как сравнить документы Word,Документы Word, Файлы Word, Пример использования для сравнения, Сравнить документы Word"
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
Часто при работе с документооборотом можно столкнуться с ситуацией, когда нужно сравнить большие файлы, которые похожи друг на друга, но имеют небольшие отличия, о которых хотелось бы узнать. И, конечно же, поиск этих изменений вручную — довольно трудоемкий процесс.
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет множество возможностей для сравнения широкого спектра [поддерживаемых форматов файлов]({{< ref "comparison/net/getting -started/supported-document-formats.md" >}}), включая формат PDF.

После сравнения двух файлов Word вы получите результирующий документ, в котором изменения выделены тремя разными цветами:

* Элементы, которые были вставлены в первый файл. – <font color="blue">**синий**</font> , по умолчанию
* Элементы, которые были удалены из первого файла — <font color="red">**красный**</font> , по умолчанию
* Элементы, у которых изменились стили (шрифт, цвет и т. д.) — <font color="green">**зеленый**</font> , по умолчанию

| Исходный / Целевой / Результат Word файлы |
| --- | --- |
|Источник |![](/comparison/net/images/how-to-compare-word-1.png) |
|Цель |![](/comparison/net/images/how-to-compare-word-2.png)|
|Результат |![](сравнение/net/images/how-to-compare-word-3.png)|

Пример кода для сравнения двух файлов Word:

```csharp
string sourcePath = @"source.doc"; // NOTE: Path to the source word document 
string targetPath = @"target.doc"; // NOTE: Path to the target word document 
string resultPath = @"result.doc"; // NOTE: Path to the result word document       

            

using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
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
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с помощью бесплатного онлайн-приложения [приложение для сравнения GroupDocs] (https://products.groupdocs.app/comparison). ).

