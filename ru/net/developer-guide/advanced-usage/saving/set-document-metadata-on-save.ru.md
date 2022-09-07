---
id: установить метаданные документа при сохранении
url: comparison/net/set-document-metadata-on-save
title: "Установить метаданные документа при сохранении"
weight: 1
description: "Следуйте этому руководству и узнайте, как установить метаданные документа при сохранении результирующего документа после сравнения файлов в приложениях .NET."
keywords: "Сохранение метаданных документа, сравнение документов, сравнение документов, сравнение файлов"
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
name: Как установить метаданные документа при сохранении в .NET
    description: "Узнайте, как установить метаданные документа при сохранении в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- название: Сравнить документы
текст: вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект SaveOtions с требуемым параметром метаданных, инициализированным перечислением MetadataType.
---
Обычно документы могут содержать некоторые метаданные, такие как автор, организация и т. д. [**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) предоставляет возможность выбора источника метаданных при сохранении результирующего документ.
Возможные источники метаданных:

* **Исходный** метаданные документа;
* **Целевые** метаданные документа;
* **Пользовательские** метаданные.

Ниже приведены шаги для установки результирующих метаданных документа.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создайте объект [SaveOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) и установите [CloneMetadataType](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/saveoptions/properties/clonemetadatatype) с желаемым вариантом [MetadataType](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/metadatatype);
* Вызовите метод [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) и передайте [SaveOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/saveoptions) объект для метода.

Следующий код демонстрирует, как установить результирующие метаданные документа.

## Установить метаданные из исходного файла

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Source });
}
```

## Установить метаданные из целевого файла

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx", new SaveOptions() { CloneMetadataType = MetadataType.Target });
}
```

## Установить пользовательские метаданные

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    SaveOptions saveOptions = new SaveOptions()
    {
    	CloneMetadataType = MetadataType.FileAuthor,
        FileAuthorMetadata = new FileAuthorMetadata
        {
        	Author = "Tom",
            Company = "GroupDocs",
            LastSaveBy = "Jack"
        }
    };
    comparer.Compare("result.docx", saveOptions);
}
```

## Дополнительные ресурсы

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

