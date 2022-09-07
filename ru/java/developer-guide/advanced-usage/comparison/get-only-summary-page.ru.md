---
id: получить только сводную страницу
url: comparison/java/get-only-summary-page
title: "Получить только сводную страницу"
weight: 9
description: "В этой статье объясняется, как получить только сводную страницу при сравнении документов с помощью GroupDocs.Comparison для Java."
keywords: "Сравнение документов, сводная страница, SummaryPage, ShowOnlySummaryPage"
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
name: Как получить сводную страницу
        description: "Узнайте, как получить итоговую страницу после сравнения двух документов"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: настроить параметры сравнения
текст: создать объект «CompareOptions», установив его свойство «setShowOnlySummaryPage (true)»
- name: Запустить процесс сравнения
текст: вызвать метод «сравнить», передав параметры сравнения в качестве второго аргумента для запуска процесса сравнения
---

***

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** позволяет обнаруживать изменения между исходным и целевым файлами и отображать только сводную страницу.

Ниже приведены шаги, чтобы получить только сводную страницу:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и установите [setShowOnlySummaryPage(...)](https://apireference.groupdocs. com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setShowOnlySummaryPage(boolean)) на *true*;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

В следующем примере кода показано, как получить только сводную страницу.

## Пример блока кода для получения только сводной страницы

---

<script src="https://gist.github.com/groupdocs-comparison-gists/bfc0826204c5a3bafab7ab9ace333dab.js"></script>

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
