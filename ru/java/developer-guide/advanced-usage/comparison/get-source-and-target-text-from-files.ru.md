---
id: получить-исходный-и-целевой-текст-из-файлов
url: comparison/java/get-source-and-target-text-from-files
title: "Получить исходный и целевой текст из файлов"
weight: 7
description: "В этой статье объясняется, как получить исходный и целевой тексты конкретных изменений с помощью GroupDocs.Comparison для Java."
keywords: "Получить целевой текст, получить исходный текст, сравнить документы, сравнить документы, сравнить файлы"
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
name: Как получить текст исходного и целевого документов
        description: "Узнайте, как получить текст исходных и целевых документов"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и указать путь к результирующему документу.
- name: Получить список изменений
текст: используйте метод getChanges() объекта сравнения, чтобы получить список изменений
- имя: Получить текст исходного и целевого документов
текст: используйте методы getSourceText() и getTargetText() объекта сравнения для получения текста исходного и целевого документов.
---
[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) позволяет получить исходный и целевой тексты конкретных изменений в файле результатов.

Ниже приведены шаги для получения списка измененных исходных и целевых текстов:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare());
* Вызов метода [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()).

В следующем примере кода показано, как получить указанные тексты из файла.

## Получить целевой текст с локального диска

<script src="https://gist.github.com/groupdocs-comparison-gists/d37858b84f9e3606fc80d3a645b87e31.js"></script>

## Получить целевой текст из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/8e69835903ec356fa36ded4f7cb5d88b.js"></script>

## Дополнительные ресурсы

### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java мы предоставляем простые, но мощные бесплатные приложения.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
