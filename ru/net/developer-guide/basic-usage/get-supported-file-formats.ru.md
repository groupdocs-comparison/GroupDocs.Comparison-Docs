---
id: получить поддерживаемые форматы документов
url: comparison/net/get-supported-document-formats
title: "Получить поддерживаемые форматы файлов"
weight: 1
description: "В этой статье объясняется, как получить список поддерживаемых форматов файлов при просмотре документов с помощью GroupDocs.Comparison в приложениях .NET."
keywords: "Получить информацию о файле, получить тип файла, количество страниц, размер файла"
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
name: Получить форматы файлов, поддерживаемые Comparison в .NET
    description: "Получите форматы файлов, поддерживаемые Comparison .NET шаг за шагом"
шаги:
- имя: Получить массив поддерживаемых типов файлов
текст: вызовите метод GetSupportedFileTypes, используя объект FileType. Дополнительным методом OrderBy может быть сортировка результирующего массива с использованием лямбда-выражения в качестве параметра. И присвоить результат коллекции с типом данных FileType, с возможностью итерации.
- name: вывод поддерживаемых типов файлов
text: Используя итерацию вашей коллекции, вы можете вывести поддерживаемые типы данных, например, на консоль.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет получить список всех [поддерживаемых форматов файлов]({{< ref "comparison/net/getting-started/ support-document-formats.md" >}}), выполнив следующие шаги:

* Вызов [GetSupportedFileTypes](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype/methods/getsupportedfiletypes) из [FileType](https://apireference.groupdocs.com/comparison/net /groupdocs.comparison.result/filetype);
* Перечислить коллекцию объектов [FileType](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/filetype).

В следующем примере кода показано, как получить список поддерживаемых форматов файлов.

```csharp
IEnumerable<FileType> supportedFileTypes = FileType
	.GetSupportedFileTypes()
	.OrderBy(f => f.Extension);

foreach (FileType fileType in supportedFileTypes)
	Console.WriteLine(fileType);
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

