---
id: сравнить несколько документов, защищенных паролем
url: comparison/java/compare-multiple-documents-protected-by-password
title: "Сравните несколько документов, защищенных паролем"
weight: 1
description: "В этой статье описывается, как сравнить несколько документов Word или презентаций PowerPoint, защищенных паролем, с помощью API GroupDocs.Comparison для Java."
keywords: "Сравните несколько защищенных паролем документов, сравните несколько защищенных документов"
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
название: Как сравнить несколько документов, защищенных паролем
        description: "Узнайте, как сравнить несколько документов, защищенных паролем"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передающий исходный документ, и загрузить параметры с паролем в качестве аргумента конструктора.
- имя: Добавить первый целевой документ
текст: используйте метод «добавить», чтобы добавить первый целевой документ и загрузить параметры с паролем для сравнения
- имя: Добавить второй целевой документ
текст: используйте метод «добавить», чтобы добавить второй целевой документ и загрузить параметры с паролем для сравнения
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция доступна только для документов Word, PowerPoint и презентаций Open Document.{{< /alert >}}

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет сравнить более 2 документов, защищенных паролем.

Ниже приведены шаги для сравнения документов, защищенных паролем.

* Создайте объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) и укажите пароль исходного документа;
* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа и [LoadOptions](https://apireference.groupdocs.com/ объект сравнения/java/com.groupdocs.comparison.options.load/LoadOptions), созданный на предыдущем шаге;
* Создайте еще один объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) и укажите пароль целевого документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа и [LoadOptions]( https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions), созданный на предыдущем шаге. Повторите этот шаг для каждого целевого документа, защищенного паролем;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String))
        



В следующем примере кода показано, как сравнивать документы, защищенные паролем.

## Сравните несколько защищенных документов с локального диска

<script src="https://gist.github.com/groupdocs-comparison-gists/9978b3445782673d7c20705c50936bd4.js"></script>

## Сравните несколько защищенных документов из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/4409fcbfc437b1e1c82fcd0db650cc39.js"></script>

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

