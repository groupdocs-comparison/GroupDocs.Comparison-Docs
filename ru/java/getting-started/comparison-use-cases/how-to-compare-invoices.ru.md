---
id: как-сравнить-счета
url: comparison/java/how-to-compare-invoices
title: "Как сравнивать счета"
weight: 3
description: "Вы узнаете, как можно использовать GroupDocs.Comparison для Java внутри вашего производства при сравнении счетов. Ознакомьтесь с конфигурацией чувствительности к сравнению файлов и другими вариантами использования API GroupDocs.Comparison."
keywords: "Сравните файлы docx, сравнение счетов, как сравнить счета"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: Совпадение счетов-фактур
        description: "Продукт позволяет сопоставлять счета-фактуры"
код продукта: сравнение
Платформа продукта: Java
как:
Название: Как сопоставить счета
        description: "Узнайте, как сопоставлять счета в проектах Java или Kotlin"
шаги:
- имя: Загрузить исходный счет
текст: создать экземпляр класса Comparer, передающий исходный счет в качестве параметра конструктора.
- имя: Загрузить целевые счета
текст: добавьте один или несколько целевых счетов, чтобы сравнить их с исходным
- имя: Сравните исходные и целевые счета-фактуры
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---
Иногда нужно добиться максимальной точности при сравнении файлов. Предположим, у вас есть две версии важного документа, и вам нужно найти отличия посимвольно или наоборот, вам нужно сравнить документы, но детали вам не важны, и вам нужны только слова, в которых есть изменения . **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** предоставляет возможность сравнивать документы с настройками чувствительности

Например, есть два счета в формате DOCX и вам необходимо сравнить их содержимое с максимальным уровнем детализации и чувствительности сравнения.

| Исходный счет | Целевой счет |
|------------------------------------------------- ----------------------|-------------------------- ------------------|
| ![](comparison/java/images/how-to-compare-invoices.png) | ![](comparison/java/images/how-to-compare-invoices_1.png) |

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison) предоставляет возможность сравнить два файла в формате DOCX (или любых других [поддерживаемых форматах файлов]({{< ref "comparison/java /getting-started/supported-document-formats.md" >}})) с настройкой уровня детализации и [чувствительности сравнения](https://docs.groupdocs.com/display/comparisonjava/Set+Comparison+Sensitivity+While +Сравнение+Документов).

Ниже приведены шаги для сравнения двух файлов DOCX с конкретными настройками уровня детализации и [чувствительности сравнения.]({{< ref "comparison/java/developer-guide/advanced-usage/comparison/adjusting-comparison-sensitivity.md" >}})

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) с желаемым [setSensitivityOfComparison](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setSensitivityOfComparison(int)) и [setDetalisationLevel](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setDetalisationLevel(int)) ценность;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) и передать объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) методу.
    


В следующих примерах кода показано, как сравнить два файла DOCX.

<script src="https://gist.github.com/groupdocs-comparison-gists/c0ea4e8b64b330c78449bafa4d733b04.js"></script>

В результате получаем файл DOCX, в котором удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font> .

| Результат Счет |
|------------------------------------------------- ----------|
| ![](comparison/java/images/how-to-compare-invoices_2.png) |

## Дополнительные ресурсы
### Темы для продвинутого использования
Чтобы узнать больше о функциях сравнения документов, обратитесь к [разделу расширенного использования]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}}).

### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:

* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)


### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие документы с помощью бесплатного онлайн-приложения **[приложение для сравнения GroupDocs] (https://products.groupdocs.app/ сравнение)**.

