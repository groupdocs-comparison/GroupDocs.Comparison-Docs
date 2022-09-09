---
id: получить-расширенную-информацию-на-резюме-странице
url: comparison/java/get-extended-information-on-the-summary-page
title: "Получите расширенную информацию на сводной странице"
weight: 10
description: "В этой статье объясняется, как получить расширенную информацию о сравнении документов на сводной странице с помощью GroupDocs.Comparison для Java."
keywords: "Сравнение документов, сводная страница, SummaryPage, расширенная информация, ExtendedSummaryPage"
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
текст: Создайте объект класса «CompareOptions», используя его метод «setExtendedSummaryPage (true)» для настройки страницы расширенной сводки.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передав параметры сравнения в качестве второго аргумента.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** позволяет обнаруживать изменения между исходным и целевым файлами и отображать изменения на отдельной странице — [SummaryPage](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setGenerateSummaryPage (логическое значение)).
Также вы можете получить расширенную информацию о сравнении документов, которая будет отображаться на странице [SummaryPage](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setGenerateSummaryPage(boolean)) .

Ниже приведены шаги для получения расширенной информации:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и установите [ExtendedSummaryPage](https://apireference.groupdocs.com/comparison/java /com.groupdocs.comparison.options/CompareOptions#setExtendedSummaryPage(boolean)) на *true*;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison /java/com.groupdocs.comparison.options/CompareOptions) из предыдущего шага.

В следующем примере кода показано, как получить расширенную информацию о сравнении документов.

## Пример блока кода для получения расширенной информации

---

<script src="https://gist.github.com/groupdocs-comparison-gists/956c10cbdd05aad7fb86137f4f9a0c01.js"></script>

## Пример отображения итоговой страницы с расширенной информацией

---

![](/comparison/java/images/how-to-get-extended-information-image.png)

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
