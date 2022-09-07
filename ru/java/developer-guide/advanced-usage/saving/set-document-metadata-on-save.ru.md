---
id: установить метаданные документа при сохранении
url: comparison/java/set-document-metadata-on-save
title: "Установить метаданные документа при сохранении"
weight: 1
description: "Следуйте этому руководству и узнайте, как установить метаданные документа при сохранении результирующего документа после сравнения файлов в ваших приложениях Java."
keywords: "Сохранение метаданных документа, сравнение документов, сравнение документов, сравнение файлов"
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
name: Как установить метаданные документа при сохранении
        description: "Узнайте, как установить метаданные документа при сохранении"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: Настроить объект сохранения документа
текст: Создайте объект класса «SaveOptions» и используйте его метод «setCloneMetadataType()» с параметром «MetadataType.Source» или «MetadataType.Target».
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передав параметры сохранения в качестве второго аргумента.
---
Обычно документы могут содержать некоторые метаданные, такие как автор, организация и т. д. [**GroupDocs.Comparison**](https://products.groupdocs.com/comparison) предоставляет возможность выбора источника метаданных при сохранении результирующего документа.

Возможные источники метаданных:
* **Исходный** файл метаданных;
* Метаданные **целевого** файла;
* **Пользовательские** метаданные.
    




Ниже приведены шаги для установки результирующих метаданных файла:
* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;

* Вызовите метод [add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому файлу или поток.

* Создайте объект [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) и используйте свойство [CloneMetadataType](https://apireference.groupdocs.com/ сравнение/java/com.groupdocs.comparison.options.save/SaveOptions#setCloneMetadataType(int)) для установки желаемого [MetadataType](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options. enums/MetadataType) вариант;

* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) и передать объект [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) в метод;
    




Следующий код демонстрирует, как установить результирующие метаданные файла.

## Установить метаданные из исходного файла

<script src="https://gist.github.com/groupdocs-comparison-gists/c9dfcc0917a4d9124c134e77056669d4.js"></script>

## Установить метаданные из целевого файла

<script src="https://gist.github.com/groupdocs-comparison-gists/0a632a692a09ab484ac19dba075241eb.js"></script>

## Установить пользовательские метаданные

<script src="https://gist.github.com/groupdocs-comparison-gists/abec6b3417cc08a6b51d83a102379ecd.js"></script>

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

