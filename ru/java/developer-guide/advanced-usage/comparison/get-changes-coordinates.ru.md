---
id: получить-изменения-координаты
url: comparison/java/get-changes-coordinates
title: "Получить координаты изменений"
weight: 5
description: "В этой статье объясняется, как получить координаты обнаруженных изменений при предварительном просмотре страниц документа при сравнении документов с помощью GroupDocs.Comparison for Java."
keywords: "Сравните документы, получите координаты изменений"
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
name: Как получить координаты изменений
        description: "Узнайте, как получить координаты изменений в документе"
шаги:
- имя: Создать объект «CompareOptions»
текст: создать объект класса «CompareOptions»
- имя: Настройка параметров
текст: используйте методы setCalculateCoordinates (true) объекта параметров, чтобы компаратор подготовил координаты
- имя: Использовать параметры сравнения
текст: вызов метода 'compare()' объекта сравнения передает параметры сравнения в качестве второго аргумента
- name: Получить список изменений с координатами
текст: вызовите метод getChanges() объекта компаратора, чтобы получить список изменений с его координатами внутри
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет обнаруживать различия между исходным и целевым документами и получать координаты изменений на изображениях предварительного просмотра документа. Эти координаты могут быть очень полезны для выделения обнаруженных изменений на изображениях предварительного просмотра документа с некоторой графикой (например, поместите красный прямоугольник вокруг каждого обнаруженного изменения).

Ниже приведены шаги для получения координат изменений.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому файлу или поток.
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и установите [CalculateCoordinates](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setCalculateCoordinates(boolean)) установите значение *true*;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) и передайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.
* Вызов метода [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges())
    



В следующем примере кода показано, как получить координаты изменений.

## Пример расчета координат

<script src="https://gist.github.com/groupdocs-comparison-gists/fd4a88331289a9d88fad5e1f0bb0c5e2.js"></script>

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

