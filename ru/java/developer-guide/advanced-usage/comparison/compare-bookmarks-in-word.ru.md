---
id: сравнение закладок в слове
url: comparison/java/compare-bookmarks-in-word
title: "Сравните закладки в документах Word"
weight: 12
description: "В этой статье объясняется, как активировать сравнение закладок для формата Word в GroupDocs.Comparison для Java."
keywords: "закладки, Word, word, docx, doc, сравнить закладки, словесные закладки, CompareBookmarks, сравнение закладок"
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
название: Как сравнить закладки в документах Word
        description: "Узнайте, как сравнивать закладки в документах Word"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: Настроить объект параметров сравнения
текст: создайте объект класса «CompareOptions» и используйте его метод «setCompareBookmarks (true)», чтобы включить сравнение закладок.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передав параметры сравнения в качестве второго аргумента.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** позволяет сравнивать закладки в документах WORD.

Ниже приведены шаги для сравнения закладок документов:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому файлу или поток;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и инициализируйте [CompareBookmarks](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions#setCompareBookmarks(boolean)) со значением **true**;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

## Пример блока кода для демонстрации того, как сравнивать закладки

---

<script src="https://gist.github.com/groupdocs-comparison-gists/11f02eec9356367c4bd7ac9810114caa.js"></script>

## Результат после сравнения документа с включенной опцией CompareBookmarks

---

Результат сопоставления закладок представлен в виде вставленных комментариев с описанием в документе. См. пример ниже на изображении:

![](/comparison/java/images/compared-bookmarks.png)

## Дополнительные ресурсы

---
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
