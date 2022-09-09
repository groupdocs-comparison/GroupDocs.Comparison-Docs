---
id: как сравнить презентации PowerPoint
url: comparison/java/how-to-compare-powerpoint-presentations
title: "Как сравнить презентации PowerPoint"
weight: 4
description: "В статье описан возможный пример использования GroupDocs.Comparison for Java в вашей рабочей практике и возможности программного продукта для поиска различий в стилях в рамках презентаций PowerPoint."
keywords: "Сравните презентацию, сравните изменения стиля, сравните pptx, Как сравнить файлы PowerPoint"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Сравнение слайдов PowerPoint
        description: "Продукт позволяет сравнивать слайды PowerPoint"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнить слайды PowerPoint
        description: "Узнайте, как сравнивать слайды PowerPoint в проекте Java или Kotlin."
шаги:
- имя: Загрузить источник PowerPoint
текст: создать экземпляр класса Comparer, передав исходный файл PowerPoint в качестве параметра конструктора.
- имя: Загрузить целевые PowerPoints
текст: добавьте одну или несколько целевых презентаций PowerPoint, чтобы сравнить их с исходной.
- имя: Сравните исходный и целевой PowerPoints
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---
Вам может понадобиться сравнить две версии презентации PowerPoint, чтобы увидеть различия между ними (например, если коллега отредактировал ее напрямую, не заметив изменений). И самый быстрый способ сделать это — использовать встроенную в PowerPoint функцию сравнения. Чтобы использовать это:

* Откройте исходную версию презентации
* Перейдите в **Обзор** > **Сравнить**
* Нажмите **Сравнить**, чтобы открыть окно браузера.
* Выберите отредактированную версию презентации и нажмите **Объединить**

Затем вы войдете в режим просмотра. Откроется панель просмотра, которая показывает список всех правок в презентации в правой части экрана.

![](/comparison/java/images/how-to-compare-powerpoint-presentations.png)

## Как сравнить две презентации с помощью GroupDocs.Comparison

Такого функционала, который предоставляют сторонние программы, явно недостаточно. **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** предоставляет множество функций для сравнения широкого спектра [поддерживаемых форматов файлов]({{< ref "comparison/java/getting-started/ support-document-formats.md" >}}), включая формат презентации PowerPoint. Приведем пример, вы сделали презентацию в разное время, но элементы на слайдах расположены не так, как у вас изначально. Чтобы найти различия в слайдах, вы можете сравнить два файла в формате PPTX, используя функцию **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** вместе со встроенным опция, которая помогает найти изменения в стилях.

| Оригинальная презентация | Измененная презентация |
|------------------------------------------------- --------------------------|--------- -------------------------------------------------- ---|
| ![](/comparison/java/images/how-to-compare-powerpoint-presentations_1.png) | ![](/comparison/java/images/how-to-compare-powerpoint-presentations_2.png) |

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) предоставляет возможность сравнить два файла в формате PPTX (или любых других [поддерживаемых форматах файлов]({{< ref "comparison /java/getting-started/supported-document-formats.md" >}}))

Ниже приведены шаги для сравнения двух файлов PPTX.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Создать объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) с нужными параметрами;
* Метод вызова [сравнения](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.CompareOptions)) и передать объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) в метод;

В следующих примерах кода показано, как сравнить два файла PPTX.

<script src="https://gist.github.com/groupdocs-comparison-gists/b4e2d61b246bba68f353feeff2cce6bd.js"></script>

В результате получаем PPTX-файл, в котором удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font> .

| Слайд результатов |
|------------------------------------------------- --------------------------|
| ![](/comparison/java/images/how-to-compare-powerpoint-presentations_3.png) |

Для сравнения комментариев в документе презентации необходимо установить для свойства DetalisationLevel значение High:

<script src="https://gist.github.com/groupdocs-comparison-gists/847f4abe4420c4f476f6432ae3b67db1.js"></script>

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

