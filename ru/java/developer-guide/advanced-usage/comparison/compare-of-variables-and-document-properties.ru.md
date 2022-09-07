---
id: сравнение переменных и свойств документа
url: comparison/java/compare-of-variables-and-document-properties
title: "Сравнение переменных и свойств документа"
weight: 11
description: "В этой статье объясняется, как активировать сравнение свойств документов в GroupDocs.Comparison для Java."
keywords: "свойства переменных, встроенные свойства, настраиваемые свойства, сравнение свойств документа, CompareVariableProperty, CompareDocumentProperty"
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
name: Как получить расширенную информацию на сводной странице
        description: "Узнайте, как получить расширенную информацию на сводной странице"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: Настроить объект параметров сравнения
текст: создайте объект класса «CompareOptions» и используйте его методы «setCompareVariableProperty (true)» и «setCompareDocumentProperty (true)», чтобы включить соответствующие настройки.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передав параметры сравнения в качестве второго аргумента.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** позволяет сравнивать различные свойства документа WORD, такие как *Переменные*, *Встроенные* и *Пользовательские* свойства.

Следующие поля класса CompareOptions используются для включения функций сравнения свойств документа:

* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)) - активировать сравнение *переменных* свойств;
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setCompareDocumentProperty(boolean)) — для активации сравнения *встроенных* и *настраиваемых* свойств.

Ниже приведены шаги для активации свойств сравнения документов:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому файлу или поток;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и установите [CompareVariableProperty](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setCompareVariableProperty(boolean)) на *true* ([CompareDocumentProperty](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions# setCompareDocumentProperty(boolean)) в *true* для *встроенных* и *настраиваемых* свойств);
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

## Пример блока кода для активации сравнения переменных, встроенных и пользовательских свойств

---

<script src="https://gist.github.com/groupdocs-comparison-gists/eb7a2b4514a63bf8846a4520787f4fc5.js"></script>

## Результат сравнения свойств

---

Результат сравнения свойств представлен на отдельной странице - *Сводная страница свойств*.

![](comparison/java/images/properties-summary-page.png)

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
