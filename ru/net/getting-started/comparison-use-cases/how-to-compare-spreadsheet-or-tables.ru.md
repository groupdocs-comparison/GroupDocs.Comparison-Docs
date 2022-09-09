---
id: как сравнить электронные таблицы или таблицы
url: comparison/net/how-to-compare-spreadsheet-or-tables
title: "Как сравнить файлы Excel"
weight: 1
description: "Прочтите эту статью и узнайте, как использовать GroupDocs.Comparison для .NET для поиска различий в файлах Excel."
keywords: "Как сравнить файлы Excel, электронные таблицы или таблицы, сравнить таблицы, сравнить файлы Excel"
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
Итак, если у вас есть две одинаковые книги Excel или две версии одной и той же электронной таблицы, что лучше всего сделать в первую очередь? Правильно, сравните эти файлы на наличие различий, а затем, возможно, объедините их в один файл. Кроме того, сравнение книг поможет выявить возможные проблемы, такие как неправильные таблицы, дополнительные записи, несогласованные формулы или неправильное форматирование.**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет множество возможностей для сравнения широкого диапазона [поддерживаемых форматов файлов]({{< ref "comparison/net/getting-started/supported-document-formats.md" >}}), включая форматы Excel.

После сравнения в результирующем файле есть три цвета, которые выделяют различия. Вы также можете указать цвета самостоятельно, чтобы определить следующее различие:

* Элементы, которые были вставлены в первый файл. – <font color="blue">**синий**</font> , по умолчанию
* Элементы, которые были удалены из первого файла — <font color="red">**красный**</font> , по умолчанию
* Элементы, у которых изменились стили (шрифт, цвет и т. д.) — <font color="green">**зеленый**</font> , по умолчанию

Пример кода для сравнения двух файлов Excel:

```csharp
string sourcePath = @"source.xlsx"; // NOTE: Path to the source Excel document 
string targetPath = @"target.xlsx"; // NOTE: Path to the target Excel document 
string resultPath = @"result.xlsx"; // NOTE: Path to the result Excel document       

            

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

| Исходные/целевые/результатные файлы Excel |
| --- | --- |
|Источник |![](/comparison/net/images/how-to-compare-spreadsheet-or-tables-1.png) |
|Target |![](/comparison/net/images/how-to-compare-spreadsheet-or-tables-2.png)|
|Результат |![](сравнение/net/images/как-сравнить-таблицу-или-таблицы-3.png)|

В результате у вас есть файл Excel с выделенными изменениями, в котором удаленные элементы отмечены шрифтом <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="yellow">**зеленым**</font> .

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

