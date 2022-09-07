---
id: как сравнить прайс-листы
url: comparison/java/how-to-compare-price-lists
title: "Как сравнить прайс-листы"
weight: 5
description: "В этой статье описывается, как сравнивать файлы с помощью функции Microsoft Excel и API GroupDocs.Comparison для Java. Вы также узнаете, как сравнить две или более таблиц и получить разницу в файлах."
keywords: "Сравните файлы Excel, сравните электронную таблицу, как сравнить файлы Excel"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Excel компаратор
        description: "Продукт позволяет сравнивать электронные таблицы Excel"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнивать электронные таблицы Excel
        description: "Узнайте, как сравнивать электронные таблицы Excel в проекте Java или Kotlin."
шаги:
- имя: Загрузить исходную таблицу Excel
текст: создать экземпляр класса Comparer, передающий исходную таблицу в качестве параметра конструктора.
- имя: Загрузить целевые электронные таблицы Excel
текст: добавьте одну или несколько целевых электронных таблиц Excel, чтобы сравнить их с исходной
- имя: Сравните исходные и целевые электронные таблицы Excel
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---
Допустим, у вас есть две книги Excel или, может быть, две версии одной и той же книги, которые вы хотите сравнить. Или, может быть, вы хотите найти потенциальные проблемы, такие как введенные вручную (вместо рассчитанных) итоги или неверные формулы. Если у вас есть Microsoft Office профессиональный плюс 2013, вы можете использовать Microsoft Spreadsheet Compare для создания отчета о найденных различиях и проблемах.

{{< alert style="info" >}}Важно! Сравнение электронных таблиц доступно только в Office профессиональный плюс 2013 или Office 365 профессиональный плюс.{{< /alert >}}

Чтобы сравнить две книги Excel с Office профессиональный плюс 2013, вам необходимо:

* Нажмите **Главная > Сравнить файлы**. Появится диалоговое окно «Сравнить файлы».
    ![](comparison/java/images/how-to-compare-price-lists.jpg)
* Щелкните значок синей папки рядом с полем **Сравнить**, чтобы перейти к местоположению более ранней версии вашей книги.

![](comparison/java/images/how-to-compare-price-lists_1.jpg)


* Щелкните значок зеленой папки рядом с полем **Кому**, чтобы перейти к местоположению книги, которую вы хотите сравнить с более ранней версией, а затем нажмите **ОК**.
* На левой панели выберите параметры, которые вы хотите видеть в результатах сравнения книг, установив или сняв флажки с таких параметров, как **Формулы**, **Макросы** или **Формат ячеек**. Или просто **Выбрать все**.

![](comparison/java/images/how-to-compare-price-lists_2.png)
* Нажмите **ОК**, чтобы запустить сравнение.

## Как сравнивать файлы Excel с помощью GroupDocs.Comparison

Microsoft Office Professional Plus 2013 предлагает сравнение электронных таблиц, но **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** предоставляет возможность программно сравнивать рабочие листы, и вы можете сравнивать не только два разных файла, но и несколько сразу. Допустим, есть три и более прайс-листа за несколько лет (Например: "2018", "2019", "2020") в формате XLSX или других [поддерживаемых форматах файлов]({{< ref "comparison/java/ начало работы/поддерживаемые форматы документов.md" >}}). другие, и вам нужно сравнить их содержимое. Вот пример того, как сравнить три прайс-листа с помощью API GroupDocs.Comparsion. Обычно вам просто нужно выполнить следующие шаги:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа. Повторите этот шаг для каждого целевого документа;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String))

| | Файлы |
|---------------------|------------- -----------------------------------|
| Прайс-лист на 2018 год | ![](comparison/java/images/how-to-compare-price-lists_3.png) |
| Прайс-лист на 2019 год | ![](comparison/java/images/how-to-compare-price-lists_4.png) |
| Прайс-лист на 2020 год | ![](comparison/java/images/how-to-compare-price-lists_5.png) |

Вот код, который используется для сравнения трех прайс-листов.

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc74c8d9ae6abf118bb1551446e2ca4.js"></script>

В результате получаем XSLX-файл, в котором удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font>

| Результат Прейскурант |
|------------------------------------------------- -------------|
| ![](comparison/java/images/how-to-compare-price-lists_6.png) |

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

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [создать приложение для сравнения](/comparison/java/how-to-use-micronaut-comparison-sample) с помощью Micronaut Framework
* Как [показать предварительный просмотр чертежей AutoCAD] (/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) в приложении kotlin compose
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin

