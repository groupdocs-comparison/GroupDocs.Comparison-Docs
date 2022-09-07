---
id: сравнить документы
url: comparison/java/compare-documents
title: "Сравните документы"
weight: 3
description: "В этой статье показано, как сравнивать документы Word, Excel, PowerPoint, Outlook, OneNote, PDF, Image, HTML, AutoCAD, Visio, OpenDocument, OneNote с помощью GroupDocs.Comparison для Java."
keywords: "Сравните документы, сравнение документов в C#"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: Инструмент сравнения документов
        description: "Продукт позволяет сравнивать Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code и многие другие форматы файлов. API сравнения также поддерживает принятие или отклонение изменений, извлечение информации о документе и создание отчета о сравнении."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнивать документы
        description: "Научитесь сравнивать документы"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
## Функции сравнения файлов

Алгоритмы обнаружения изменений, используемые **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)**, позволяют обнаруживать изменения в различных частях и блоках документа:

* Текстовые блоки - абзацы, слова и символы;
* Столы;
* Картинки;
* Формы и т.д.

Для лучшего визуального разделения обнаруженных изменений добавленные, измененные или удаленные части документа выделены разными цветами:

* Добавлено — <font color="blue">**синий**</font>
* Изменено — <font color="green">**зеленый**</font>
* Стиль – <font color="green">**зеленый**</font>
* Удалено — <font color="red">**красный**</font>

Цветовая схема изменения стиля может быть настроена при необходимости, измененные текстовые блоки могут быть отмечены различным форматированием - курсивом, полужирным, подчеркнутым, зачеркнутым и т. д.

Вот простые шаги для сравнения двух документов:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа.
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String))

Следующий фрагмент кода демонстрирует простейший случай сравнения документов с помощью пары строк кода.

## Сравните документы из локального файла

<script src="https://gist.github.com/groupdocs-comparison-gists/bcd9553b0796c190990221c33d060d2a.js"></script>

## Сравните документы из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
