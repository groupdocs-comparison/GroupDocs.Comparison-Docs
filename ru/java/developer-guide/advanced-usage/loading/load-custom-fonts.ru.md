---
id: загрузить пользовательские шрифты
url: comparison/java/load-custom-fonts
title: "Загрузить пользовательские шрифты"
weight: 4
description: "В этой статье объясняется, как загружать пользовательские шрифты документов PDF, Word, Excel, PowerPoint при использовании GroupDocs.Comparison для Java."
keywords: "Пользовательские шрифты, шрифты"
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
название: Как загрузить пользовательские шрифты
        description: "Узнайте, как загружать пользовательские шрифты"
шаги:
- имя: Создать объект «LoadOptions»
текст: создать объект класса «LoadOptions»
- имя: Добавить пути к шрифтам
text: добавить пути к шрифтам в список, доступный с помощью метода getFontDirectories().
- name: Создать объект класса «Comparer»
текст: создать объект «Comparer», передающий исходный документ, и загрузить параметры с путями шрифтов в качестве аргументов конструктора.
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) позволяет сравнивать документы, содержимое которых имеет нестандартные шрифты.

Ниже приведены шаги для подключения пользовательских шрифтов и сравнения документов:

* Создать объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) и предоставить список каталогов для пользовательских шрифтов;
* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа и [LoadOptions](https://apireference.groupdocs.com/ объект сравнения/java/com.groupdocs.comparison.options.load/LoadOptions), созданный на предыдущем шаге;
* Позвоните [добавить](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)) метод и укажите путь или поток целевого документа;
* Вызов метода [comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))

В следующем примере кода показано, как подключить пользовательские шрифты и сравнить документы.

<script src="https://gist.github.com/groupdocs-comparison-gists/426fbb1a2e2ad8130ec02e21d04ef718.js"></script>

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

