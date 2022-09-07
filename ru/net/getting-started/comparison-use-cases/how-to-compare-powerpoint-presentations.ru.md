---
id: как сравнить презентации PowerPoint
url: comparison/net/how-to-compare-powerpoint-presentations
title: "Как сравнить презентации PowerPoint"
weight: 4
description: "В статье описан возможный пример использования GroupDocs.Comparison for .NET в вашей рабочей практике и возможности программного продукта для поиска различий в стилях в рамках презентаций PowerPoint."
keywords: "Сравните презентацию, сравните изменения стиля, сравните pptx, Как сравнить файлы PowerPoint"
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
название: Как сравнить презентации PowerPoint в .NET
    description: "Как шаг за шагом сравнить презентации PowerPoint в .NET"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Укажите необходимые настройки
текст: Создайте объект опций и укажите необходимые настройки.
- название: Сравните презентации
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
Вам может понадобиться сравнить две версии презентации PowerPoint, чтобы увидеть различия между ними (например, если коллега отредактировал ее напрямую, не заметив изменений). И самый быстрый способ сделать это — использовать встроенную в PowerPoint функцию сравнения. Чтобы использовать это:

* Откройте исходную версию презентации
* Перейдите в **Обзор** > **Сравнить**
* Нажмите **Сравнить**, чтобы открыть окно браузера.
* Выберите отредактированную версию презентации и нажмите **Объединить**

Затем вы войдете в режим просмотра. Откроется панель просмотра, которая показывает список всех правок в презентации в правой части экрана.

![](comparison/net/images/how-to-compare-powerpoint-presentations.png)

## Как сравнить две презентации с помощью GroupDocs.Comparison

Такого функционала, который предоставляют сторонние программы, явно недостаточно. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет множество функций для сравнения широкого спектра [поддерживаемых форматов файлов]({{< ref "comparison/net/getting- start/supported-document-formats.md" >}}), включая формат презентации PowerPoint. Приведем пример, вы сделали презентацию в разное время, но элементы на слайдах расположены не так, как у вас изначально. Чтобы найти различия в слайдах, вы можете сравнить два файла в формате PPTX, используя функцию **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** вместе со встроенной опцией, помогает найти изменения в стилях.

| | Презентации |
| --- | --- |
|Оригинал | ![](comparison/net/images/how-to-compare-powerpoint-presentations_1.png)|
|Изменено | ![](comparison/net/images/how-to-compare-powerpoint-presentations_2.png)|

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) предоставляет возможность сравнить два файла в формате PPTX(или любых других [поддерживаемых форматах файлов]({{< ref "comparison /net/getting-started/support-document-formats.md" >}}))

Ниже приведены шаги для сравнения двух файлов PPTX.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Создать объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) с нужными параметрами;
* Вызовите метод [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) объект к методу;

В следующих примерах кода показано, как сравнить два файла PPTX.

```csharp
string sourceDocumentPath = @"source_presentation.pptx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"target_presentation.pptx"; // NOTE: Put here actual path to target document
string outputPath = @"result_presentation.docx"; // NOTE: Put here actual path to result document       

            

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(outputPath, compareOptions);
}
```

В результате получаем PPTX-файл, в котором удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font> .

| Слайд результатов |
| --- |
| ![](сравнение/сеть/изображения/как сравнить-презентации PowerPoint_3.png))

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

