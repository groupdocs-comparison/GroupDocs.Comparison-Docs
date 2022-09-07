---
id: получить список изменений
url: comparison/java/get-list-of-changes
title: "Получить список изменений"
weight: 6
description: "В этой статье объясняется, как получить набор изменений между сравниваемыми документами при использовании GroupDocs.Comparison для Java."
keywords: "Получить файл diff, документы diff, сравнить документы, сравнить файлы"
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
name: Как получить список изменений
        description: "Узнайте, как получить список изменений"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения
- name: Получить список изменений
текст: используйте метод getChanges() объекта сравнения для получения списка изменений
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет получить список изменений между исходным и целевым файлами.

Ниже приведены шаги для получения списка изменений.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому файлу или поток;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare());
* Вызов метода [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()).
    



В следующем примере кода показано, как получить список всех изменений.

## Получить список изменений с локального диска

<script src="https://gist.github.com/groupdocs-comparison-gists/883e152bcb4f92becd8cc5051118c36a.js"></script>

## Получить список изменений из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/a39965c7ca12a3a78f65821c59d20c29.js"></script>

## Дополнительные ресурсы

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

