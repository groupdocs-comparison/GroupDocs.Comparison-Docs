---
id: загрузить файл из потока
url: comparison/java/load-file-from-stream
title: "Загрузить файл из потока"
weight: 2
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
название: Как загрузить файл из входного потока
        description: "Узнайте, как загрузить файл из входного потока"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект «Comparer», передавая исходный входной поток в качестве аргумента конструктора.
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
В случае, когда у вас есть файл в виде потока. Чтобы избежать накладных расходов, связанных с сохранением потока в виде файла на диске, **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** предоставляет способ работы непосредственно с файловыми потоками.

Ниже приведены шаги, которые необходимо выполнить:

* Получить файловый поток;
* Передать поток открытого исходного кода в конструктор класса [Comprer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) или передать поток открытого целевого файла в [add](https://apireference .groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream)) метод.
    



Следующий фрагмент кода описывает, как загрузить файл из потока.

<script src="https://gist.github.com/groupdocs-comparison-gists/f9d153b18ca0705c14f71f817325508d.js"></script>

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

