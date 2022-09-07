---
id: загрузить текст из строки
url: comparison/java/load-text-from-string
title: "Загрузить текст из строки"
weight: 5
description: "В этой статье объясняется, как загружать значения из переменных строкового типа при использовании GroupDocs.Comparison для Java."
keywords: "Загрузить значения из переменных строкового типа, Загрузить текст с помощью GroupDocs.Comparison"
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
name: Как загрузить текст из строки
        description: "Узнайте, как текст из строки"
шаги:
- имя: Создать объект класса «LoadOptions»
текст: создать объект «LoadOptions»
- имя: Настроить параметры загрузки
текст: используйте метод setLoadText(true)', чтобы сообщить Comparer, что аргумент конструктора будет исходным текстом
- name: Создать объект класса «Comparer»
text: создать объект «Comparer», передающий исходный текст, и загрузить параметры в качестве аргументов конструктора.
- имя: Добавить целевой текст
текст: используйте метод «добавить», чтобы добавить текст для сравнения и загрузки параметров
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) позволяет сравнивать значения переменных типа *string*.
Ниже приведены шаги для сравнения текста из переменных:

* Создайте объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) и установите [LoadText](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) в значение true (это означает, что переданная строка содержит текст для сравнения, а не путь к файлу);
* Передать содержимое исходной строки в конструктор класса [Comprer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) вместе с созданными [LoadOptions](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.options.load/LoadOptions)
* Передать содержимое целевой строки в [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load .LoadOptions)) вместе с [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions), в котором [LoadText](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) имеет значение true.

В следующем фрагменте кода показано, как загружать значения из переменных:

<script src="https://gist.github.com/groupdocs-comparison-gists/425813e53c5d5fb0fd54bd7cbdbbc8cb.js"></script>
---

Также может сочетаться с различными способами передачи документов (будь то путь к файлу или поток), как показано в следующем примере кода:

<script src="https://gist.github.com/groupdocs-comparison-gists/c600672647eab7f9c38ec9bd77466e67.js"></script>

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

