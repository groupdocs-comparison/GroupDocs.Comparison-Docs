---
id: настроить-изменить-стили
url: comparison/java/customize-changes-styles
title: "Настройка стилей изменений"
weight: 4
description: "Следуя этому руководству, вы узнаете, как настроить отчет о сравнении документов и изменить внешний вид обнаруженных изменений при использовании GroupDocs.Comparison для Java."
keywords: "Обнаружение изменения стиля, сравнение стилей документов, сравнение документов"
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
название: Как настроить стили изменений
        description: "Узнайте, как настроить стили изменений"
шаги:
- имя: Создать объект «StyleSettings»
текст: создать объект класса StyleSettings
- имя: Изменить настройки стиля
текст: обновить свойства объекта, чтобы изменить настройки стиля
- имя: Создать объект «CompareOptions»
текст: создать объект класса «CompareOptions»
- имя: Установить параметры настройки стиля
текст: используйте методы setInsertedItemStyle(), setDeletedItemStyle() или setChangedItemStyle(), чтобы указать соответствующие стили.
- имя: Использовать параметры сравнения
текст: вызов метода 'compare()' объекта сравнения передает параметры сравнения в качестве второго аргумента
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** предоставляет параметры сравнения, установленные с некоторыми значениями по умолчанию, которые обеспечивают соответствующую скорость и качество сравнения. Однако можно настроить параметры сравнения из широкого диапазона параметров и их значений для удовлетворения некоторых конкретных потребностей. Пример ниже демонстрирует, как изменить стили различных типов изменений.

Ниже приведены шаги для сравнения двух документов с пользовательскими настройками стиля изменения:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)) и укажите путь или поток целевого документа;
* Создать объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) с нужными параметрами;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) объект для метода;
    



В следующем фрагменте кода показано, как сравнивать файлы с определенными параметрами.

## Сравните файлы с локального диска с пользовательскими стилями изменений

<script src="https://gist.github.com/groupdocs-comparison-gists/e0cebcc9c017d1226d0571aca1b18c56.js"></script>

## Сравните файлы из потока с пользовательскими стилями изменения

<script src="https://gist.github.com/groupdocs-comparison-gists/c39aba0ce82cbddd74c367ff89a1e906.js"></script>

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

