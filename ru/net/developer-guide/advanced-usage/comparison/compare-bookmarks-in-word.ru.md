---
id: сравнение закладок в слове
url: comparison/net/compare-bookmarks-in-word
title: "Сравните закладки в документах Word"
weight: 12
description: "В этой статье объясняется, как активировать сравнение закладок для формата Word в GroupDocs.Comparison для .NET."
keywords: "закладки, Word, word, docx, doc, сравнить закладки, словесные закладки, CompareBookmarks, сравнение закладок"
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
название: Как сравнить закладки в документах Word в .NET
      description: "Узнайте, как шаг за шагом сравнивать закладки в документах Word в .NET."
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret, используя метод Add
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и укажите для параметра CompareBookmarks истинное значение.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет сравнивать закладки в документах WORD.

Ниже приведены шаги для сравнения закладок документов:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) с путем к исходному файлу или потоком;
* Вызовите метод [Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому файлу или поток;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) и инициализируйте [CompareBookmarks](https://apireference.groupdocs.com/comparison/net /groupdocs.comparison.options/compareoptions/properties/comparebookmarks) со значением **true**;
* Вызовите метод [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison .options/compareoptions) объект из предыдущего шага.

## Пример блока кода для демонстрации того, как сравнивать закладки

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
     

    comparer.Compare(resultPath, new CompareOptions {
        CompareBookmarks = true
    });
}
```

## Результат после сравнения документа с включенной опцией CompareBookmarks

---

Результат сопоставления закладок представлен в виде вставленных комментариев с описанием в документе. См. пример ниже на изображении:

![](/comparison/net/images/compared-bookmarks.png)

## Дополнительные ресурсы

---

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).