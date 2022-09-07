---
id: как сравнить прайс-листы
url: comparison/net/how-to-compare-price-lists
title: "Как сравнить прайс-листы"
weight: 5
description: "В этой статье описывается, как сравнивать файлы с помощью функции Microsoft Excel и API GroupDocs.Comparison для .NET. Вы также узнаете, как сравнить две или более таблиц и получить разницу в файлах."
keywords: "Сравните файлы Excel, сравните электронную таблицу, как сравнить файлы Excel"
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
название: Как сравнивать прайс-листы в .NET
    description: "Как сравнивать прайс-листы в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевые файлы
текст: Добавьте путь к целевым файлам, используя метод Add.
- название: Сравнить прайс-листы
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу.
---
Допустим, у вас есть две книги Excel или, может быть, две версии одной и той же книги, которые вы хотите сравнить. Или, может быть, вы хотите найти потенциальные проблемы, такие как введенные вручную (вместо рассчитанных) итоги или неверные формулы. Если у вас есть Microsoft Office профессиональный плюс 2013, вы можете использовать Microsoft Spreadsheet Compare для создания отчета о найденных различиях и проблемах.

{{< alert style="info" >}}Важно! Сравнение электронных таблиц доступно только в Office профессиональный плюс 2013 или Office 365 профессиональный плюс.{{< /alert >}}

Чтобы сравнить две книги Excel с Office профессиональный плюс 2013, вам необходимо:

* Нажмите **Главная > Сравнить файлы**. Появится диалоговое окно «Сравнить файлы».
![](comparison/net/images/how-to-compare-price-lists.jpg)
* Щелкните значок синей папки рядом с полем **Сравнить**, чтобы перейти к местоположению более ранней версии вашей книги.
      







![](comparison/net/images/how-to-compare-price-lists_1.jpg)
      







    



* Щелкните значок зеленой папки рядом с полем **Кому**, чтобы перейти к местоположению книги, которую вы хотите сравнить с более ранней версией, а затем нажмите **ОК**.
* На левой панели выберите параметры, которые вы хотите видеть в результатах сравнения книг, установив или сняв флажки с таких параметров, как **Формулы**, **Макросы** или **Формат ячеек**. Или просто **Выбрать все**.
      







![](comparison/net/images/how-to-compare-price-lists_2.png)
* Нажмите **ОК**, чтобы запустить сравнение.

## Как сравнивать файлы Excel с помощью GroupDocs.Comparison

Microsoft Office Professional Plus 2013 предлагает сравнение электронных таблиц, но **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет возможность программно сравнивать рабочие листы, и вы можете сравнивать не только два разных файла. , а сразу несколько. Допустим, есть три и более прайс-листа за несколько лет (Например: "2018", "2019", "2020") в формате XLSX или других [поддерживаемых форматах файлов]({{< ref "comparison/net/ начало работы/поддерживаемые форматы документов.md" >}}). другие, и вам нужно сравнить их содержимое. Вот пример того, как сравнить три прайс-листа с помощью API GroupDocs.Comparsion. Обычно вам просто нужно выполнить следующие шаги:

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Добавить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа. Повторите этот шаг для каждого целевого документа;
* Вызовите метод [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index).
      







    




| | Файлы |
| --- | --- |
| Прайс-лист на 2018 год | ![](comparison/net/images/how-to-compare-price-lists_3.png) |
| Прайс-лист на 2019 год | ![](comparison/net/images/how-to-compare-price-lists_4.png) |
| Прайс-лист на 2020 год | ![](comparison/net/images/how-to-compare-price-lists_5.png) |

Вот код, который используется для сравнения трех прайс-листов.

```csharp
string sourceDocumentPath = @"Source Price List.xlsx"; // NOTE: Put here actual path to source document
string targetOneDocumentPath = @"Target Price List 1.xlsx"; // NOTE: Put here actual path to target one document
string targetTwoDocumentPath = @"Target Price List 2.xlsx"; // NOTE: Put here actual path to target two document
string outputPath = @"Result Price List.xlsx"; // NOTE: Put here actual path to result document
             







using (Comparer comparer = new Comparer(sourceDocumentPath))
{
     comparer.Add(targetOneDocumentPath);
     comparer.Add(targetTwoDocumentPath);
     comparer.Compare(outputPath);
}
```

В результате получаем XSLX-файл, в котором удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font>


| Результат Прейскурант |
| --- |
| ![](comparison/net/images/how-to-compare-price-lists_6.png) |

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

