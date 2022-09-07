---
идентификатор: получить информацию о файле
url: comparison/net/get-file-info
title: "Получить информацию о файле"
weight: 2
description: "В этой статье объясняется, как определять тип файла документа, размер и подсчитывать количество страниц при аннотировании документов или изображений с помощью GroupDocs.Comparison."
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
имя: Получить информацию о файле Comparer в .NET
    description: "Получите информацию о файле Comparer в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Создать информационный объект файла
текст: вызовите метод GetDocumentInfo в поле Source объекта компаратора и назначьте результат объекту информации о файле класса IDocumentInfo.
- имя: Получить информацию о файле
текст: Чтобы получить общую информацию о файле, откройте необходимое поле с помощью объекта информации о файле. Чтобы получить информацию о конкретной странице, используйте поле PagesInfo с требуемым индексом страницы и после этого получите доступ к нужному полю.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет получить информацию о файле, которая включает:

* [FileType](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/filetype) — тип файла документа (PDF, документ Word, электронная таблица Excel, презентация или изображение PowerPoint и т. д. );
* [PageCount](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/pagecount) - количество страниц документа;
* [FileSize](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.interfaces/idocumentinfo/properties/size) - размер файла документа;
* [PagesInfo](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/pageinfo) - представляет информацию о странице.

В следующих примерах кода показано, как получить информацию о файле.

## Получить информацию о файле для файла с локального диска

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ", 
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
}
```

## Получить файл для файла из потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	IDocumentInfo info = comparer.Source.GetDocumentInfo();
    for (int i = 0; i < info.PageCount; i++)
    {
         Console.WriteLine("\nPage number: {5}\nFile type: {0}\nNumber of pages: {1}\nDocument size: {2} bytes\nWidth: {3}\nHeight: {4} ", 
             info.FileType, info.PageCount, info.Size, info.PagesInfo[i].Width, info.PagesInfo[i].Height, i + 1);
    }
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

