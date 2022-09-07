---
идентификатор: получить информацию о файле
url: comparison/java/get-file-info
title: "Получить информацию о файле"
weight: 2
description: ""
ключевые слова:
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
имя: Как получить информацию о файле
        description: "Узнайте, как получить информацию о файле с помощью Comparison API"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект «Comparer», передавая путь к файлу в качестве аргумента конструктора.
- имя: Получить информацию о документе с помощью специального метода
текст: вызовите метод getSource(), чтобы получить объект «Документ». Затем вызовите метод getDocumentInfo() объекта Document, чтобы получить информацию о документе.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет получить информацию о файле, которая включает:

* [FileType](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getFileType()) — тип файла документа (PDF, документ Word, электронная таблица Excel, презентация PowerPoint или изображение так далее.);
* [PageCount](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPageCount()) - количество страниц документа;
* [FileSize](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getSize()) - размер файла документа;
* [PagesInfo](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.interfaces/IDocumentInfo#getPagesInfo()) - представляет информацию о странице.

В следующих примерах кода показано, как получить информацию о файле.

## Получить информацию о файле для файла с локального диска

<script src="https://gist.github.com/groupdocs-comparison-gists/cba10d2dea13e2c62383d7e88c3e6615.js"></script>

## Получить файл для файла из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/19baec4618b31a67fa06db5a74e68497.js"></script>

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

