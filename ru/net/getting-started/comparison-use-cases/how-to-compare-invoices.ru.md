---
id: как-сравнить-счета
url: comparison/net/how-to-compare-invoices
title: "Как сравнивать счета"
weight: 3
description: "Вы узнаете, как можно использовать GroupDocs.Comparison для .NET внутри вашего производства при сравнении счетов. Ознакомьтесь с конфигурацией чувствительности к сравнению файлов и другими вариантами использования API GroupDocs.Comparison."
keywords: "Сравните файлы docx, сравнение счетов, как сравнить счета"
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
название: Как сравнивать счета в .NET
      description: "Как сравнивать счета в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Укажите необходимые настройки
текст: Создайте объект опций и укажите необходимые настройки.
- название: Сравнить счета-фактуры
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
Иногда нужно добиться максимальной точности при сравнении файлов. Предположим, у вас есть две версии важного документа и вам нужно найти отличия посимвольно или наоборот, вам нужно сравнить документы, но подробности вам не важны, и вам нужны только слова, в которых есть изменения. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет возможность сравнивать документы с настройками чувствительности

Например, есть два счета в формате DOCX и вам необходимо сравнить их содержимое с максимальным уровнем детализации и чувствительности сравнения.

| | Файлы |
| --- | --- |
|Исходный счет-фактура|![](comparison/net/images/how-to-compare-invoices.png) | |Целевой счет-фактура |![](comparison/net/images/how-to-compare-invoices_1.png)|

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) предоставляет возможность сравнить два файла в формате DOCX (или любых других [поддерживаемых форматах файлов]({{< ref "comparison /net/getting-started/supported-document-formats.md" >}}) с настройкой уровня детализации и [чувствительности к сравнению.]({{< ref "comparison/net/developer-guide/advanced-usage/comparison/ настройка-сравнительная-чувствительность.md" >}})

Ниже приведены шаги для сравнения двух файлов DOCX с конкретными настройками уровня детализации и [чувствительности сравнения.]({{< ref "comparison/net/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}})

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) с желаемой [SensitivityOfComparison](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/compareoptions/properties/sensitivityofcomparison) и значение [DetalisationLevel](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/detalisationlevel);
* Вызовите метод [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1) и передайте [CompareOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/compareoptions) объект для метода.

В следующих примерах кода показано, как сравнить два файла DOCX.

```csharp
string sourceDocumentPath = @"Invoice_source.docx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"Invoice_target.docx"; // NOTE: Put here actual path to target document
string outputPath = @"Invoice_result.docx"; // NOTE: Put here actual path to result document       

           

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    CompareOptions options = new CompareOptions
    {
        SensitivityOfComparison = 100,
        DetalisationLevel = DetalisationLevel.High
    };
    comparer.Compare(outputPath, options);
}
```

В результате получаем файл DOCX, в котором удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font> .

| Результат Счет |
| --- |
| ![](сравнение/сеть/изображения/как сравнить-счета-фактуры_2.png)|

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

