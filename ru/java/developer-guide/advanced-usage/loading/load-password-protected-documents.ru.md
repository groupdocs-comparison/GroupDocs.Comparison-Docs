---
id: загрузить-защищенные-паролем-документы
url: comparison/java/load-password-protected-documents
title: "Загружать защищенные паролем документы"
weight: 3
description: "В этой статье объясняется, как загружать защищенные паролем документы PDF, Word, Excel, PowerPoint при использовании GroupDocs.Comparison для Java."
keywords: "Загрузить защищенный паролем документ, Загрузить защищенный документ с помощью GroupDocs.Comparison"
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
название: Как сравнить защищенные паролем документы
        description: "Узнайте, как сравнивать документы, защищенные паролем"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект «Comparer», передаваемый в качестве исходного документа аргумента конструктора, и объект «LoadOptions» с паролем
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения передачи в качестве второго аргумента объекта «LoadOptions» с паролем.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения и получить путь к результирующему документу.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет сравнивать документы, защищенные паролем.

Ниже приведены шаги для сравнения документов, защищенных паролем.

* Создайте объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) и укажите пароль исходного документа;
* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа и [LoadOptions](https://apireference.groupdocs.com/ объект сравнения/java/com.groupdocs.comparison.options.load/LoadOptions), созданный на предыдущем шаге;
* Создайте другой объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) и укажите пароль целевого документа;
* Позвоните [добавить](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)) метод и укажите путь или поток целевого документа и объект [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions), созданный на предыдущем шаге;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream))

В следующем примере кода показано, как сравнивать документы, защищенные паролем.

<script src="https://gist.github.com/groupdocs-comparison-gists/8c2a3079211b7489e37fa3e8b715d80c.js"></script>

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

