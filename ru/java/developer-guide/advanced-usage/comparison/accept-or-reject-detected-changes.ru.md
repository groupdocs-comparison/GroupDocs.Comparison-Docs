---
id: принять или отклонить обнаруженные изменения
url: comparison/java/accept-or-reject-detected-changes
title: "Принять или отклонить обнаруженные изменения"
weight: 1
description: "Следуя этому руководству, вы узнаете, как применять или отменять изменения, обнаруженные в процессе сравнения документов, с помощью GroupDocs.Comparison for Java API."
keywords: "Применить изменения к сравниваемому документу, отклонить изменения сравнения, изменения сравнения документов"
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
name: Как принять или отклонить изменения
        description: "Узнайте, как принять или отклонить изменения, обнаруженные путем сравнения"
шаги:
- название: Сравнить документы
текст: Сравните исходный и целевой документы, как обычно
- имя: Получить обнаруженные изменения
текст: используйте метод getChanges() объекта Comparer для доступа ко всем обнаруженным изменениям
- имя: принять или отклонить каждое изменение
текст: используйте метод setComparisonAction(ComparisonAction.REJECT) для принятия или отклонения каждого изменения.
- имя: Применить изменения
текст: используйте метод 'applyChanges()' объекта сравнения, чтобы применить изменения
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** предоставляет возможность применять или отменять определенные изменения между исходным и целевым файлами и сохранять результирующий документ с выбранными изменениями (или без них).

Ниже приведены шаги для применения/отклонения изменений в результирующем файле.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому документу или потоку;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String));
* Вызвать метод [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) и получить список обнаруженных изменений;
* Установите [ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) объекта необходимых изменений на [ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) или [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) ценность;
* Вызов метода [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.io.OutputStream,%20com.groupdocs.comparison.options.ApplyChangeOptions)) и передать в него сбор изменений;

Класс [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions):

* [getChanges()](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions#getChanges()) — Массив изменений, которые должны применяться (или не применяться) к результирующему документ;
* [setSaveOriginalState](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions#setSaveOriginalState()) — сохранить исходное состояние сравниваемого результата после применения изменений.

В следующем примере кода показано, как принять или отклонить обнаруженные изменения.

## Принять или отклонить изменения для документов, хранящихся на локальном диске

<script src="https://gist.github.com/groupdocs-comparison-gists/c3d730c6ae104b20c9a71743bd648776.js"></script>

## Принять или отклонить изменения для документов, предоставленных в виде потока

<script src="https://gist.github.com/groupdocs-comparison-gists/2b802b7d8e6d4ebe9d12ff4d7390dbf2.js"></script>

## В следующем примере кода показано, как принять/отклонить обнаруженные изменения с помощью параметра SaveOriginalState.

<script src="https://gist.github.com/groupdocs-comparison-gists/9b7f737eba537c3e9916568dce25441c.js"></script>

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
