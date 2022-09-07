---
id: показать-гэп-линии
url: comparison/net/show-gap-lines
title: "Показывать линии разрыва вместо изменений"
weight: 13
description: "В этой статье объясняется, как настроить отображение результирующего документа, чтобы измененное содержимое заменялось пустыми строками в GroupDocs.Comparison для .NET."
keywords: "LeaveGaps, пробелы, пустые строки"
productName: GroupDocs.Comparison для .NET
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Сравнение документов
      description: "Сравнивайте документы изначально с высокой производительностью, используя язык C# и GroupDocs.Comparison для .NET."
код продукта: сравнение
продуктПлатформа: чистая
показатьВидео: правда
как:
название: Как показать линии разрыва вместо изменений в .NET
      description: "Как шаг за шагом отображать линии пробелов вместо изменений в .NET"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и укажите ShowInsertedContent и ShowDeletedContent со значением false и LeaveGaps со значением true.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет настроить формирование результирующего документа.

По умолчанию изменения из двух входных файлов (*исходный* и *целевой* файлы) добавляются в результирующий документ и визуально выделяются. Это можно настроить с помощью [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) и [ShowDeletedContent](https://apireference.groupdocs.com /comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent).

Вы также можете использовать свойство [LeaveGaps](https://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps), чтобы настроить отображение итогового документа. , что позволяет заменить измененный контент пустыми строками. Чтобы использовать это свойство, вам также необходимо активировать следующие свойства: [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showinsertedcontent) и [ShowDeletedContent](https ://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent).

Вот простые шаги, чтобы получить вышеуказанный результат:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) с путем к исходному файлу или потоком;
* Вызовите метод [Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому файлу или поток;
* Создание экземпляров [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) наборов объектов [ShowInsertedContent](https://apireference.groupdocs.com/comparison/net/groupdocs. compare.options/compareoptions/properties/showinsertedcontent) и/или [ShowDeletedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) и обязательно [LeaveGaps](https ://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps);
* Вызовите метод [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison .options/compareoptions) объект из предыдущего шага.

## Пример блока кода для получения желаемого результата

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
 
    CompareOptions options = new CompareOptions();
    options.ShowInsertedContent = false;
    options.ShowDeletedContent = false;
    options.LeaveGaps = true;
      

    comparer.Compare(resultPath, options);
}
```

## Пример выполнения кода

---

| Результат по умолчанию | Результат без свойства LeaveGaps |
|:---:|:---:|
| ![](сравнение/net/images/show-gap-lines-default-result.png) | ![](сравнение/net/images/show-gap-lines-without-leavegaps.png) |

| Результат по умолчанию | Результат со свойством LeaveGaps |
|:---:|:---:|
| ![](сравнение/net/images/show-gap-lines-default-result.png) | ![](сравнение/net/images/show-gap-lines-with-leavegaps.png) |

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
