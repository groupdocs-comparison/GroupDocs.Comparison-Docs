---
id: показать-гэп-линии
url: comparison/java/show-gap-lines
title: "Показывать линии разрыва вместо изменений"
weight: 13
description: "В этой статье объясняется, как настроить отображение результирующего документа, чтобы измененное содержимое заменялось пустыми строками в GroupDocs.Comparison для Java."
keywords: "LeaveGaps, пробелы, пустые строки"
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
название: Как показать линии разрыва вместо изменений
        description: "Узнайте, как отображать линии пробелов вместо изменений"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: Настроить объект параметров сравнения
текст: создайте объект класса «CompareOptions» и используйте его методы «setShowInsertedContent (false)», «setShowDeletedContent (false)» и «setLeaveGaps (true)» для настройки соответствующих параметров.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передав параметры сравнения в качестве второго аргумента.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет настроить формирование результирующего документа.

По умолчанию изменения из двух входных файлов (*исходный* и *целевой* файлы) добавляются в результирующий документ и визуально выделяются. Это можно настроить с помощью [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) и [ShowDeletedContent](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowDeletedContent(boolean)) свойства.

Вы также можете использовать свойство [LeaveGaps](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setLeaveGaps(boolean)) для настройки отображения результирующего документа, что позволяет для замены измененного содержимого пустыми строками. Чтобы использовать это свойство, вам также необходимо активировать следующие свойства: [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) и [ShowDeletedContent ](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowDeletedContent(логическое значение)).

Вот простые шаги, чтобы получить вышеуказанный результат:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому файлу или поток;
* Создание экземпляров [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) наборов объектов [ShowInsertedContent](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison.options/CompareOptions#setShowInsertedContent(boolean)) и/или [ShowDeletedContent](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/showdeletedcontent) и обязательно свойства [LeaveGaps](https://apireference.groupdocs.com/error/404?path=comparison/net/groupdocs.comparison.options/compareoptions/properties/leavegaps);
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

## Пример блока кода для получения желаемого результата

---

<script src="https://gist.github.com/groupdocs-comparison-gists/b59e5ff289223ac376574b284165125d.js"></script>

## Пример выполнения кода

---

| Результат по умолчанию | Результат без свойства LeaveGaps |
|:------------------------------------------------ ----------------------------:|:---------------------------------- ------------------------------ :|
| ![](сравнение/java/изображения/show-gap-lines-default-result.png) | ![](сравнение/java/images/show-gap-lines-without-leavegaps.png) |

| Результат по умолчанию | Результат со свойством LeaveGaps |
|:------------------------------------------------ ----------------------------:|:---------------------------------- --------------------------- :|
| ![](сравнение/java/изображения/show-gap-lines-default-result.png) | ![](сравнение/java/images/show-gap-lines-with-leavegaps.png) |

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
You are welcome e to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
