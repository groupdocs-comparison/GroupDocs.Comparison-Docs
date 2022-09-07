---
id: сравнить несколько документов
url: comparison/java/compare-multiple-documents
title: "Сравните несколько документов"
weight: 3
description: ""
ключевые слова:
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
название: Как сравнивать документы
        description: "Научитесь сравнивать документы"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: Добавить первый целевой документ
текст: используйте метод «добавить», чтобы добавить первый целевой документ для сравнения с исходным
- имя: Добавить второй целевой документ
текст: используйте метод «добавить», чтобы добавить второй целевой документ для сравнения с исходным
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция доступна только для документов Word, презентаций PowerPoint, электронных и текстовых документов.{{< /alert >}}

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет сравнить более двух документов.

Ниже приведены шаги для сравнения нескольких документов.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа. Повторите этот шаг для каждого целевого документа.
* Вызов метода [compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer).

В следующем примере кода показано, как сравнить несколько документов с определенными параметрами.

## Сравните несколько документов с локального диска

<script src="https://gist.github.com/groupdocs-comparison-gists/4234d069bdad865fe0d4ba00f199bbf4.js"></script>

## Сравните несколько документов из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/6b447c4faa7b44ba103c96e8f2d8ab8d.js"></script>

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

