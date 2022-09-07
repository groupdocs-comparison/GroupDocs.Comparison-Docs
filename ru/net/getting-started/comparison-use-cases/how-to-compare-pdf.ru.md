---
id: как сравнить PDF-файлы
url: comparison/net/how-to-compare-pdf-files
title: "Как сравнить файлы PDF"
weight: 1
description: "Прочтите эту статью и узнайте, как использовать GroupDocs.Comparison для .NET для поиска различий в файлах PDF. Также в этой статье вы можете найти вариант использования этого продукта в своем производстве."
keywords: "Как сравнить PDF-файлы, PDF-файлы, Пример использования для сравнения, Сравнить PDF-файлы"
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
При работе с однотипными документами становится все труднее найти разницу между тем, что было изменено в одной из версий, особенно при работе с документами большого объема. ускорьте его.**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет множество возможностей для сравнения широкого диапазона [поддерживаемых форматов файлов]({{< ref "comparison /net/getting-started/support-document-formats.md" >}}), включая формат PDF.

После сравнения в результирующем файле есть три цвета, которые выделяют различия. Вы также можете указать цвета самостоятельно, чтобы определить следующее различие:

* Элементы, которые были вставлены в первый файл. – <font color="blue">**синий**</font> , по умолчанию
* Элементы, которые были удалены из первого файла — <font color="red">**красный**</font> , по умолчанию
* Элементы, у которых изменились стили (шрифт, цвет и т. д.) — <font color="green">**зеленый**</font> , по умолчанию

| Исходный / Целевой / Результат PDF-файлы |
| --- | --- |
|Источник |![](comparison/net/images/how-to-compare-pdf-1.png) |
|Цель |![](comparison/net/images/how-to-compare-pdf-2.png)|
|Результат |![](сравнение/net/images/how-to-compare-pdf-3.png)|

Пример кода для сравнения двух файлов PDF:

```csharp
string sourcePath = @"source.pdf"; // NOTE: Path to the source pdf document 
string targetPath = @"target.pdf"; // NOTE: Path to the target pdf document 
string resultPath = @"result.pdf"; // NOTE: Path to the result pdf document       

            

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

В результате получаем PDF-файл с выделенными изменениями, в котором удаленные элементы отмечены шрифтом <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="yellow">**зеленым**</font> .

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

