---
id: показать-ревизии
url: comparison/java/show-revisions
title: "Показать версии"
weight: 12
description: "В этой статье объясняется, как настроить отображение редакций в результирующем документе в GroupDocs.Comparison для Java."
keywords: "ShowRevisions, редакция"
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
name: Как отключить показ ревизий в результирующем документе
        description: "Узнайте, как отключить отображение изменений в результирующем документе"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: Настроить объект параметров сравнения
текст: создайте объект класса «CompareOptions» и используйте его метод «setShowRevisions (false)», чтобы отключить отображение ревизий.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передав параметры сравнения в качестве второго аргумента.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** предоставляет возможность сравнивать и настраивать отображение редакций в результирующем документе.

**Редакция** - изменения, полученные при сравнении документов встроенными средствами Word.

По умолчанию отображение ревизий *включено*. Ниже приведены шаги, чтобы отключить отображение ревизий:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому файлу или поток;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и установите [ShowRevisions](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setShowRevisions(boolean)) на *false*;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

## Пример блока кода для отключения отображения ревизий

---

<script src="https://gist.github.com/groupdocs-comparison-gists/e43eb36dafa0ef2d0690fe5d2ab38460.js"></script>

## Пример результата с включенным отображением изменений

---

| Закрытое состояние | Открытое состояние |
|:------------------------------------------------ ------------------:|:------------------------------------------- --------------------------------------:|
| ![](сравнение/java/images/show-revisions-true-close-revisions.png) | ![](сравнение/java/images/show-revisions-true-open-revisions.png) |

## Пример результата с отключенным отображением изменений

---

| Отключить отображение ревизий |
|:------------------------------------------------ ----:|
| ![](сравнение/java/изображения/show-revisions-false.png) |

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
