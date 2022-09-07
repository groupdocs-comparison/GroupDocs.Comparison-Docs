---
id: сравнение-несколько-документов-с-конкретными-сравнительными-настройками
url: comparison/java/compare-multiple-documents-with-specific-compare-settings
title: "Сравните несколько документов с определенными настройками сравнения"
weight: 2
description: "Следуя этому руководству, вы узнаете, как сравнивать несколько документов с различными настройками — определение стиля, изменение уровня детализации сравнения и многое другое."
keywords: "Сравнение нескольких документов, обнаружение изменения стиля, множественное сравнение файлов"
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
название: Как сравнить несколько документов с определенными настройками
        description: "Узнайте, как сравнить несколько документов с определенными настройками"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: Добавить первый целевой документ
текст: используйте метод «добавить», чтобы добавить первый целевой документ
- имя: Добавить второй целевой документ
текст: используйте метод «добавить», чтобы добавить второй целевой документ
- имя: Создать объект класса 'CompareOptions'
текст: Создайте объект «CompareOptions» и измените его свойства, чтобы настроить процесс сравнения.
- имя: запустить процесс сравнения с определенными настройками
текст: вызовите метод «сравнить», передав объект класса «CompareOptions», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция доступна только для документов Microsoft Word, Microsoft PowerPoint и презентаций Open Document.{{< /alert >}}

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** позволяет сравнить более двух документов и указать некоторые специальные параметры сравнения, такие как стиль для обнаруженных изменений, уровень детализации сравнения и т. д.

Ниже приведены шаги для сравнения нескольких документов с определенными параметрами.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа. Повторите этот шаг для каждого целевого документа.
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и укажите нужные параметры;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) и передайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

В следующем примере кода показано, как сравнить несколько документов с определенными параметрами.

## Сравните несколько документов с определенными настройками сравнения с локального диска.

<script src="https://gist.github.com/groupdocs-comparison-gists/9afb39e82ef686e97c30191f8fa3ee21.js"></script>

## Сравните несколько документов с определенными настройками сравнения из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/0c32eddfc1a3baad1583ba7457c8ae3b.js"></script>

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

